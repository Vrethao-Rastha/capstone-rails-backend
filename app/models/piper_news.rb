class PiperNews < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true
  validates :picture, presence: true
end
