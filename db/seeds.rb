# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
oauth_application = FactoryGirl.create(:oauth_application)
user1 = FactoryGirl.create(:user, first_name: "Luke", last_name: "Skywalker", password: "123456", email: "luke@example.com")
user_access_token = FactoryGirl.create(:oauth_access_token, application: oauth_application, resource_owner_id: user1.id, scopes: oauth_application.scopes)
event1 = FactoryGirl.create(:event,
	title: 'train station',
	content: 'this will be arriving there',
	schedule: '2017-01-11 16:00 GMT +8',
	lat: 24.468177,
	lng: 118.115499)
event2 = FactoryGirl.create(:event,
	title: 'hotel',
	content: 'this will be where we will be staying',
	schedule: '2017-01-11 17:00 GMT +8',
	lat: 24.450870,
	lng: 118.082650)
itinerary1 = FactoryGirl.create(:itinerary, 
	title: 'Xiamen Trip 2017',
	content: 'Home visit with mum and dad',
	events_id: [event1.id, event2.id])
ownership1 = FactoryGirl.create(:ownership,
	user_id: user1.id,
	itinerary_id: itinerary1.id,
	role: 'owner')
