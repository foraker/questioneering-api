class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :site
  has_many   :answers
end
