$(document).on('ready page:load', function() {
  $(window).scroll(function() {
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 50){
      $.getScript($('.pagination span.next').children().attr('href'));
    }
  });
});