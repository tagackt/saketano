class Liquor < ActiveRecord::Base
  belongs_to :brewery
  belongs_to :brand
  belongs_to :category
  has_many :impressions

  scope :with_category, -> do
    includes(:category)
  end
end
