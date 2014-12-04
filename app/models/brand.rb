class Brand < ActiveRecord::Base
  belongs_to :brewery
  has_many :liquors

  scope :with_brewery, -> do
    includes(:brewery)
  end
end
