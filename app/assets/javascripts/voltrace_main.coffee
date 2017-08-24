# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"

@fade = (scene) ->
  logo = document.getElementById("logo")
  title = document.getElementById("title-content")
  logo.style.display = 'none';
  $(scene).addClass('fadeIn')
  $('.privacy').addClass('fadeIn')
  if scene is dj
    $('.privacy').attr('href', '/dreamjump_privacy');
    title.innerHTML = "Dream Jump";
  else
    $('.privacy').attr('href', '/magnets_privacy');
    title.innerHTML = "Magnets";

@fadeOut = (scene) ->
  logo = document.getElementById("logo")
  title = document.getElementById("title-content")
  logo.style.display = 'unset';
  title.innerHTML = "";
  $(scene).removeClass('fadeIn')
  $('.privacy').removeClass('fadeIn')





