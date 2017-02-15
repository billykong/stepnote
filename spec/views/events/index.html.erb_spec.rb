require 'rails_helper'

RSpec.describe "events/index", type: :view do
  let(:itinerary) { create(:itinerary) }

  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :content => "MyText",
        :entity => "",
        :lat => "9.99",
        :lng => "8.88",
        :itinerary => itinerary
      ),
      Event.create!(
        :title => "Title",
        :content => "MyText",
        :entity => "",
        :lat => "9.99",
        :lng => "8.88",
        :itinerary => itinerary
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "8.88".to_s, :count => 2
  end
end
