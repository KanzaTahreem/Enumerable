class MyList
  def initialize(*args)
    @list = args
  end

  def each
    for i in 0...@list.length
      yield @list[i]
    end
  end
end

list = MyList.new(1, 2, 3, 4, 5)
list.each { |i| puts "printing number #{i}" }
