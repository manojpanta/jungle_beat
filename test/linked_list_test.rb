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
    list.append("ddododoodp")
    assert_equal "deep", list.head.next_node.data
    assert_equal 3, list.count
  end

  def test_to_string_method_for_multiple_appends
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("dop")
    assert_equal "plop suu dop", list.to_string
    assert_equal 3, list.count
  end

  def test_for_prepend_method
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_if_insert_method_works
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal 4, list.count
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_for_insert_for_edge_cases
    list = LinkedList.new
    list.append("plop")
    list.insert(1, "woo")
    assert_equal "plop", list.head.data
  end

  def test_find_method_is_working
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "plop", list.find(2, 1)
  end

  def test_include_method
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal true, list.includes?("suu")
    assert_equal true, list.includes?("plop")
    assert_equal true, list.includes?("dop")
    assert_equal true, list.includes?("woo")
  end

  def test_if_pop_method_works
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "woo")
    assert_equal "dop plop woo suu", list.to_string
    assert_equal "suu", list.pop
    assert_equal "dop plop woo", list.to_string
  end

  def test_every_method_altogether
    list = LinkedList.new
    list.append("plop")
    list.append("dup")
    list.append("dop")
    list.append("woo")
    list.prepend("suu")
    list.insert(1,"sup")
    assert_equal "woo",list.pop
    assert_equal true, list.includes?("suu")
    assert_equal false, list.includes?("")
    assert_equal "dup", list.find(3,1)
    assert_equal "suu", list.head.data
    assert_equal "suu sup plop dup dop", list.to_string
    assert_equal 5, list.count
  end



end
