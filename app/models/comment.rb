class Comment < ApplicationRecord
  belongs_to :booth
  belongs_to :user

  validates :text, presence: true
  
end
