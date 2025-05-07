class List < ApplicationRecord
  validates :title, :item, presence: true
end
