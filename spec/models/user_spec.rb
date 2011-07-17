require 'spec_helper'

describe User do

  it "should require a name" do
    no_name_user = User.new  # Note: no attributes set at all, i.e. name is nil
    no_name_user.should_not be_valid
    no_name_user.errors[:name].should == ["can't be blank"]
  end

  it "should reject names that are too long" do
    long_name_user = User.new(:name => 'a' * 51)
    long_name_user.should_not be_valid
    long_name_user.errors[:name].should == ["is too long (maximum is 50 characters)"]
  end

end
