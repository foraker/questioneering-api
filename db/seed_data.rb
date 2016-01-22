require_relative '../app/models/answer'
require_relative '../app/models/question'
require_relative '../app/models/resolution'
require_relative '../app/models/site'

class SeedData
  def initialize(data)
    self.data = data
  end

  def load!
    data['sites'].each { |site_data| Site.new(site_data).load! }
  end

  private

  attr_accessor :data

  Site = Struct.new(:data) do
    def load!
      @site = create_site
      load_resolutions
      load_questions
    end

    private

    def create_site
      ::Site.create!(
        title:       data['title'],
        content:     data['content'],
        keywords:    data['keywords'],
        description: data['description']
      )
    end

    def load_resolutions
      data['resolutions'].each do |resolution_data|
        Resolution.new(resolution_data, @site).load!
      end
    end

    def load_questions
      data['questions'].each do |question_data|
        Question.new(question_data, @site).load!
      end
    end
  end

  Resolution = Struct.new(:data, :site) do
    def load!
      ::Resolution.create!(
        site:    site,
        key:     data['key'],
        content: data['content']
      )
    end
  end

  Question = Struct.new(:data, :site) do
    def load!
      @question = create_question
      create_answers
    end

    def create_question
      ::Question.create!(
        site:    site,
        content: data['content']
      )
    end

    def create_answers
      data['answers'].each do |answer_data|
        Answer.new(answer_data, @question).load!
      end
    end
  end

  Answer = Struct.new(:data, :question) do
    def load!
      ::Answer.create!(
        content:    data['content'],
        resolution: resolution,
        question:   question
      )
    end

    def resolution
      ::Resolution.where(key: data['resolution']).first
    end
  end
end
