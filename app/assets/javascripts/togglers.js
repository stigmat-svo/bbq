$(".event-tools").ready(function(){
  $('#subscribe').show()
  $('#subscribe-on').click(function(){
    $('#subscribe').slideToggle(500);
    $('#comments').hide()
    $('#gallery').hide()
    $('#map').hide()
    return false;
  });

  $('#comments').hide()
  $('#comment-on').click(function(){
    $('#comments').slideToggle(500);
    $('#subscribe').hide()
    $('#gallery').hide()
    $('#map').hide()
    return false;
  });

  $('#gallery').hide()
  $('#gallery-on').click(function(){
    $('#gallery').slideToggle(500);
    $('#subscribe').hide()
    $('#comments').hide()
    $('#map').hide()
    return false;
  });

  $('#map').hide()
  $('#map-on').click(function(){
    $('#map').slideToggle(500);
    $('#subscribe').hide()
    $('#comments').hide()
    $('#gallery').hide()
    return false;
  });
});
