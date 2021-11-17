class Booth < ApplicationRecord

  with_options presence: true do
    validates :image, :prize_name, :machine_name, :category, :price
  end
  
  belongs_to :user
  has_one_attached :image
  has_many :comments
end
