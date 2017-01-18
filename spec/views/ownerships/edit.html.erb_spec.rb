require 'rails_helper'

RSpec.describe "ownerships/edit", type: :view do
  before(:each) do
    @ownership = assign(:ownership, Ownership.create!(
      :role => "MyString"
    ))
  end

  it "renders the edit ownership form" do
    render

    assert_select "form[action=?][method=?]", ownership_path(@ownership), "post" do

      assert_select "input#ownership_role[name=?]", "ownership[role]"
    end
  end
end
