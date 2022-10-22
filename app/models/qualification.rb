class Qualification < ApplicationRecord
    has_many :qualificationables, dependent: :destroy
    has_many :staffs, through: :qualificationables

    validates :name, presence: true
end
