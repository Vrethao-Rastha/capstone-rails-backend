class PiperNews < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :picture, presence: true
end
