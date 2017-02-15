require 'rails_helper'

RSpec.describe "ownerships/show", type: :view do
  let(:user) { create(:user) }
  let(:itinerary) { create(:itinerary) }

  before(:each) do
    @ownership = assign(:ownership, Ownership.create!(
      :role => "owner",
      :user_id => user.id,
      :itinerary_id => itinerary.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/owner/)
  end
end
