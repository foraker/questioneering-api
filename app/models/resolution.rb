class Resolution < ActiveRecord::Base
  belongs_to :site

  validates :key, presence: true, uniqueness: true
end
