class Lifo
  attr_reader :head, :max, :size

  def initialize(max=10)
    @head = nil
    @max = max
  end

  def clear
    @head = nil
  end

  def size
    k = 0
    each {k += 1}
    k
  end

  def push(datum)
    raise QueueFullException.new if size + 1 > max
    return @head = Node.new(datum, nil) if @head.nil?
    last.nxt = Node.new(datum, nil)
  end

  def last
    return nil if @head.nil?
    each {}
  end

  def pop(n=1)
    return pop_one if n == 1
    result = []
    n.times do |i|
      result.unshift(pop_one.datum)
    end
    result
  end

  def pop_one
    node = last
    each do |n|
      if n.nxt == node
        n.nxt = nil
        return node
      end
    end
  end

  def list
    result = []
    each do |n|
      result << n.datum
    end
    result
  end

  def each(&block)
    node = @head
    return nil if node.nil?

    while node.nxt
      yield node
      node = node.nxt
    end
    yield node
    node
  end

end

class Node

  attr_reader :datum
  attr_accessor :nxt

  def initialize(input, nxt)
    @datum = input
    @nxt = nxt
  end

  def ==(other)
    datum == other.datum && nxt == other.nxt
  end

end

class QueueFullException < StandardError; end