class Brewery < ActiveRecord::Base
  has_many :brands
  has_many :liquors
end
