class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :address, :phone_number, presence: true
end
