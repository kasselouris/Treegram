var DeletePhoto = {
  setup: function() {
    $(document).on('contextmenu', 'img#slide', DeletePhoto.getPhotoInfo);
  }

  ,getPhotoInfo: function() {
    if ($(this).attr('del_option') === "true") {	//proceed to delete photo only if its current_user's photo
      if (confirm("Are you sure you want to delete this photo?")){
        $.ajax({type: 'DELETE',
                url: $(this).attr('href_delete'),
                timeout: 5000,
                success: DeletePhoto.success,
                error: function(xhrObj, textStatus, exception) { alert('Error: Can not delete photo!'); }
                // 'success' and 'error' functions will be passed 3 args
              });
      }
    }
    return(false);
  }

  ,success: function(data, requestStatus, xhrObject) {
    location.reload();	//in order to unstuck the slideshow
    return(false);  // prevent default link action
  }

};
$(DeletePhoto.setup);