Pokemon Components
==================

An exercise in structuring your browser JavaScript in a Rails application.

UJS = Unobtrusive JavaScript

.on('ready'); vs. .ready();



What is window??
Window defines a global variable.


doc ready	-> To initialize js snippet
-> object, function, or class definition


universal resource identifier v. location

pokemon name
pokedex number
height weight

hp
attack
defense
special attack
special defense
speed
Pokemon type(s)


doc ready, event, ajax, then change dom.

```
$ rails new js_in_rails
$ rails tmp:clear // after removing CoffeeScript from Gemfile
$ 
``

How to Remove CoffeeScript from Rails?

Sprockets ES6?
gem "sprockets-es6", require: "sprockets/es6"

No Doc. Ready?!
```
$(document).on("turbolinks:load", function () {
	console.log('Read Nizar's ReadMe on GitHub!');
});
```

All .js replace with .es6 ???
Except application.js and cable.js

Uhhh...