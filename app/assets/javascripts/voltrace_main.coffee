# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dj = "#dj"
mag = "#mag"
adSize = 0;
divSize = 0;
logoSize = 0;
isdropped = false
backButtonMargin = 0;


@fade = (scene) ->
  $(scene).addClass('fadeIn')
  $('.privacy').addClass('fadeIn')
  if scene is dj
    $('.privacy').attr('href', '/dreamjump_privacy');
    if $('#djIconSmooth').css('opacity') < 1
      activateScene('#djIconSmooth', '#djText', '#djApple', '#djGoogle', false)
  else if scene is mag
    $('.privacy').attr('href', '/magnets_privacy');
    if $('#magIconSmooth').css('opacity') < 1
      activateScene('#magIconSmooth', '#magText', '#magApple', '#magGoogle', false)
  else
    $('.privacy').attr('href', '/textbookcheck_privacy')
    if $('#tbcIconSmooth').css('opacity') < 1
      activateScene('#tbcIconSmooth', '#tbcText', '#1234', '#1234', true)


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
  if window.innerWidth < window.innerHeight
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
    isdropped = false

@checkShow = (openDropdown) ->
  if openDropdown.classList.contains('show')
    openDropdown.classList.remove('show')

@resizeAll = () ->
  $('header').height($('footer').height())
  divSize = window.innerHeight - $('header').height() - $('footer').height()
  $('body').css('padding-top', $('header').height() + "px")
  $('#ad_hold').width((window.innerWidth*3)/5)
  if window.innerWidth >= window.innerHeight
    adSize = 304
    logoSize = 20;
    $('.infoText').css({"font-size": "1.5em", "padding" : "0 0 2.5% 0"})
    $('.infoIcon').css("padding", "2.5% 0 2.5% 0")
    $('#yield').height('400px')
    $('.holder').height('400px')
    $('#footer').css({'position': 'absolute', 'top': '100%'})
    $('#header').css({'position': 'absolute', 'top': '0'})
  else
    adSize = window.innerHeight/4.5
    logoSize = 35;
    $('.infoText').css({"font-size": "0.8em", "padding" : "0 0 5% 0"})
    $('.infoIcon').css("padding", "5% 0 5% 0")
    $('#yield').height(divSize/2)
    $('.holder').height(divSize/2)
    $('#footer').css({'position': '', 'top': ''})
    $('#header').css({'position': '', 'top': ''})
  $('#ad_hold').height(adSize)
  $('.infoHolder').height(adSize);
  $('#logo').width(logoSize +  '%')
  #$('.backButton').css({'margin-top': adSize/3.5})

@activateScene = (icon, info, apple0, google, alexa) ->
  $(icon).transition({y: '10px', opacity: 1}, delay: 100)
  $(info).transition(opacity: 1, delay: 600)
  if not alexa
    $(apple0).transition({x: '-10%', opacity: 1}, delay: 1100)
    $(google).transition({x: '10%', opacity: 1}, delay:1100)
  else
    $('#tbcAlexa').transition({y: '-10px', opacity: 1}, delay:1100)

