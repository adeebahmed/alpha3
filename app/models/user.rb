class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :weight, presence: true
  validates :height, presence: true
  
  has_many :liftdatum
end
