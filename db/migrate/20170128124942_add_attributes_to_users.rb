class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :locale, :string, default: 'en'
    add_column :users, :time_zone, :string
    add_column :users, :phone_number, :string
    add_column :users, :country_code, :string, limit: 2
    add_column :users, :role, :string
  end
end
