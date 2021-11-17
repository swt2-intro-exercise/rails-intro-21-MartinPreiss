class Paper < ApplicationRecord
    validates :title, :venue, presence: true
    validates :year, presence: true, numericality: { only_integer: true }
    has_and_belongs_to_many :authors
    scope :year, -> (year) {where("year = ?", year)}
end
