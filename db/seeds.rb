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
	thumbnail_url: 'http://www.chinadaily.com.cn/m/fujian/images/attachement/jpg/site1/20141013/286ed488c7ec15a5bff023.jpg',
	lat: 24.468177,
	lng: 118.115499)
event2 = FactoryGirl.create(:event,
	title: 'hotel',
	content: 'this will be where we will be staying',
	schedule: '2017-01-11 17:00 GMT +8',
	thumbnail_url: 'http://nihao.nehow.com/hotelimages/680/52949437_b.jpg',
	lat: 24.450870,
	lng: 118.082650)
event3 = FactoryGirl.create(:event,
	title: 'island',
	content: 'the famous island every one is going to',
	schedule: '2017-01-12 08:00 GMT +8',
	thumbnail_url: 'http://www.thaibizchina.com/upload/iblock/827/271256.jpg',
	lat: 24.450900,
	lng: 118.083650)
event4 = FactoryGirl.create(:event,
	title: 'onlong cafe',
	content: 'cafe famous for it river view and onlong tea',
	schedule: '2017-01-12 12:00 GMT +8',
	thumbnail_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSs4jARymRqOKecGQz4RKr-aKJXmfQKGjDdoaos1brd0wRQbVL5vQ',
	lat: 24.450920,
	lng: 118.082700)
event5 = FactoryGirl.create(:event,
	title: 'boat trip',
	content: 'boat trip pier for getting the boat trip around xiamen',
	schedule: '2017-01-12 15:00 GMT +8',
	thumbnail_url: 'http://www.appletravel.cn/files/002(28).jpg',
	lat: 24.451000,
	lng: 118.082650)
itinerary1 = FactoryGirl.create(:itinerary, 
	title: 'Xiamen Trip 2017',
	content: 'Home visit with mum and dad',
	events_id: [event1.id, event2.id, event3.id, event4.id, event5.id])
ownership1 = FactoryGirl.create(:ownership,
	user_id: user1.id,
	itinerary_id: itinerary1.id,
	role: 'owner')
