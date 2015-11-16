class SiteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  has_many :questions
  has_many :resolutions
end
