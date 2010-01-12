require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  it "should be valid if email attribute is well-formatted" do
    User.new(:email => "dude.lastname@yahoo.cz").should_be_valid
    User.new(:email => "dude@gmail.com").should_be_valid
    User.new(:email => "dude@gmail.co.uk").should_be_valid
    User.new(:email => "Francois.Stephany@gmail.com").should_be_valid
    User.new(:email => "Francois.Stephay@gmail.co.uk").should_be_valid
    User.new(:email => "dude-blip@gmail.com").should_be_valid
    User.new(:email => "dude_blop@gmail.com").should_be_valid
    User.new(:email => "dude789@gmail.com").should_be_valid
  end
  
  it "should not be valid if email attribute is not well-formatted" do
    User.new(:email => "thisisnotanemail").should_not_be_valid
    User.new(:email => "@thisisnotanemail").should_not_be_valid
    User.new(:email => "thisisnotanemail@").should_not_be_valid
    User.new(:email => "thisisnotanemail@gmail").should_not_be_valid
    User.new(:email => "thisisnotanemail@hotmail@gmail.com").should_not_be_valid
    User.new(:email => "this.is.not.anemail").should_not_be_valid
  end
end

describe Bookmark do
  it "should be valid if url attribute is well-formatted" do
    Bookmark.new(:url => "http://www.google.com").should_be_valid
    Bookmark.new(:url => "http://google.com").should_be_valid
    Bookmark.new(:url => "https://www.google.com").should_be_valid
    Bookmark.new(:url => "http://www.google.com/test").should_be_valid
    Bookmark.new(:url => "http://www.google.com/test-blop").should_be_valid
    Bookmark.new(:url => "http://www.google.com/~aurels").should_be_valid
    Bookmark.new(:url => "http://localhost").should_be_valid
    Bookmark.new(:url => "http://www.google.com:890/").should_be_valid
    Bookmark.new(:url => "http://www.google.com:80").should_be_valid
    assert Bookmark.new(:url => "http://www.google.com/blop:8080").should_be_valid
  end
  
  it "should not be valid if url attribute is not well-formatted" do
    Bookmark.new(:url => "www.google.com").should_not_be_valid
    Bookmark.new(:url => "google").should_not_be_valid
    Bookmark.new(:url => "ftp://www.google.com").should_not_be_valid
    Bookmark.new(:url => "ftp://www.google.com").should_not_be_valid
    Bookmark.new(:url => "http://www.google.com:").should_not_be_valid
    assert !Bookmark.new(:url => "http://www.goo:gle.com").should_not_be_valid
  end
end