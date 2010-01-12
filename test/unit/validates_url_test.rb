class MiscValidatorsValidatesUrlTest < ActiveSupport::TestCase
  def test_truth
    assert true
  end
  
  def test_good_url
    assert Bookmark.new(:url => "http://www.google.com").valid?
    assert Bookmark.new(:url => "http://google.com").valid?
    assert Bookmark.new(:url => "https://www.google.com").valid?
    assert Bookmark.new(:url => "http://www.google.com/test").valid?
    assert Bookmark.new(:url => "http://www.google.com/test-blop").valid?
    assert Bookmark.new(:url => "http://www.google.com/~aurels").valid?
    assert Bookmark.new(:url => "http://localhost").valid?
    assert Bookmark.new(:url => "http://www.google.com:890/").valid?
    assert Bookmark.new(:url => "http://www.google.com:80").valid?
    assert Bookmark.new(:url => "http://www.google.com/blop:8080").valid?
  end
  
  def test_wrong_url
    assert !Bookmark.new(:url => "www.google.com").valid?
    assert !Bookmark.new(:url => "google").valid?
    assert !Bookmark.new(:url => "ftp://www.google.com").valid?
    assert !Bookmark.new(:url => "ftp://www.google.com").valid?
    assert !Bookmark.new(:url => "http://www.google.com:").valid?
    assert !Bookmark.new(:url => "http://www.goo:gle.com").valid?
  end
end