class Skill < ApplicationRecord
  include Placeholder

  # validations
  validates_presence_of :title, :percent_utilized, :badge

  # callbacks
  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
