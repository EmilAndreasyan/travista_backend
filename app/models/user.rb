class User < ApplicationRecord
    has_secure_password
    has_many :countries
    has_many :cities, through: :countries
end
