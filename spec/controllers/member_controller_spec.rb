require 'spec_helper'

describe MembersController do

  # This should return the minimal set of attributes required to create a valid
  # Crop. As you add validations to Crop, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
     { :username => "user1", :email => "user1@example.com", :password => "nothingblah" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CropsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all members as @members" do
      user = User.create! valid_attributes
      get :index, {}, valid_session
      assigns(:members).should eq([user])
    end
  end

end
