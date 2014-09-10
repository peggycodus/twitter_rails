require 'rails_helper'

RSpec.describe User, :type => :model do
 
  it "fails because no password" do
    User.new({:name => "pc", :email => peg@red.com}).save.should be_false
  end
 
  it "fails because password is too short" do
    User.new({:name => "pc", :email => peg@red.com, 
      :password => '123'}).save.should be_false
  end
 
  it "succeeds because password is long enough" do
    User.new({:name => "pc", :email => peg@red.com,
      :password => '123123'}).save.should be_true
  end

  it "fails because password confirmation doesnt match" do
  User.new({:username => "pc",
    :password => '123123',
    :password_confirmation => 'aa'}).save.should be_false
end
 
it "succeeds because password & confirmation match" do
  User.new({:username => "pc",
    :password => '123123',
    :password_confirmation => '123123'}).save.should be_true
end
end
