# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"
adSize = 0;
divSize = 0;
logoSize = 0;
isdropped = false
backButtons = $('.backButton')
showedMag = false
showedDJ = false
showedTBC = false

@fade = (scene) ->
  $(scene).addClass('fadeIn')
  $('.privacy').addClass('fadeIn')
  if scene is dj
    $('.privacy').attr('href', '/dreamjump_privacy');
    if not showedDJ
      activateScene('#djIconSmooth', '#djText', '#djApple', '#djGoogle', false)
      showedDJ = true
  else if scene is mag
    $('.privacy').attr('href', '/magnets_privacy');
    if not showedMag
      activateScene('#magIconSmooth', '#magText', '#magApple', '#magGoogle', false)
      showedMag = true
  else
    $('.privacy').attr('href', '/textbookCheck_privacy')
    if not showedTBC
      activateScene('#tbcIconSmooth', '#tbcText', '#1234', '#1234', true)
      showedTBC = true


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
    $('#vDropdown').addClass('show')
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
    $('.infoText').css({"font-size": "1.5em", "padding" : "0 0 2.5% 0"})
    $('.infoIcon').css("padding", "2.5% 0 2.5% 0")
  else
    adSize = window.innerHeight/4.5
    logoSize = 35;
    $('.infoText').css({"font-size": "0.5em", "padding" : "0 0 5% 0"})
    $('.infoIcon').css("padding", "5% 0 5% 0")
  $('#ad_hold').height(adSize)
  $('#logo').width(logoSize +  '%')

@activateScene = (icon, info, apple0, google, alexa) ->
  $(icon).transition({y: '10px', opacity: 1}, delay: 100)
  $(info).transition(opacity: 1, delay: 600)
  if not alexa
    $(apple0).transition({x: '-10%', opacity: 1}, delay: 1100)
    $(google).transition({x: '10%', opacity: 1}, delay:1100)
  else
    $('#tbcAlexa').transition({y: '-10px', opacity: 1}, delay:1100)

