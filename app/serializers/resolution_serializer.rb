class ResolutionSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :site
end
