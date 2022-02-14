class Portfolio < ApplicationRecord
  include Placeholder

  # associations
  has_many :technologies

  # validations
  validates_presence_of :title, :body, :main_image, :thumb_image

  # scopes
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  # callbacks
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '300')
    self.thumb_image ||=
      Placeholder.image_generator(height: '300', width: '200')
  end
end
