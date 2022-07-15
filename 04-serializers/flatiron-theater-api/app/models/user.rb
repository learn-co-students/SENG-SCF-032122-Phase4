class User < ApplicationRecord
    has_many :tickets
    has_many :productions, through: :tickets

    # add custom validation :must_have_preferred_email

    # https://guides.rubyonrails.org/active_record_validations.html#custom-methods

    # for folks asking about <data>.errors.full_messages here it is in the docs: https://guides.rubyonrails.org/active_record_validations.html#working-with-validation-errors

    
end
