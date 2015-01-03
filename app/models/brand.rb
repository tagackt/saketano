class Brand < ActiveRecord::Base
  belongs_to :brewery
  has_many :liquors

end
