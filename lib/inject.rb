class Array

attr_accessor :sum
attr_accessor :counter

def initialize
  @sum
  @counter
end

def do_change(element)
  @sum = @sum + element.to_i
  iterate
  return if breaker
end

def iterate
  @counter = @counter.to_i + 1
end

def breaker
  self.count == @counter
end


########################################################

def ben_inject(sum = nil)
  @sum = sum.to_i
  if !sum.nil?
    self.each {|element| do_change(element) }
  else 
    @sum = self[0]
    iterate 
    self.drop(1).each {|element| do_change(element) }
  end
  @sum
end

########################################################



def v2_inject(sum = nil)
  @sum = sum.to_i
  if !sum.nil?
    self.each {|element| @sum = yield(@sum, element) }
  else 
    @sum = self[0]
    iterate 
    self.drop(1).each {|element| @sum = yield(@sum, element) }
  end
  @sum
end


end