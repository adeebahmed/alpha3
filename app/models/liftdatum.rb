class Liftdatum < ApplicationRecord
  belongs_to :user
  delegate :firstname, to: :user, prefix: true #-> @liftdatum.user_name
end
