class User < ApplicationRecord
    has_many :tickets
    has_many :productions, through: :tickets

    validates :email, uniqueness: true, presence: true
    validates :name, uniqueness: true, presence: true
    
    validate :must_have_preferred_email

    def must_have_preferred_email
        unless email.match?(/gmail.com|aol.com|hotmail.com|yahoo.com|outlook.com|me.com/)
            errors.add(:email, "Sorry, please enter an approved email.")
        end
    end

    # https://guides.rubyonrails.org/active_record_validations.html#custom-methods

    # for folks asking about <data>.errors.full_messages here it is in the docs: https://guides.rubyonrails.org/active_record_validations.html#working-with-validation-errors

    
end
