require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

class MyUnitTests < Test::Unit::TestCase    
  def test_title
    title = 
    assert_equal("Ruby on Rails", title)
  end

  def test_author
    author = 
    assert_equal("Aaron Calderon", author)
  end

  def test_price
    price = 
    assert_equal("10", price)
  end

  def test_date
    published_date = 
    assert_equal("09/06/22", published_date)
  end

end
