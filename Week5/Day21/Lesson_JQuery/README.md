Intro to jQuery
-----------------
Basic Syntax:
```JavaScript
$(''.on(''), function () {
	// Add Event Handler
});
```

## Anatomy of an Event Handler
- Selector
- Event
- Callback Function

## Adding Content to the Dom
**Append** and **Prepend** inject content *INSIDE* the specified selector.
**Before** and **After** inject content *OUTSIDE* the specified selector.

- Append	Inside, After
- Prepend	Inside, Before
- Before	Outside, Before
- After		Outside, After

<em>Note:</em> Cannot append or prepend content to self-closing tags.