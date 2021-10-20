class Comment < ApplicationRecord
  belongs_to :booth
  belongs_to :user
end
