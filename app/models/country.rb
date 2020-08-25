class Country < ApplicationRecord
    belongs_to :user
    has_many :cities
    validates_presence_of :name, :capital, uniqueness: true

    def update_city(city)
        if city.name == ''
            return "city name can't be blank"
        elsif city.name == self.city.name
            return "the city already exists"
        else
            self.save
        end
    end
end
