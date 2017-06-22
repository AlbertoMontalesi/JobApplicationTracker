
var ready;
ready = function () {

////////////////
// TO DISPLAY MATERIALIZE SELECTS
//////////
  $('select').material_select();
 
////////////
  // TO TOGGLE ON AND OFF THE EDIT NOTES
// target the pen icon
  $('.note-edit').on('click', function () {
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

$.turbo.isReady
$(document).ready(ready);
$(document).on("page:load", ready);



