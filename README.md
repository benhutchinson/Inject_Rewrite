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

Inject initialises with a starting 'accumulator' value.  This defaults to the first item in the array, but can take a pre-set value (such as zero).  Inject will then iterate through each (subsequent) element in the array and performs a calculation on each iteration, defined by a block (e.g. accumulator could be incremented by the called element).  The accumulator value is then reset as the return of this calculation. Here is an example.  This would process the sum of all the elements.  The starting value has been defined as zero.


```ruby

[1, 2, 3].inject(0) {|sum, x| sum + x }

```

###My Code

- v1 : works with arrays of integers currently.  To change how it functions (i.e. offer more functionality than addition), the do_change method needs modifying.
- v2 : now a block can be passed with the v2_inject method in a similar format to the inject method.  i.e. arr.v2_inject {|sum, element| sum.to_i + element.to_i } offers same functionality, but could be adjusted on the fly.