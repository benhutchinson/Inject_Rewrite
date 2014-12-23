class Array

## this version will take a block as an argument

  def v2_inject(seed = nil)
    duplicate = self.dup

    if seed.nil?
      sum = duplicate.delete_at(0)
    else 
      sum = seed
    end

    duplicate.each {|element| sum = yield(sum, element) }

    sum
  end

end