require 'pry'
require_relative 'test_helper'
require './lib/node'


class NodeTest < MiniTest::Test

  def test_if_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_if_data_method_works
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_if_next_node_works
    node = Node.new("plop")
    assert_nil node.next_node
  end
end
