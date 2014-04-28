require 'spec_helper'

describe "lendees/index" do
  before(:each) do
    assign(:lendees, [
      stub_model(Lendee,
        :name => "Name"
      ),
      stub_model(Lendee,
        :name => "Name"
      )
    ])
  end

  it "renders a list of lendees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
