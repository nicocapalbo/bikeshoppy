class Option < ApplicationRecord
  belongs_to :component
  has_many :customizations
end
