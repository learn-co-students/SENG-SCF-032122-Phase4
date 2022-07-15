class User < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :productions, through: :tickets

end
