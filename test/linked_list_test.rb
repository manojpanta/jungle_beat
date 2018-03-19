require './lib/linked_list'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < MiniTest::Test
  def test_if_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end





end
