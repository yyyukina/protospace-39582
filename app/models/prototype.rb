class Prototype < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :image
    
    validates :title, presence: true
    validates :catch_copy, presence: true
    validates :concept, presence: true

    validate :validate_image_presence

    def validate_image_presence
        unless image.attached?
         errors.add(:image)
        end
    end
end
