# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"
@fade = (scene) ->
  $(scene).addClass('fadeIn')
  $('.privacy').addClass('fadeIn')
  if scene is dj
  then $('.privacy').attr('href', '/dreamjump_privacy')
  else $('.privacy').attr('href', '/magnets_privacy')

@fadeOut = (scene) ->
  $(scene).removeClass('fadeIn')
  $('.privacy').removeClass('fadeIn')





