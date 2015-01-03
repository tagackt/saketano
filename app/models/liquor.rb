class Liquor < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_many :impressions

  def brewery
    self.brand.brewery
  end
end
