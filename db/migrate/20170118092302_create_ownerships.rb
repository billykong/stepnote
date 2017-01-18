class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
    	t.references :user, null:false, foreign_key: true
    	t.references :itinerary, null:false, foreign_key: true
      t.string :role, null: false, default: 'owner'

      t.timestamps
    end
  end
end
