class CreateStoreProfiles < ActiveRecord::Migration
  def change
    create_table :store_profiles do |t|
      t.string :street_address
      t.string :zip
      t.float :help_radius
      t.integer :user_id

      t.timestamps
    end
  end
end
