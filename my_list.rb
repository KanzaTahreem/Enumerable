require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each
    for i in 0...@list.length
      yield @list[i]
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false

# Test #any?
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false

puts(list.filter(&:even)) # [2, 4]
