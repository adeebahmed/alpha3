class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :weight, presence: true
  validates :height, presence: true
end
