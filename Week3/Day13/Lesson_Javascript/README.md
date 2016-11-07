# Fundamental Syntax Difference Between JavaScript & Ruby

Functions are defined using the function keyword.

```javascript
function eat (food) {
	console.log("Eating some " + food);
}
eat("pizza");   // <-- Argument plugs into variable in JS the same way as in Ruby.
```

When a function is created, the function name can also be used as a variable.
```javascript
console.log(eat);
```

Instead of using do...end, braces are the opening and closing syntax.
Instructions must end with a semicolon (virtually every line).

**Parantheses required** around condition of if/else statements. AND empty arguments.
```javascript
process(sample_array);

noParameter();
```
When first assigned, variables must be declared with 'var'.
Otherwise, you will define a global variable, which will screw you all up if you use generic naming conventions.

```javascript
var positions = [];
```

## Function Scope:
- Where a variable is usable is **entirely dependent** on where it was defined.

### Example:
```javascript
function nationality (nation, array) {
	var counter = 0;
	array.forEach(function (totalStudents) {
		if (totalStudents === nation) {
			counter += 1;
		}
	});
	return counter;
}
module.exports = nationality;
```

The counter variable is **only accessible** from *inside* the nationality function.
```javascript
console.log(counter);
```

Will return an error.

## Loops
- JS equivalent of Ruby's **.each** is **.forEach**.

```ruby
	pets ["dogs", "cats", "birds"]
```

```javascript
	var pets = ["dogs", "cats", "birds"];
	pets.forEach(function (pets) {
		console.log(pets);
	});
```

- JS equivalent of Ruby's **.select** is **.filter**.

```ruby
	pets ["dogs", "cats", "birds"]
```

```javascript
	var pets = ["dogs", "cats", "birds"];
```

- JS has a .map loop like Ruby.

```ruby
	pets ["dogs", "cats", "birds"]
```

```javascript
	var pets = ["dogs", "cats", "birds"];
```

- JS also has a .reduce loop like Ruby.

```ruby
	pets ["dogs", "cats", "birds"]
```

```javascript
	var pets = ["dogs", "cats", "birds"];
```

## Conditions
- JavaScript uses 3 equal signs in place of Ruby's two for equations.
  === ≠ ==



  ## Random
  - The type for **NaN** is **Number**.
    ...??!