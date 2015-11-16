class ResolutionSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :site
end
