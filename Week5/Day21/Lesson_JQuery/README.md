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

## Replacing the Dom Content
- html()	Replaces Content with HTML (tags converted properly)
- text()	Replaces Content with Plain Text

## Removing Elements
- remove()	Deletes Element
- empty()	Deletes Content of Element


```JavaScript
$('p').remove();
$('button').remove();
```

## Manipulating Properties

```JavaScript
$('input').prop('type');
$('.container').prop('type');
```

## Manipulating Classes
- .hasClass() method
	=> Boolean check for a specific class
- .addClass() method
- .removeClass() method
- .toggleClass() method

## jQuery Effects
1. Basics:

	- .hide ()
	- .show()
	- .toggle()

2. Opacity:

	- .fadeIn()
	- .fadeOut()
	- .fadeToggle()

3. Transitions:

	- .slideIn()
	- .slideOut()