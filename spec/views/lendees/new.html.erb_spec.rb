require 'spec_helper'

describe "lendees/new" do
  before(:each) do
    assign(:lendee, stub_model(Lendee,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new lendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lendees_path, "post" do
      assert_select "input#lendee_name[name=?]", "lendee[name]"
    end
  end
end
