class CreateUser < ActiveRecord::Migration
  def change
  	create_table :user do |t|
  		t.string :email
  		t.string :name
  		t.string :password_digest
  		t.string :bio
  		t.string :image_url

  		t.timestamps null: false

  	end
  end
end
