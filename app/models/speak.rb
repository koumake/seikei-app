class Speak < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :image

  
  validates :content, presence: true
  



end
