require 'minitest/autorun'
require 'person'

class TestSomething < Minitest::Test

  def test_true_assertion
    assert(true) # Assert returns no failure if its true
  end

  #def test_false_assertion
  #  assert(false) # Returns Failure if false
  #end

  def test_introduction
    person = Person.new
    person.name = 'Bob'
    assert(person.introduction == "Hello, my name is Bob!") # Test with what you want to see
  end

  def setup
    @list = ListWithCommas.new
    puts "Setting up"
  end

  def teardown
    puts "Test ended"
  end

  def test_it_joins_two_words_with_and
    @list.items = ['apple', 'orange']
    assert_equal('apple and orange', @list.join) # assert_equal takes two arg and test if they are equal
  end

  def test_it_joins_three_words_with_commas
    @list.items = ['apple', 'orange', 'pear']
    assert(@list.join == 'apple, orange, and pear', "Return value didnt equal 'apple, orange, and pear'")#Write a message as second argument
  end

  def test_it_prints_one_word_alone
    @list.items = ['apple']
    assert_equal('apple', @list.join) #first argument is what you want to test for
  end

  def other_assertion_methods
    assert_includes(['apple', 'orange'], 'apple') #=> True as array contains apple
    assert_includes(['apple', 'orange'], 'pretzel') #=> Fails as array doesnt contain pretzel

    assert_instance_of(String, 'apple') #=> Pass as apple is instance of String!
    assert_instance_of(Fixnum, 'apple') #=> Failed as apple is not instance of Fixnum

    assert_raises(ArgumentError) do
      raise ArgumentError, "That didnt work!" #=> Pass as the block raises an argument Error
    end

    assert_raises(ArgumentError) do
      "Everything's fine!" #=> Fails as block does not raise an argument error
    end
  end
end
