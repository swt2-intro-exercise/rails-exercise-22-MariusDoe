class Paper < ApplicationRecord
    validates :title,
        presence: true,
        length: { minimum: 1 }

    validates :venue,
        presence: true

    validates :year,
        presence: true,
        numericality: true

    has_and_belongs_to_many :authors
end
