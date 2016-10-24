Test-Driven Development
=============================================================
--> Write test first.
--> Correct the test so it passes. (Going Green)
--> Refactor.

Differences between "let" and "each" Matchers:
--> Each creates a unique instance variable for each "it" unit test.
	Proper syntax is:

```ruby
		before :each do
			@variable_name = ClassName.new
		end
```

--> Let passes the same instance variable to all "it" unit tests.
	Proper syntax is:

```ruby
		before :variable_name do
			ClassName.new
		end
```