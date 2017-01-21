class RemoveItineraryReferenceFromEvent < ActiveRecord::Migration[5.0]
  def change
  	remove_column :events, :itinerary_id
  end
end
