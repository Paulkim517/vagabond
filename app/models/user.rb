class User < ActiveRecord::Base

	has_secure_password
	has_many :posts, dependent: :destroy

	validates :password, length: { minimum: 6 }, on: :create

  	validates :email,
    presence: true,
    uniqueness: true,
    format: {
      with: /@/,
      message: "not a valid format"
    }

end
