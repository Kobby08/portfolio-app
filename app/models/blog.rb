class Blog < ApplicationRecord
  extend FriendlyId

  enum status: { draft: 0, published: 1 }
  friendly_id :title, use: :slugged

  # associations
  belongs_to :topic

  # validations
  validates_presence_of :title, :body
end
