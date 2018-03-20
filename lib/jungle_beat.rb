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

  def count
    @list.count
  end


  end




end
