class CreateUser < ActiveRecord::Migration
  def change
  	create_table :user do |t|
  		t.string :email
  		t.string :name
  		t.string :password_digest
  		t.string :bio
  		t.string :image_url

  	end
  end
end
