require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'


class NodeTest < MiniTest::Test

  def test_if_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end








end
