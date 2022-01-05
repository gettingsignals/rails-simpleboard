class Category < ApplicationRecord
  has_many :messages, -> { order(created_at: :desc) }, dependent: :destroy
end
