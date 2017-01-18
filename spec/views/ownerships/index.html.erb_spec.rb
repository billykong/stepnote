require 'rails_helper'

RSpec.describe "ownerships/index", type: :view do
  before(:each) do
    assign(:ownerships, [
      Ownership.create!(
        :role => "Role"
      ),
      Ownership.create!(
        :role => "Role"
      )
    ])
  end

  it "renders a list of ownerships" do
    render
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
