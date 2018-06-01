// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(function () {
    $('.datepicker').datepicker({ format: 'yyyy/mm/dd' });

    $('.completeTaskBtn').click(function(){
      var url = $(this).attr('href');
      
      $.ajax({
          method: "POST",
          url: url,
          dataType: 'html',
          success: function () {
            window.location.reload(false); 
          }
      });
      
      return false;
    });
});