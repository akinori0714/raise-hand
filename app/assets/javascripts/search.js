$(function(){
  $('.child').hide();
  var parentList = $(".parent");
  var parentListTrig = $(".parent > li");
  var childList = $(".child");
  var childListTrig = $(".child > li");
  parentListTrig.hover(function(){
    $(this).children('.child').slideDown('fast');
  }, function() {
    $(this).children('.child').slideUp('fast');
  });
});