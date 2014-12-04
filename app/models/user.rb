class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :impressions
  enum sex: %i(male female other)

  def get_user_name
    name.present? ? name : "名なし#{id}"
  end
end
