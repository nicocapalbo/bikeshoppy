class Component < ApplicationRecord
  belongs_to :bike
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
