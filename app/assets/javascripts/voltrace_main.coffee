# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
###width = $('.class').clientWidth
height = $('.class').clientHeight
expand = (icon) ->
  id = setInterval(run, 5)
  run (x) ->
    if width >= 200
      clearInterval(run)
    else
      width++
      height++
      $(icon).clientWidth = width
      $(icon).clientHeight = height###

###$ ->
  $('.app_icon').mouseover -> $('.app_icon').remove();###





