class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :weight, presence: true
  validates :height, presence: true
  
  has_many :liftdatum

  def self.from_omniauth(hash)
  	user = User.find_or_create_by(uid: hash['uid'], provider: hash['provider'])
  	user.nickname = hash['info']['nickname']
  	user.location = hash['info']['location']
  	user.image_url = hash['info']['image']
    user.url = hash['info']['urls']['Twitter']
    user.firstname = "Change me"
    user.lastname = "Change me"
    user.weight = "100"
    user.height = "100"
    user.age = "21"
    user.date = Date.today
  	user.save(:validate => false)
  	user
  end
end
