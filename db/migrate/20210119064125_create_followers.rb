class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.integer :id
      t.text :email
      t.integer :encrypted_password

      t.timestamps
    end
  end
end
