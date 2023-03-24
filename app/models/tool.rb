class Tool < ApplicationRecord
    belongs_to :user
    has_one :loan
    has_one_attached :pic
    validates :title, presence: true
    validates :description, presence: true
    validates :pic, presence: true 
    validates :location, presence: true
    validates :condition, presence: true
    validates :caution, presence: true

    geocoded_by :full_address
    after_validation :geocode 

    def full_address
        "#{location}"
    end

end
