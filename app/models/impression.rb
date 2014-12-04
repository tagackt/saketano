class Impression < ActiveRecord::Base
  belongs_to :liquor
  belongs_to :user

  scope :with_liquor, -> do
    includes(:liquor)
  end
  scope :with_user, -> do
    includes(:user)
  end

  mount_uploader :image, ImageUploader
end
