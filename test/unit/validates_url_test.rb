class MiscValidatorsValidatesUrlTest < ActiveSupport::TestCase
  def test_truth
    assert true
  end
  
  def test_good_url
    assert Bookmark.new(:url => "http://www.google.com").valid?
    assert Bookmark.new(:url => "http://google.com").valid?
    assert Bookmark.new(:url => "https://www.google.com").valid?
    assert Bookmark.new(:url => "http://www.google.com/test").valid?
  end
  
  def test_wrong_url
    assert !Bookmark.new(:url => "www.google.com").valid?
    assert !Bookmark.new(:url => "google").valid?
    assert !Bookmark.new(:url => "ftp://www.google.com").valid?
  end
end