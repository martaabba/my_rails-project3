//this file contains site-wide js functions

$(document).on('ready page:load', function(){
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' 
    });//close .rating.raty
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });//close rated.raty
  
}); //close document.on for product ratings

//the system does not like these $...have i put this in the wrong file? do i need to define these somewhere?