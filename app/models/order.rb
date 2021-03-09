class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :customizations
  accepts_nested_attributes_for :customizations, reject_if: :all_blank, allow_destroy: true
end
