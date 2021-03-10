class Option < ApplicationRecord
  belongs_to :component
  has_many :customizations
  has_one_attached :image
end
