require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:name => "Example User", :email => "user@example.com" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_user_name = User.new(@attr.merge(:name => ""))
    no_user_name.should_not be_valid
  end

end
