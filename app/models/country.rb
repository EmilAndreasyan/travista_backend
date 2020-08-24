class Country < ApplicationRecord
    belongs_to :user
    has_many :cities
    validates_presence_of :name, :capital, uniqueness: true
end
