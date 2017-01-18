require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :title => "MyString",
      :content => "MyText",
      :entity => "",
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_content[name=?]", "event[content]"

      assert_select "input#event_entity[name=?]", "event[entity]"

      assert_select "input#event_lat[name=?]", "event[lat]"

      assert_select "input#event_lng[name=?]", "event[lng]"
    end
  end
end
