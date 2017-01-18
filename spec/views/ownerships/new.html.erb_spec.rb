require 'rails_helper'

RSpec.describe "ownerships/new", type: :view do
  before(:each) do
    assign(:ownership, Ownership.new(
      :role => "MyString"
    ))
  end

  it "renders new ownership form" do
    render

    assert_select "form[action=?][method=?]", ownerships_path, "post" do

      assert_select "input#ownership_role[name=?]", "ownership[role]"
    end
  end
end
