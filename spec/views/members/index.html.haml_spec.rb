require 'spec_helper'

describe "members/index" do
  before(:each) do
    assign(:members, [
      stub_model(User,
	:username => "user1", 
	:email => "user1@example.com",
	:password => "password",
        :slug => "user1"
      ),
      stub_model(User,
	:username => "user2", 
	:email => "user2@example.com",
	:password => "password",
        :slug => "user2"
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "a", :text => "user1"
    assert_select "a", :text => "user2"
  end
end
