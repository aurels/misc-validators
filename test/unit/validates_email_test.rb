class MiscValidatorsValidatesEmailTest < ActiveSupport::TestCase
  def test_truth
    assert true
  end
  
  def test_good_email
    assert User.new(:email => "dude.lastname@yahoo.cz").valid?
    assert User.new(:email => "dude@gmail.com").valid?
    assert User.new(:email => "dude@gmail.co.uk").valid?
    assert User.new(:email => "Francois.Stephany@gmail.com").valid?
    assert User.new(:email => "Francois.Stephay@gmail.co.uk").valid?
    assert User.new(:email => "dude-blip@gmail.com").valid?
    assert User.new(:email => "dude_blop@gmail.com").valid?
    assert User.new(:email => "dude789@gmail.com").valid?
  end
  
  def test_wrong_email
    assert !User.new(:email => "thisisnotanemail").valid?
    assert !User.new(:email => "@thisisnotanemail").valid?
    assert !User.new(:email => "thisisnotanemail@").valid?
    assert !User.new(:email => "thisisnotanemail@gmail").valid?
    assert !User.new(:email => "thisisnotanemail@hotmail@gmail.com").valid?
    assert !User.new(:email => "this.is.not.anemail").valid?
  end
end