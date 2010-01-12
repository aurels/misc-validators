require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  it "should be valid if email attribute is well-formatted" do
    User.new(:email => "dude.lastname@yahoo.cz").should be_valid
    User.new(:email => "dude@gmail.com").should be_valid
    User.new(:email => "dude@gmail.co.uk").should be_valid
    User.new(:email => "Francois.Stephany@gmail.com").should be_valid
    User.new(:email => "Francois.Stephay@gmail.co.uk").should be_valid
    User.new(:email => "dude-blip@gmail.com").should be_valid
    User.new(:email => "dude_blop@gmail.com").should be_valid
    User.new(:email => "dude789@gmail.com").should be_valid
  end
  
  it "should not be valid if email attribute is not well-formatted" do
    User.new(:email => "thisisnotanemail").should_not be_valid
    User.new(:email => "@thisisnotanemail").should_not be_valid
    User.new(:email => "thisisnotanemail@").should_not be_valid
    User.new(:email => "thisisnotanemail@gmail").should_not be_valid
    User.new(:email => "thisisnotanemail@hotmail@gmail.com").should_not be_valid
    User.new(:email => "this.is.not.anemail").should_not be_valid
  end
end

describe Bookmark do
  it "should be valid if url attribute is well-formatted" do
    Bookmark.new(:url => "http://www.google.com").should be_valid
    Bookmark.new(:url => "http://google.com").should be_valid
    Bookmark.new(:url => "https://www.google.com").should be_valid
    Bookmark.new(:url => "http://www.google.com/test").should be_valid
    Bookmark.new(:url => "http://www.google.com/test-blop").should be_valid
    Bookmark.new(:url => "http://www.google.com/~aurels").should be_valid
    Bookmark.new(:url => "http://localhost").should be_valid
    Bookmark.new(:url => "http://www.google.com:890/").should be_valid
    Bookmark.new(:url => "http://www.google.com:80").should be_valid
    Bookmark.new(:url => "http://www.google.com/blop:8080").should be_valid
  end
  
  it "should not be valid if url attribute is not well-formatted" do
    Bookmark.new(:url => "www.google.com").should_not be_valid
    Bookmark.new(:url => "google").should_not be_valid
    Bookmark.new(:url => "ftp://www.google.com").should_not be_valid
    Bookmark.new(:url => "ftp://www.google.com").should_not be_valid
    Bookmark.new(:url => "http://www.google.com:").should_not be_valid
    Bookmark.new(:url => "http://www.goo:gle.com").should_not be_valid
  end
end