class Liftdatum < ApplicationRecord
  validates :exercise, presence: true
  validates :weight, presence: true
  validates :set, presence: true
  validates :rep, presence: true
  validates :user, presence: true
  belongs_to :user
  delegate :firstname, :lastname, to: :user, prefix: true #-> @liftdatum.user_firstname
end
