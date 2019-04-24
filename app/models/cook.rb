class Cook < ApplicationRecord
  validates :city, :cuisine, :name, presence: true
end