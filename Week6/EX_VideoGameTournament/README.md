Video Game Tournaments
======================

A Rails JSON API practice app.

Clone it from [this repository](https://github.com/khalifenizar/video-games)

This app is supposed to help in running a video games tournament.
It's got a few missing pieces though.


Task #1: Models
---------------

First we need a model to represent tournaments.
For that let's create a `Tournament` model with a `name` field.
A `Tournament` can have several players participating in it.
We should represent this with a second model, `Player`.
A `Player` should also have a `name` field.

A `Player` can also participate in many tournaments,
so we need an intermediate model to establish the
`has_many :through` association.
Let's call it `Registration`.

It would be a great idea to populate the database
using the seed file.


Task #2: Tournaments page
-------------------------

The home page is supposed to show a list of tournaments
but right now it's showing an error.

```
GET http://localhost:3000/api/tournaments.json 404 (Not Found)
Error fetching tournament list.
Routing Error

No route matches [GET] "/api/tournaments.json"

```

As you can see, the tournaments page is trying to call an API via JavaScript
to retrieve that data. You can find the code responsible for that call
inside the `app/assets/javascript/tournaments.js`file.
The ready event is calling a `tournamentsIndex`function that is located in
the `tournaments-index.js`.

``` javascript
$('.ctrl-tournaments.actn-index').ready(tournamentsIndex)
```

This function is making an AJAX GET request to
a route that does not exist!

``` javascript
function tournamentsIndex () {
  var request = $.get('/api/tournaments.json')
  ...
}
```

To fix it you have to do the following:

1. Create a route that responds to GET requests to the URL `/api/tournaments`.
2. This API route needs to respond with a JSON array of tournaments.


Task #3: Add new tournaments
----------------------------

Now that our tournaments index works, lets add a new tournament.
Wait! There is another error...

```
POST http://localhost:3000/api/tournaments 404 (Not Found)

Routing Error

No route matches [POST] "/api/tournaments"
```

It seems that we have the same problem as before.
But now it's time to show what you are capable of
without any guidance. Good luck!


Task #4: Tournament delete
--------------------------

Until now, all the JavaScript code was already written for you.
However, we think it would be useful that you
practice building both sides of the application.
Let's add a delete button next to the name of the tournament.
Go to the `build-tourney-html.js` file.
There you can find the `buildTourneyHtml` function
that generates the HTML of each tournament.

At this point we recommend you to take a good look
at all the Javascripts files and try to understand how everything is working.

As you can see, to display the tournaments
we have to generate the HTML with Javascript,
including the information that we want.
So to add a button we should include the following code below the link:

```javascript
'<button data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\
```

If you are wondering what is this `data-hook="tourney-delete"`,
it's a convention using the advantages of the
[data attribute](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Using_data_attributes)
of HTML5. This way, we keep the classes used for styling separate
from the Javascript manipulation.

Once we have the button, the next step is to add the DELETE call.
But there is another problem...
If you try to add a `submit` event to the button we have created,
you will see that it doesn't work.
That's because when the JavaScript files are loaded the button doesn't exist.
So we have to use some [event delegation](http://learn.jquery.com/events/event-delegation/).
Take a look at the link to understand how it works,
but basically what we are doing is binding the event to the parent element
that you are sure is in the DOM when the Javascript files load.
It could be something like this:

```
$('.ctrl-tournaments.actn-index').on('submit', '[data-hook~=tourney-delete]', deleteTournament )
```

The next step is to define the `deleteTournament` function, where we are going to make the AJAX call to the delete action.

```
var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
    });
```

And watch out!
Remember to include the `preventDefault` call
to avoid the usual behaviour of the button.


Task #5: Adding players to tournaments
--------------------------------------

We have a last challenge for you.
If you found the last task easy,
try to implement a functionality that adds players to the the tournament.

You could create a new button next to each tournament
that displays a form below the `<li>` that contains the tournament.
The form should have a `<select>` tag with all the available players
who can participate.

Once the user selects the player it should appear in a list
that is placed also below the tournament's `<li>`.

Remember that you have to use JavaScript and your API.
So if the page is refreshing to do this task, you are doing it wrong!

Good luck!
