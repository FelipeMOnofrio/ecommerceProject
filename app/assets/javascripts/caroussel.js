//= require jquery3
//= require owl.carousel
$(document).on('turbolinks:load', function() {

    $("#owl-demo").owlCarousel({

        autoPlay: 1000, //Set AutoPlay to 3 seconds
        navigation : false, // Show next and prev buttons
        slideSpeed : 300,
        paginationSpeed : 300,
        singleItem:true,
        autoHeight:true

    });

});