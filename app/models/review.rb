class Review < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many_attached :images
  validate :images_presence

  with_options presence: true do
    validates :title
    validates :treatment_site
    validates :date
    validates :clinic
    validates :docter
    validates :price
    validates :content
  end

  def images_presence
    self.images.attached?
  end
end
