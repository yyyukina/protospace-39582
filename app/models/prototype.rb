class Prototype < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :image_presence
    
    validates :title, presence: true
    validates :catch_copy, presence: true
    validates :concept, presence: true

    def image_presence
        unless image.attached?
    end


end
