Unit Test
=============================================================
A software testing method by which individual units of source code, sets of one or more computer program modules together with associated control data, usage procedures, and operating procedures are tested to determine if they are fit for use.

Should Be:
- Automated
- Repeatable
- Easy to Implement
- Available for Future Use
- Run at the Push of a Button
- Quick

## NOTES
* #add Short for "add" instance method of the StringCalculator class.
* "It" string is a description of what is being test.
* What is RSpec `.to` method?
* Expects are called *assertions*.
* RSpec.describe is a *test suite*.

```ruby
input = number_string.split(',')
```

* Must convert array elements into Integers!
  
  - `.to_i` method of strings, can be applied to each array element within sum loop.
  - `.to_i` cannot be applied directly to an array:
  - `input.to_s` # => NO!

* Reduce to calculate sum.

* Numerous ways to test the result of a method (known as "Matchers").
  
  - `eq()` is an example of a Matcher.
  - `include("")` is another type of Matcher.
  - VERY Important to use the correct Matcher!

* Refactor repeated object definitions across all RSpec unit tests by:
  
  1. Adding after `describe "#method" do`
     
     ```ruby
     before :each do
       @variable_name = ClassName.new
     end
     ```
     
     Variable must be turned into **instance variable** w/ `@` in front of variable name.
     
  2. Adding after `describe "#method" do`
     
     ```ruby
     let @variable_name do
       ClassName.new
     end
     ```
  
  `"let"` refactoring method preferred over `":each"` refactoring method.

**Example**
```ruby
class StringCalculator
  def add(numbers_string = "")
    => nil.to_i == 0
    numbers_string[0].to_i + numbers_strong[2].to_i
  end
end
```
