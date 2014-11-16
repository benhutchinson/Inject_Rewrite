Rewriting Inject
================

This was the second weekend challenge set at Makers Academy.  The aim is to rewrite the inject method for the array class.  Referencing RubyDocs, inject does seem to apply to other enumerables, however, this will focus on arrays.

###Core Task As Supplied By Makers

- Reopen the Array class or subclass it.
- Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
- Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
- If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass the test.

###Link To Inject On Ruby Docs

[Visit Ruby Docs Here](http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-inject)

###Basic Functionality

Inject initialises with a starting 'accumulator' value.  This defaults to the first item in the array, but can take a pre-set value (such as zero).  Inject will then iterate through each (subsequent) element in the array and performs a calculation on each iteration that is defined by a block (e.g. an accumulator could be incremented by the called element).  The accumulator value is then reset to take the return value from this calculation.  An example is copied below.  This would process the sum of all the elements.  The starting value has been defined as zero.


```ruby

[1, 2, 3].inject(0) {|sum, x| sum + x }

```

###My Code

- I produced two versions.  My final version ```v2_inject``` will allow a block to be passed in a similar format to the inject method.  e.g. ```arr.v2_inject {|sum, element| sum + element }```  I have conducted a test with an array of strings but this aside, I have tended to use addition/accumulation as the basis for my block and hence return values in the tests.  For the string test, I used the equivalent block that RubyDocs show-cases.  This allowed me check that my inject method was behaving in the same way and returning the same result.
- My initial version was similar but focussed on integers initially and its flexibility would be unravelled via manual edits to a do_change modifier function.  My final version embedded the modifier code by making use of ```yield``` and accepting an associated block. 
- In both cases, an argument in passed when the method is called.  As with inject, this effectively defines the elements of the array over which to iterate, and the starting value.
- Where RubyDocs refers to ```memo``` and ```obj```, I have tended to use ```sum``` and ```element``` in my code.