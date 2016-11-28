function buildErrorHtml (message) {
  return '\
    <div class="alert alert-warning" role="alert">\
      <strong>Oh noes!</strong>\
      ' + message + '\
    </div>\
  '
}
