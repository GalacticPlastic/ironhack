Intro to AJAX
-----------------
With AJAX, you can send and receive information between the client and server without reloaded the page.

### Not Limited to XML!
	AJAX stands for **A**synchronous **Ja**vascript and **X**ML. But it can send and receive to other data types too, like:

	- JSON	(Newer, preferred alternative to XML)
	- HTML
	- Files (Images, audio; etc)

##Examples:
- Auto-Complete in a Search Feed
- Refining Search Results
- Displaying New Messages in a Chat Feed

# AJAX with jQuery:
```JavaScript
$.ajax()
```

**API** = Application Programmer Interface
AKA, a server with routes that can be used for AJAX.
Each route has an HTTP verb and a URL.

APIs may or may not limit what data you can send and/or receive.

| HTTP Verb | URL		  |	Function							  |
|:---------:|:-----------:|:-------------------------------------:|
| GET	    | /characters |	Retrieve the full list of characters. |
| POST      | /characters |	Create a new character.				  |


