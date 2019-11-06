class Event < ApplicationRecord
   
    has_many :attendances
    has_many :customers, through: :attendance, class_name:"User"
    belongs_to :admin, class_name: "User"
    validates_with StartValidation, presence: true
    validates_with DurationValidator, presence: true 
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates_with PriceValidator, presence: true
    validates :location, presence: true
end
