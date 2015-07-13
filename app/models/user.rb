class User < ActiveRecord::Base
	before_save { self.email = email.downcase } 
	validates :name, presence: true, length: { maximum: 30}
	REG_EXP_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email,presence: true, length: { maximum: 255},
										format: { with: REG_EXP_EMAIL },
										uniqueness:{ case_sensitive: false}
	validates :password,presence: true, length: { minimum: 5 }

has_secure_password
end
