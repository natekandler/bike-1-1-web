class CreateStoreProfiles < ActiveRecord::Migration
  def change
    create_table :store_profiles do |t|
      t.string :street_address
      t.integer :zip
      t.integer :help_radius

      t.timestamps
    end
  end
end
