require 'inject'
require 'injectv1'

describe "Ben's Inject Method" do

  let (:word_array) { ["cat", "sheep", "wolf"] }

  context "a : The Final Version" do 

    it "should be able to define a starting element if none is supplied" do 
      expect([1,2,3].v2_inject {|sum, element| sum + element }).to be 6
      expect([1,2,3].v2_inject(500) {|sum, element| sum + element }).to be 506
    end

    it 'should be able to modify all elements in an array' do 
      expect([1,2,3].v2_inject {|sum, element| sum + element }).to be 6
    end

    it "should function regardless of array length" do
      expect([1].v2_inject {|sum, element| sum + element }).to be 1 
    end

    it "should also work with strings" do 
      expect(word_array.v2_inject {|sum, element| sum.length > element.length ? sum : element } ).to eql "sheep"
    end

  end

  context "b : The First Version" do 

    it "should be able to define a starting element if none is supplied" do 
      expect([1,2,3].ben_inject).to be 6
      expect([1,2,3].ben_inject(500)).to be 506
    end

    it 'should be able to modify all elements in an array' do 
      expect([1,2,3].ben_inject).to be 6
    end

    it "should function regardless of array length" do
      expect([1].ben_inject).to be 1 
    end

    it "should also work with strings" do 
      expect(word_array.ben_inject).to eql "catsheepwolf"
    end

  end

end

