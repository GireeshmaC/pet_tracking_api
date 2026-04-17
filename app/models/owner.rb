class Owner < ApplicationRecord
    has_many :pets

    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
