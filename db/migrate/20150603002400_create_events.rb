class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :requester_id
      t.integer :responder_id
      t.text    :request_text
      t.float   :lat
      t.float   :lon
      t.boolean :active

      t.timestamps
    end
    add_index   :events, :requester_id
    add_index   :events, :responder_id
  end
end
