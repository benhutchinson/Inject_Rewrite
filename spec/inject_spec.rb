require 'inject'

describe "Ben's Inject Method" do


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


end

