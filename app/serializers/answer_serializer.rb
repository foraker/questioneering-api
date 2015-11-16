class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :question
  belongs_to :resolution
end
