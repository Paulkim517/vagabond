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

  # attr_accessible :avatar
  has_attached_file :avatar,
                     :styles => { :medium => "150x150>", :thumb => "44x44#" },
                     :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                        :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] },
                        :size => { :in => 0..1000.kilobytes }

end