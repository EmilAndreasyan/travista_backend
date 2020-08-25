class User < ApplicationRecord
    has_secure_password
    has_many :countries
    has_many :cities, through: :countries
    
    validates_presence_of :email, uniqueness: true
    validates_presence_of :password, length: {in: 6..20}
end
