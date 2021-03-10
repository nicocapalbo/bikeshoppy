class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :customizations
  accepts_nested_attributes_for :customizations, reject_if: :all_blank, allow_destroy: true

  def order_total
    total = 0
    self.customizations.each do |customization|
      total += customization.option.price
    end
    return total
  end
end
