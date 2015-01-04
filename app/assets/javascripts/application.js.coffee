#// This is a manifest file that'll be compiled into application.js, which will include all the files
#// listed below.
#//
#// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
#// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#//
#// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
#// compiled file.
#//
#// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
#// about supported directives.
#//
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require jquery.turbolinks
#= require bootstrap-sprockets
#= require_tree .

$ ->
  $('#star_rank').raty({
    half     : true,
    size     : 30,
    starHalf : '/images/star-half.png',
    starOff  : '/images/star-off.png',
    starOn   : '/images/star-on.png',
    target    : '#impression_total_score',
    targetType: 'number',
    targetKeep: true,
  });

#  alert("hoge");
#  $('#star_rank').raty('move', 5);
