require 'rails_helper'

RSpec.describe "ownerships/show", type: :view do
  before(:each) do
    @ownership = assign(:ownership, Ownership.create!(
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Role/)
  end
end
