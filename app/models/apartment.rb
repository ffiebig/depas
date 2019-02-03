class Apartment < ApplicationRecord
  after_save :calculate_total_price

  def calculate_total_price
    update_columns(total_price: price + common_expenses)
  end
end
