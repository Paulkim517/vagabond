class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	validates :title, length: { minimum: 1, maximum: 200}
	validates :body, length: { minimum: 1}

end
