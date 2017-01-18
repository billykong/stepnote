class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.json :entity
      t.datetime :schedule
      t.decimal :lat, precision: 9, scale: 6, null: false
      t.decimal :lng, precision: 9, scale: 6, null: false
      t.references :itinerary, foreign_key: true

      t.timestamps
    end
  end
end
