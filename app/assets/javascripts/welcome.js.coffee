# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
###
$(document).ready ->
  $("[method=\"post\"]").submit (e) ->
    e.preventDefault()
    data = $(this).serialize()
    url = "score.php"
    $.ajax(
      type: "POST"
      url: url
      data: data
    ).done((response) ->
      response = JSON.parse(response)
      console.log response.percentage
      $("section").html "<div style=\"text-align:center;\"><h2>You scored: " + response.percentage + "</h2></div>"
      $("section>div").prepend "<p>you failed the following numbers: " + response.fails + "</p>"  unless response.percentage is "100%"
      return
    ).fail ->
      console.log "failed!"
      return

    return

  return

###