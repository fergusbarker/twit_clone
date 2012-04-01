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

  it "should require an email" do
    no_email = User.new(@attr.merge(:email => ""))
    no_email.should_not be_valid
  end

  it "should reject overly long names" do
    long_name = "a" * 51
    too_long_user = User.new(@attr.merge(:name => long_name))
    too_long_user.should_not be_valid
  end

  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org example.user@foo.biz]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end



end
