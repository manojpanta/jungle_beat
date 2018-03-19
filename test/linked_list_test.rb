require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < MiniTest::Test

  def test_if_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_if_head_method_works
    list = LinkedList.new
    assert_nil list.head
  end

  def test_if_append_method_works
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_count_method_is_working
    list = LinkedList.new
    list.append("doop")
    list.append("doop")
    assert_equal 2, list.count
    # require 'pry' ; binding.pry
  end

  def test_head_next_node
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_if_to_string_method_works
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_if_multiple_appending_works
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end




end
