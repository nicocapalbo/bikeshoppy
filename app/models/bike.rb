class Bike < ApplicationRecord
  has_many :orders
  has_many :components, dependent: :destroy
  accepts_nested_attributes_for :components, reject_if: :all_blank, allow_destroy: true
end
