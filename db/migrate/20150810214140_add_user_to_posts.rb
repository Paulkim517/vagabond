class AddUserToPosts < ActiveRecord::Migration

  def change
  	change_table :posts do |t|

  	    t.belongs_to :user

  	  end
  end

end
