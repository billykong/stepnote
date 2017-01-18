require 'rails_helper'

RSpec.describe "itineraries/edit", type: :view do
  before(:each) do
    @itinerary = assign(:itinerary, Itinerary.create!(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit itinerary form" do
    render

    assert_select "form[action=?][method=?]", itinerary_path(@itinerary), "post" do

      assert_select "input#itinerary_title[name=?]", "itinerary[title]"

      assert_select "textarea#itinerary_content[name=?]", "itinerary[content]"
    end
  end
end
