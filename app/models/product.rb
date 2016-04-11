class Product < ActiveRecord::Base
  validates :desciption, :name, presence :true
  validates :price_in_Cent, numericality: [only_true: true ]
end
