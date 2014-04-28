require 'spec_helper'

describe "lendees/edit" do
  before(:each) do
    @lendee = assign(:lendee, stub_model(Lendee,
      :name => "MyString"
    ))
  end

  it "renders the edit lendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lendee_path(@lendee), "post" do
      assert_select "input#lendee_name[name=?]", "lendee[name]"
    end
  end
end
