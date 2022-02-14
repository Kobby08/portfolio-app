class Topic < ApplicationRecord
  # associations
  has_many :blogs

  # validations
  validates_presence_of :title
end
