# frozen_string_literal: true

class Array
  def my_select
    return unless block_given?

    sel = []
    each do |el|
      sel.push(el) if yield el
    end
    sel
  end

  def my_map
    return unless block_given?

    clone = []
    each do |x|
      clone.push yield x
    end
    clone
  end

  def my_reduce(val = first)
    return unless block_given?

    map do |el|
      val = yield(val, el)
    end
    val
  end

  def walk(&block)
    each do |x|
      case x
      when Array
        x.walk(&block)
      when Integer || String
        block.call(x)
      end
    end
  end
end
