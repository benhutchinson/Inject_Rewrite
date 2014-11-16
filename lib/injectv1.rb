class Array

def initialize
  @sum
end

def do_change(element)
  @sum = @sum + element
end

# for strings, this will chain them therefore

def ben_inject(sum = nil)
  @sum = sum
  if !sum.nil?
    self.each {|element| do_change(element) }
  else 
    @sum = self[0]
    self.drop(1).each {|element| do_change(element) }
  end
  @sum
end

end