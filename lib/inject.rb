class Array

attr_accessor :sum
attr_accessor :iterator

def initialize
  @sum
  @counter
end

def set_starting_argument
  @sum = self.first
end

def do_change(sum)
  @sum = @sum * 2
end

def iterate
  @counter = @counter.to_i + 1
end

def breaker
  self.count == @counter
end


def jab(sum = self[0])
  @sum = sum
end

end



# arr = [1,2,3]



# arr.set_starting_argument(arr)
# @iterator += 1
# arr.sum(do_change)

# logic

# take the starting element
# run change on starting element
# save result 
# loop until there are no more elements



# end



# Example : Summing Numbers
# [1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10