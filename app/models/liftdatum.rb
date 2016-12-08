class Liftdatum < ApplicationRecord
  belongs_to :user
  delegate :firstname, :lastname, to: :user, prefix: true #-> @liftdatum.user_firstname
end
