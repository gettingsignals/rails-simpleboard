class Message < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, length: {maximum: 50}
  validates :email, length: {maximum: 255}
  validates :subject, length: {maximum: 100}
  validates :text, presence: true, length: {maximum: 255}
end
