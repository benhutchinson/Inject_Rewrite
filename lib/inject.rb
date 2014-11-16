class Array

def initialize
  @sum
end

## this version will take a block as an argument
## I have removed the .to_i so that this will
## also function with strings.

def v2_inject(sum = nil)
  @sum = sum
  if !sum.nil?
    self.each {|element| @sum = yield(@sum, element) }
  else 
    @sum = self[0]
    self.drop(1).each {|element| @sum = yield(@sum, element) }
  end
  @sum
end

end