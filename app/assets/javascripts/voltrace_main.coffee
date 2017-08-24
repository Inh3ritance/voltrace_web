# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"

@fade = (scene) ->
  $(scene).addClass('fadeIn')
  $('.privacy').addClass('fadeIn')
  if scene is dj
    $('.privacy').attr('href', '/dreamjump_privacy');
  else
    $('.privacy').attr('href', '/magnets_privacy');

@fadeOut = (scene) ->
  $(scene).removeClass('fadeIn')
  $('.privacy').removeClass('fadeIn')

@startLoop = () ->
  list = $('#topNav > LI')
  menuButton = $('#menu')
  @loop(list, menuButton)

@loop = (a, b) ->
  i = 0
  listItems = a
  if window.innerWidth < 700 #arbitrary number
    listItem.style.display = 'none' for listItem in listItems
    b.css({visibility: 'visible'})
  else
    listItem.style.display = 'unset' for listItem in listItems
    b.css({visibility: 'hidden'})
#show dropdown
@show = () ->
  $('#myDropdown').addClass('show')

window.onclick = (event) ->
  if not event.target.matches('.dropbtn')
    dropdowns = $('.dropdown-content')
    @checkShow drop for drop in dropdowns

@checkShow = (openDropdown) ->
  if openDropdown.classList.contains('show')
    openDropdown.classList.remove('show')
