class Product < ActiveRecord::Base
  validates :desciption, :name, presence: :true
  validates :price_in_Cent, numericality: [only_true: true ]

  def formatted_price
    price_in_dollars = price_in_cents.to_f/100
    sprintf("%.2f",price_in_dollars)
  end
end
