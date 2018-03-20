require_relative 'linked_list'
class JungleBeat

  attr_reader :list


  def initialize
    @list = LinkedList.new

  end

  def append(data)
    data = data.split
    count = 0
    until data.length == count
      @list.append(data[count])
      count += 1
    end
  end

  def count
    require "pry";
    @list.count
  end

  def play
    beats = ""
    current = list.head
    until current.next_node.nil?
      current = current.next_node
      beats << current.data
    end
    beats
    `say -r 100 -v Boing #{beats}`
  end
end
