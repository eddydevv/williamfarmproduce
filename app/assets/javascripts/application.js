//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .


let startup_func = function () {

  // $('.multi-item-carousel').carousel({
  //   interval: 300
  // });
  //
  // $('.multi-item-carousel .item').each(function(){
  //   var next = $(this).next();
  //   if (!next.length) {
  //     next = $(this).siblings(':first');
  //   }
  //   next.children(':first-child').clone().appendTo($(this));
  //
  //   if (next.next().length>0) {
  //     next.next().children(':first-child').clone().appendTo($(this));
  //   } else {
  //     $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
  //   }
  // });

  $('.carousel').carousel({
    interval: 200
  });
}

$(document).on('turbolinks:load', startup_func())
