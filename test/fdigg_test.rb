require 'test/unit'
require File.dirname(__FILE__) + '/../lib/rdigg'

class RdiggTest < Test::Unit::TestCase
  # Replace this with your real tests.
  def test_fetch
    
  end
  
  def test_find_all_users
    output = Rdigg.digguser.find_all(:count => 3)
    assert_kind_of Array, output
  end
end
