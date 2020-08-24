class Country < ApplicationRecord
    belongs_to :user
    has_many :cities
end
