class User < ApplicationRecord
  before_save { self.email = email.downcase }
  
  varidates :name, presence: true, length: { maxmum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
                    
end
