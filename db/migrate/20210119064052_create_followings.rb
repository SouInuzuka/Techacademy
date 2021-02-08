class CreateFollowings < ActiveRecord::Migration[6.1]
  def change
    create_table :followings do |t|
      t.integer :id
      t.text :email
      t.integer :encrypted_password

      t.timestamps
    end
  end
end
