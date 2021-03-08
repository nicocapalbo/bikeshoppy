class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :customizations
end
