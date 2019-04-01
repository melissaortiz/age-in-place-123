// Subscribe Button Option
$(document).scroll(function() {
    var y = $(this).scrollTop(),
      news = $(".news");
  
    if (y > 200) {
      news.fadeIn();
    } else {
      news.fadeOut();
    }
  }) (jQuery);