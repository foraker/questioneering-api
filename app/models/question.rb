class Question < ActiveRecord::Base
  belongs_to :site
  has_many   :answers
end
