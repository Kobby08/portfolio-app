class Blog < ApplicationRecord
  extend FriendlyId

  enum status: { draft: 0, published: 1 }
  friendly_id :title, use: :slugged

  # validations
  validates_presence_of :title, :body
end
