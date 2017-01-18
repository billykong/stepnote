require 'rails_helper'

RSpec.describe "itineraries/show", type: :view do
  before(:each) do
    @itinerary = assign(:itinerary, Itinerary.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
