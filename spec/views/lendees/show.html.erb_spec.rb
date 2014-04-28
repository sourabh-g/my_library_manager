require 'spec_helper'

describe "lendees/show" do
  before(:each) do
    @lendee = assign(:lendee, stub_model(Lendee,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
