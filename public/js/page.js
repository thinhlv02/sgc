$(document).ready(function(){
    $('.btnRecruit').click(function () {
        $(".modal-title-recruit").text($(this).data('title'));
        $("#idRecruit").val($(this).data('id'));
    });

    $('#btnRecruitSubmit').click(function () {
        $('#form-recruit').validate({ // initialize the plugin
            rules: {
                txtNameRecruit: {
                    required: true
                },
                txtEmailRecruit:{
                    required: true,
                    email: true
                },
                txtPhoneRecruit:{
                    required: true,
                    minlength: 10,
                    maxlength: 11,
                    number: true
                },
                txtBirthdayRecruit:{
                    required: true,
                }
            },
            messages:{
                txtNameRecruit:{
                    required: 'Họ tên không được để trống'
                },
                txtEmailRecruit:{
                    required: 'Email không được để trống',
                    email: 'Email không đúng định dạng'
                },
                txtPhoneRecruit:{
                    required: 'Số điện thoại không được để trống',
                    minlength: 'Số điện thoại không đúng',
                    maxlength: 'Số điện thoại không đúng',
                    number: 'Số điện thoại không đúng',
                },
                slSex:{
                    required: 'Giới tính không được để trống'
                },
                txtBirthdayRecruit:{
                    required: 'Ngày sinh không được để trống',
                }
            },
            submitHandler: function (form) { // for demo
                var formData = new FormData($('#form-recruit')[0]);
                submitRecruit(formData);
            }
        });
        // e.preventDefault();
    });
    $('.nav-small').click(function () {
       $('.ul-sm').toggle();
    });
    $('#btnSendReg').click(function () {
        $('#form-recruit-reg').validate({ // initialize the plugin
            rules: {
                txtNameReg: {
                    required: true
                },
                txtEmailReg:{
                    required: true,
                    email: true
                }
            },
            messages:{
                txtNameReg:{
                    required: 'Họ tên không được để trống'
                },
                txtEmailReg:{
                    required: 'Email không được để trống',
                    email: 'Email không đúng định dạng'
                }
            },
            submitHandler: function (form) { // for demo
                var formData = new FormData($('#form-recruit-reg')[0]);
                submitRecruitReg(formData);
            }
        });
        // e.preventDefault();
    })

    $(".website-basic").click(function () {
        $(".nav-modal").removeClass('nav-modal-active');
        $(".website-basic").addClass('nav-modal-active');
        $("#website-basic").show();
        $("#website-process").hide();

    });
    $(".website-process").click(function () {
        $(".nav-modal").removeClass('nav-modal-active');
        $(".website-process").addClass('nav-modal-active');
        $("#website-basic").hide();
        $("#website-process").show();
    });

    $(".li-home").click(function () {
        $('html, body').animate({ scrollTop: $('.first-section').offset().top }, 'slow');
    });
    $(".li-intro").click(function () {
        $('html, body').animate({ scrollTop: $('.intro').offset().top }, 'slow');
    });
    $(".li-product").click(function () {
        $('html, body').animate({ scrollTop: $('.product').offset().top }, 'slow');
    });
    $(".li-recruitment").click(function () {
        $('html, body').animate({ scrollTop: $('.recruitment').offset().top }, 'slow');
    });
    $(".li-contact").click(function () {
        $('html, body').animate({ scrollTop: $('.contact-footer').offset().top }, 'slow');
    });

    var year = 0;
    var employer = 0;
    var customer = 0;
    var increase = null;

    var scrollTop = $(window).scrollTop();
    // var yearToTop = $('.item-count-year').offset().top;
    // var customerToTop = $('.item-count-customer').offset().top;
    var wHeight = $( window ).height();
    // if(scrollTop >= yearToTop-wHeight && scrollTop <= customerToTop){
    //     increase = setInterval(function () {
    //         if(year < 5) year++;
    //         if(employer <= 29) employer += 2;
    //         if(customer < 1999) customer += 99;
    //         if(year >= 5 && employer >= 30 && customer >= 2000){
    //             customer = 2000;
    //             clearInterval(increase);
    //         }
    //         $('.count-year').text(year + "+");
    //         $('.count-employer').text(employer + "+");
    //         $('.count-customer').text(customer + "+");
    //     }, 150);
    // }

    // var styleToTop = $('.style').offset().top;
    // $(window).scroll(function() {
    //     scrollTop = $(this).scrollTop();
        // if(scrollTop >= styleToTop){
        //     $('.sub-nav').show();
        // }
        // else{
        //     $('.sub-nav').hide();
        // }
    //     if(scrollTop >= yearToTop-wHeight && scrollTop <= customerToTop && customer != 2000 && !increase){
    //         increase = setInterval(function () {
    //             if(year < 5) year++;
    //             if(employer <= 29) employer += 2;
    //             if(customer < 1999) customer += 99;
    //             if(year >= 5 && employer >= 30 && customer >= 2000){
    //                 customer = 2000;
    //                 clearInterval(increase);
    //             }
    //             $('.count-year').text(year + "+");
    //             $('.count-employer').text(employer + "+");
    //             $('.count-customer').text(customer + "+");
    //         }, 150);
    //     }
    // });

    $(".owl-carousel-intro").owlCarousel({
        items: 1,
        autoplay: true,
        loop: true,
        autoplayHoverPause: true,
        margin:30,
        dots: true,
    });

    $(".owl-carousel-first").owlCarousel({
        items: 1,
        autoplay: true,
        loop: true,
        autoplayHoverPause: true,
        margin:30,
        dots: true,
    });
});



