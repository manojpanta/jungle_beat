require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/jungle_beat'
require './lib/linked_list'

class JungleBeatTest < Minitest:: Test

  def test_if_it_exists
    jb = JungleBeat.new
    assert_instance_of LinkedList, jb.list
    assert_nil jb.list.head
  end








end
