require 'minitest/autorun'
require 'minitest/pride'
require_relative 'lifo'

class LifoTest < Minitest::Test
  def setup
    @lifo = Lifo.new
    @lifo.push(:a)
    @lifo.push(:b)
  end

  def test_push_adds_a_node
    expected = [:a, :b]
    result = @lifo.list
    assert_equal expected, result
  end

  def test_each_yields_each
    expected = [:a, :b]
    result = []
    @lifo.each { |node| result << node.datum }
    assert_equal expected, result
  end

  def test_last_gives_last_node
    expected = Node.new(:b, nil)
    result = @lifo.last
    assert_equal expected, result
  end

  def test_pop_gives_last_node_and_mutates_the_list
    expected = Node.new(:b, nil)
    result = @lifo.pop
    assert_equal expected, result
    assert_equal [:a], @lifo.list
  end

  def test_size
    expected = 2
    result = @lifo.size
    assert_equal expected, result
  end

  def test_clear
    expected = []
    @lifo.clear
    result = @lifo.list
    assert_equal expected, result
  end

  def test_pop_takes_number_to_return
    expected = [:a, :b]
    result = @lifo.pop(2)
    assert_equal expected, result
  end

  def test_raises_exception_if_full
    @lifo = Lifo.new(2)
    @lifo.push(:a)
    @lifo.push(:b)
    assert_raises QueueFullException do
      @lifo.push(:c)
    end
  end
end
