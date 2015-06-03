class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users  do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :street_address
      t.string :zip
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.integer :role, default: 0
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
