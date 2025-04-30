class List < ApplicationRecord
  validates :title, :item, presence: true
  belongs_to :get_done
end
