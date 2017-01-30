class AddThumbnailToEvent < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :thumbnail_url, :string, limit: 1024
  end
end
