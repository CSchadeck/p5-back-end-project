class User < ApplicationRecord

    has_many :requests
    has_many :connections, through: :requests

    has_secure_password
  
    validates :username, presence: true, uniqueness: true

end
