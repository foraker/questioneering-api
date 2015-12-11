class SiteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :keywords, :description

  has_many :questions
  has_many :resolutions
end
