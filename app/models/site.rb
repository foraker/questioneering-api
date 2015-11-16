class Site < ActiveRecord::Base
  has_many :questions
  has_many :resolutions
end
