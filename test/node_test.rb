require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
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








end
