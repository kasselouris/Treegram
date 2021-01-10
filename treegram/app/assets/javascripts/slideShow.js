$(document).ready(function() {
  //For each array of images 
  var image;
  var imageCounter = 0;
  var imageCache = [];

  //start slide show
  var interval;
  var thisScope;

  $("img").filter("#slide").hover(
    function(){			//handlerIn function
      thisScope = $(this);	//thisScope binds to "this" 'img #slide' where we hovered over our mouse

      imageCounter = 0; //reset
      imageCache = [];	//reset
  		
      // create an array of the slide images
      thisScope.next().find("img").each(function() {	//The 'this' listed below refer to 'img' of '#slides' of 'img #slide'
        image = new Image();
        image.title = $(this).attr("alt");								//title of photo attribute
        image.src = $(this).attr("src");									//source path of an image
        image.href = $(this).attr("href");								//path for index method of comments controller 
        image.href_delete = $(this).attr("href_delete");	//path for destroy method of photos controller 
        image.del_option = $(this).attr("del_option");		//option "true" or "false" whether or not we can delele a photo
        imageCache[imageCounter] = image;
        imageCounter++;
      });
			
      var nextImage;
      interval = setInterval(
        function () {
          thisScope.prev().fadeOut(300);
          thisScope.fadeOut(300,
            function() {
              imageCounter = (imageCounter + 1) % imageCache.length;
              nextImage = imageCache[imageCounter];
              thisScope.prev().text(nextImage.title).fadeIn(300);
              thisScope.attr("src", nextImage.src).fadeIn(300);
              thisScope.attr("href", nextImage.href);
              thisScope.attr("href_delete", nextImage.href_delete);
              thisScope.attr("del_option", nextImage.del_option);
            } 
          ); 
        },
      4000);
    },

    function(){			//handlerOut function
      clearInterval(interval);
			
      //reset to latest uploaded image of user
      var nextImage = imageCache[0];
      thisScope.prev().text(nextImage.title);
      thisScope.attr("src", nextImage.src);
      thisScope.attr("href", nextImage.href);
      thisScope.attr("href_delete", nextImage.href_delete);
      thisScope.attr("del_option", nextImage.del_option);
    }
  );


  //stop interval when we click a picture
  $("img").filter("#slide").click(
    function(){
      clearInterval(interval);
    }
  );

});
