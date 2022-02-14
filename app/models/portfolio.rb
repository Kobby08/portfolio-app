class Portfolio < ApplicationRecord
  # validations
  validates_presence_of :title, :body, :main_image, :thumb_image
end
