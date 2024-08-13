$(document).ready(function(){
    $('.carousel2').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.carousel'
      });
      $('.carousel').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
          autoplaySpeed: 5000,
        asNavFor: '.carousel2',
        arrows: false,
        dots: true,
        focusOnSelect: true,
    });
    $('.image-link').magnificPopup({
      type:'iframe',
    });
    
      });
      

