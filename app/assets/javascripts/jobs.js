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

  /**
   *
   *TOGGLE THE CARD OPEN AND CLOSED
   target the material icon with class icon collapse
   *
   */
  $('.icon-collapse').on('click', function () {
    if ($(this).closest('.card').find('.card-tabs').hasClass('hide')) {
      // find the two pieces of the cards and remove the hide, also change the icon
      $(this).closest('.card').find('.card-tabs').removeClass('hide');
      $(this).closest('.card').find('.card-description').removeClass('hide');
      $(this).html('remove');
    } else {
      $(this).closest('.card').find('.card-tabs').addClass('hide');
      $(this).closest('.card').find('.card-description').addClass('hide');
      $(this).html('add');
    }
  }); // end function to toggle the card open and off


  /**
   *
   * change color of the card based on response
   
   */
 // still to be implemented




} // end ready 

$(document).ready(ready);
$(document).on("page:load", ready);
