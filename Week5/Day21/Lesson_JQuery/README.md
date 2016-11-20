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

- Append  - Inside, After
- Prepend - Inside, Before
- Before  - Outside, Before
- After	  - Outside, After

<em>Note:</em> Cannot append or prepend content to self-closing tags.

## Replacing the Dom Content
- html() - Replaces Content with HTML (tags converted properly)
- text() - Replaces Content with Plain Text
- attr() - Replaces Attribute Content
- data() - jQuery.data(element, key, value)

```
$("img").attr("width","500");
```

## Removing Elements
- remove() - Deletes Element
- empty()  - Deletes Content of Element


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
- .hasClass()
	- Boolean check for a specific class.
- .addClass()
- .removeClass()
- .toggleClass()

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

```Javascript
	$('body')
		.append(videoHTML)
		.prepend("blah")
		.addClass('pink')
	;

	$('body').append(videoHTML).prepend("blah").addClass('pink');
```

| Sorting Arrays			|
|:-------------------------:|
| if 	a < b 	 |	-> -1   |
| if 	b < a 	 |	->  1   |
| if 	a == b 	 |	->  0   |
| if 	a <=> b  |	// Ruby |