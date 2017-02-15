require 'rails_helper'

RSpec.describe "ownerships/index", type: :view do
  let(:user) { create(:user) }
  let(:itinerary1) { create(:itinerary) }
  let(:itinerary2) { create(:itinerary) }

  before(:each) do
    assign(:ownerships, [
      Ownership.create!(
        :role => "owner",
        :user_id => user.id,
        :itinerary_id => itinerary1.id
      ),
      Ownership.create!(
        :role => "owner",
        :user_id => user.id,
        :itinerary_id => itinerary2.id
      )
    ])
  end

  it "renders a list of ownerships" do
    render
    assert_select "tr>td", :text => "owner".to_s, :count => 2
  end
end
