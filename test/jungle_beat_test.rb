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

  def test_if_append_method_works
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal "deep", jb.list.head.data
    assert_equal 6, jb.count
  end

  def test_for_play_methods
    jb = JungleBeat.new
    jb.append("my name is manoj panta ")
    assert_equal 5,jb.count
    jb.play
  end









end
