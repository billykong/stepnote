require 'rails_helper'

RSpec.describe "events/show", type: :view do
  let(:itinerary) { create(:itinerary) }

  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "Title",
      :content => "MyText",
      :entity => "",
      :lat => "9.99",
      :lng => "9.99",
      :itinerary => itinerary
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
