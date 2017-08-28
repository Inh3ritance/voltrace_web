# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"
adSize = 0;
divSize = 0;
logoSize = 0;
isdropped = false

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
  dropdown = $('.dropdown-content')
  if window.innerWidth < 770 #arbitrary number
    listItem.style.display = 'none' for listItem in listItems
    b.css({visibility: 'visible'})
  else
    listItem.style.display = 'unset' for listItem in listItems
    b.css({visibility: 'hidden'})
    if isdropped
      @checkShow drop for drop in dropdown
      isdropped = not isdropped
#show dropdown
@show = () ->
  dropdown = $('.dropdown-content')
  if isdropped
    @checkShow drop for drop in dropdown
    isdropped = not isdropped
  else
    $('#myDropdown').addClass('show')
    isdropped = true

window.onclick = (event) ->
  if not event.target.matches('.dropbtn')
    dropdowns = $('.dropdown-content')
    @checkShow drop for drop in dropdowns

@checkShow = (openDropdown) ->
  if openDropdown.classList.contains('show')
    openDropdown.classList.remove('show')

@resizeAll = () ->
  divSize = window.innerHeight - $('header').height() - $('footer').height()
  $('body').css('padding-top', $('header').height() + "px")
  $('#ad_hold').width((window.innerWidth*3)/5)
  $('#yield').height(divSize/2)
  $('.holder').height(divSize/2)
  if window.innerWidth >= window.innerHeight
    adSize = window.innerHeight/3
    logoSize = 20;
  else
    adSize = window.innerHeight/4
    logoSize = 35;
  $('#ad_hold').height(adSize)
  $('#logo').width(logoSize +  '%')