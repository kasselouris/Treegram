var PopUp = {
  setup: function() {
    // add hidden 'div' to end of page to display popup:
    var popupDiv = $('<div id="photoInfo"></div>');
    popupDiv.hide().appendTo($('body'));
    $(document).on('click', 'img#slide', PopUp.getPhotoInfo);
  }

  ,getPhotoInfo: function() {
    $.ajax({type: 'GET',
            url: $(this).attr('href'),
            timeout: 5000,
            success: PopUp.showPhotoInfo,
            error: function(xhrObj, textStatus, exception) { alert('Error: Can not open comments!'); }
            // 'success' and 'error' functions will be passed 3 args
          });
    return(false);
  }

  ,showPhotoInfo: function(data, requestStatus, xhrObject) {
    // center a floater 1/2 as wide and 1/4 as tall as screen
    var oneFourth = Math.ceil($(window).width() / 4);
    $('#photoInfo').
      css({'left': 2*oneFourth+235, 'width': oneFourth+200, 'top': 200}).
      html(data).
      show();

    // make the Close link in the hidden element work
    $('#closeLink').click(PopUp.hidePhotoInfo);
    return(false);  // prevent default link action
  }

  ,hidePhotoInfo: function() {
    $('#photoInfo').hide();
    return(false);
  }

};
$(PopUp.setup);