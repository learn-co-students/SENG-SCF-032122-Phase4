class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :production
  #Review: Validations on price/numericality, greater >= 0
  
end
