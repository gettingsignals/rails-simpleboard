class Category < ApplicationRecord
  has_many :messages, -> { order(created_at: :desc) }, dependent: :destroy
  validates :name, presence: true, length: {maximum: 100}
end
