class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :number, :total_questions

  belongs_to :site
  has_many   :answers

  def number
    questions.pluck(:id).index(id) + 1
  end

  def total_questions
    questions.count
  end

  private

  def questions
    @questions ||= site.questions
  end
end
