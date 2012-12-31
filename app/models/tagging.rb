class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :exercise
  # attr_accessible :title, :body
end
