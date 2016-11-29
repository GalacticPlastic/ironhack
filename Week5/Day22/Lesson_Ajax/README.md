Intro to AJAX
-----------------
With AJAX, you can send and receive information between the client and server without reloaded the page.

**Not Limited to XML!**
AJAX stands for **A**synchronous **Ja**vascript and **X**ML. But it can send and receive to other data types too, like:

- JSON	(Newer, preferred alternative to XML)
- HTML
- Files (Images, audio; etc)

**Examples:**

- Auto-Complete in a Search Feed
- Refining Search Results
- Displaying New Messages in a Chat Feed

# AJAX with jQuery:
```$.ajax()```

**API** = Application Programmer Interface

AKA, a server with routes that can be used for AJAX.

Each route has an HTTP verb and a URL.

APIs may or may not limit what data you can send and/or receive.

| HTTP Verb | URL		  |	Function							  |
|:---------:|:-----------:|:-------------------------------------:|
| GET	    | /characters |	Retrieve the full list of characters. |
| POST      | /characters |	Create a new character.				  |

**Notes:**

- String interpolation is *only* possible in a backtick string, which is also unaffected by line breaks.
- *preventDefault* prevents the default action the browser makes on that event.

**Food for Thought**: A question mark symbol appears at the end of a URL in the browser after a GET submission.

# JSON
Stands for **J**ava**S**cript **O**bject **N**otation.

# Data Attribute Params
Params are retrieved through forms, search queries, and routes.

If a params is not in the URL, it *must* come from a form.
This is done using ```data: {},``` in ```$.ajax ();```.

```
$.ajax ({
	type: "POST",
	url: `http://localhost:3000/api/sandwiches/${the_sandwich}/ingredients/add`,
	data: { ingredient_id: new_ingredient },
	success: addIngredient,
	error: errorIngredient,
});
```