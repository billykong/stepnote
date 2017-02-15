require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  let(:itinerary) { create(:itinerary) }

  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :content => "MyText",
      :lat => "9.99",
      :lng => "9.99",
      :itinerary => itinerary
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_content[name=?]", "event[content]"

      assert_select "input#event_lat[name=?]", "event[lat]"

      assert_select "input#event_lng[name=?]", "event[lng]"
    end
  end
end
