$(document).ready(function() {
  $('.page-top-button').on('click', function(){
  $('body, html').animate({ scrollTop: 0 }, 1000);
  });
});