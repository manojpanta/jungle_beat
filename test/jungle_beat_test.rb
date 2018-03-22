require 'pry'
require_relative 'test_helper'
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
    jb.append('deep doo ditt')
    jb.append('woo hoo shu')
    assert_equal 'deep', jb.list.head.data
  end

  def test_if_count_method_works
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    jb.append('woo hoo shu')
    assert_equal 6, jb.count
  end

  def test_for_play_methods
    jb = JungleBeat.new
    jb.append('doom oom oom ding oom oom oom di oom ding dah oom oom')
    jb.append('I will be back')
    assert_equal 17, jb.count
    jb.play
  end




end
