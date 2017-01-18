require 'rails_helper'

RSpec.describe "itineraries/new", type: :view do
  before(:each) do
    assign(:itinerary, Itinerary.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new itinerary form" do
    render

    assert_select "form[action=?][method=?]", itineraries_path, "post" do

      assert_select "input#itinerary_title[name=?]", "itinerary[title]"

      assert_select "textarea#itinerary_content[name=?]", "itinerary[content]"
    end
  end
end
