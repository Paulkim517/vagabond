class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	validates :title, length: { minimum: 2, maximum: 200}
	validates :body, length: { minimum: 2}

end