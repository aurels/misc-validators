class MiscValidatorsValidatesEmailTest < ActiveSupport::TestCase
  def test_truth
    assert true
  end
  
  def test_good_email
    assert User.new(:email => "dude.lastname@yahoo.cz").valid?
    assert User.new(:email => "dude@gmail.com").valid?
  end
  
  def test_wrong_email
    assert !User.new(:email => "thisisnotanemail").valid?
  end
end