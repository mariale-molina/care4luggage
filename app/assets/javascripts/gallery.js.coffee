Gallery =
  new : ->
    $(".owl-carousel").owlCarousel(
      navigation : false
      slideSpeed : 300,
      autoPlay: true,
      paginationSpeed : 400,
      singleItem:true
    );

ready = ->
  Gallery.new()
@Gallery = Gallery
$(document).on('ready',ready)
$(document).on('page:load',ready)