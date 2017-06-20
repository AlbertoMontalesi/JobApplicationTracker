
var ready;

ready = function () {
  $('select').material_select();
// target the pen icon
  $('.fa-pencil-square-o').on('click', function () {
    // if the submit button has the class hide
    if ($(this).parent().find('input[type="submit"]').hasClass('hide')) {
      // remove the class hide 
      $(this).parent().find('input[type="submit"]').removeClass('hide');
      // make the textarea editable
      $(this).parent().find('textarea').removeAttr('readonly');
    } else {
      // else add the class hide back and make the text area uneditable
      $(this).parent().find('input[type="submit"]').addClass('hide');
       $(this).parent().find('textarea').addAttr('readonly');
      
    } //end if else

  }); // end toggle function
} // end ready 


$(document).ready(ready);
$(document).on("page:load", ready);


