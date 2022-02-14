class Portfolio < ApplicationRecord
  # validations
  validates_presence_of :title, :body, :main_image, :thumb_image

  # scopes
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
