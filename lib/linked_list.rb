require './lib/node'

class LinkedList

  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    current = @head
    if current.nil?
    @head = Node.new(data)
    else
      until current.next_node.nil?
      current = current.next_node
      end
    current.next_node = Node.new(data)
    end
  end

  def to_string
    beat  = "#{@head.data}"
    current = @head
    if @head.nil?
      nil
    elsif @head.next_node.nil?
      beat
    else
      until current.next_node.nil?
        current = current.next_node
        beat.concat(" #{current.data}")
      end
    end
    beat
  end

  def prepend(data)



  end







end
