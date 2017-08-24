// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .

window.addEventListener("resize",function() {
    var list = document.getElementsByTagName("UL")[0];
    var menuButton = document.getElementById("menu");
    loop(list, menuButton);
});

window.addEventListener("load",function() {
    var list = document.getElementsByTagName("UL")[0];
    var menuButton = document.getElementById("menu");
    loop(list, menuButton);
});

function loop(a, b){
    var i;
    if (window.innerWidth < 700) { //arbitrary number
        for(i = 0; i < 3; i++)
            a.getElementsByTagName("LI")[i].style.display = 'none';
        b.style.visibility = 'visible';
    } else {
        for(i = 0; i < 3; i++)
            a.getElementsByTagName("LI")[i].style.display = 'unset';
        b.style.visibility = 'hidden';
    }
}

function myFunction() {
    document.getElementById("myDropdown").classList.add("show");
}

window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show'))
                openDropdown.classList.remove('show');
        }
    }
}
