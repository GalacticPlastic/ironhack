function showTournamentForm () {
  $('[data-hook~=tourney-form]').removeClass('hidden')
}

function createTournament (event) {
  event.preventDefault()

  var $form = $('[data-hook~=tourney-form]')
  var $formAlerts = $('[data-hook~=form-alerts]')
  var data = $form.serialize()
  var request = $.post('/api/tournaments', data)
  request.fail(showError)
  request.done(respondNewTourney)

  $formAlerts.empty()

  function showError (error) {
    console.error('Error adding new tournament.', '\n' + error.responseText)
    var message = 'There was a problem adding the tournament.'
    $formAlerts.prepend(buildErrorHtml(message))
  }

  function respondNewTourney (tourney) {
    var message

    if (!tourney.id) {
      message = 'Your API didn\'t return a tournament id!'
      $formAlerts.prepend(buildErrorHtml(message))
    }

    if (request.status !== 201) {
      message = 'Your API didn\'t send a 201 status code!'
      $formAlerts.prepend(buildErrorHtml(message))
    }

    if (message) {
      return
    }

    $formAlerts.empty()
    $form.trigger('reset')
    $form.addClass('hidden')

    showTourney(tourney)
  }
}

function showTourney (tourney) {
  var $tourneyList = $('[data-hook~=tourney-list]')
  var $tourneySection

  if ($tourneyList.length) {
    $tourneyList.append(buildTourneyHtml(tourney))
  } else {
    $tourneySection = $('.js-tourney-section')
    $tourneySection.empty()

    $tourneySection.append(buildTourneyListHtml([ tourney ]))
  }
}
