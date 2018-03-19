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

  def to_string(current = @head, length = @count)
    beat  = "#{current.data}"
    if @head.nil?
      nil
    elsif @head.next_node.nil?
      beat
    else
      (length-1).times do
        current = current.next_node
        beat.concat(" #{current.data}")
      end
    end
    beat
  end

  def prepend(data)
    @count += 1
    if @head.nil?
      @head = Node.new(data)
    else
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
  end

  def insert(position, data)
    @count += 1
    if @head.nil?
      @head = Node.new(data)
    else
      counter = 0
      current = @head
      until counter == position - 1
        current = current.next_node
        counter += 1
      end
        new_node  = Node.new(data)
        new_node.next_node = current.next_node
        current.next_node = new_node
    end

    def find(position, length)
      count = 0
      current = @head
      until count == position
        current = current.next_node
        count +=  1
      end
      to_string(current, length)
    end

  end







end
