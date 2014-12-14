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

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
