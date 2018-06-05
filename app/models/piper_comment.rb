class PiperComment < ApplicationRecord
  validates :name, presence: true
  validates :comment, presence: true
  validates :avatar, presence: true
end
