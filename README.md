Rewriting Inject
================

This was the second weekend challenge set at Makers Academy.  The aim was to rewrite the inject method for the array class.  Referencing [Rubydocs](http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-inject), inject applies to other enumerables, however, the focus here lies on arrays.

###Core Task As Supplied By Makers

- Reopen the Array class or subclass it and rewrite the inject method. 
- Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
- Name your method differently as rspec uses inject() internally, so the tests will fail with strange messages unless your implementation of inject is perfect.
- If you would like a challenge, rewrite inject twice using iterators and using recursion (though both are not required to pass the test).

###Basic Functionality

Inject initialises with a starting 'accumulator' value.  This defaults to the first item in the array, but can take a pre-set value (such as zero).  Inject will then iterate through each (subsequent) element in the array and performs a calculation on each iteration that is defined by a block (e.g. an accumulator could be incremented by the called element).  The accumulator value is then reset to take the return value from this calculation.  An example is copied below, which would process the sum of all the elements and take zero as the starting value.

```ruby

[1, 2, 3].inject(0) {|sum, x| sum + x }

```

###My Code

- I produced two versions.  My final version ```v2_inject``` allows a block to be passed in a similar format to the inject method.  e.g. ```arr.v2_inject {|sum, element| sum + element }```  I have conducted a test with an array of strings but this aside, I have tended to use addition/accumulation as the basis for my block and hence return values in the tests.  For the string test, I used the equivalent block that RubyDocs show-cases.  This allowed me check that my inject method was behaving in the same way and returning the same result.  My earlier version was similar but focussed on integers.  Its flexibility would be unravelled via manual edits to a do_change modifier function.  My final version embedded the modifier code by making use of ```yield``` and accepting an associated block.  Where RubyDocs refers to ```memo``` and ```obj```, I have tended to use ```sum``` and ```element``` in my code.

###Feedback From Review

- Whilst `if !sum.nil?` is valid code, it can be confusing to read.  Could the logic be built to reflect what happens when sum is nil?
- ```inject(:+)``` is a quicker way of calling inject than passing in the equivalent ```{|sum, element| sum + element}``` block. 