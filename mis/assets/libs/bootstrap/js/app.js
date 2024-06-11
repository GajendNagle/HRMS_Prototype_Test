! function ($) {
    "use strict";

    var TB = function () { };

    TB.prototype.initStickyMenu = function () {
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 50) {
                $(".sticky").addClass("nav-sticky");
            } else {
                $(".sticky").removeClass("nav-sticky");
            }
        });
    },

    TB.prototype.initLanguagesslider = function () {
        if ($('#languages-demo').length > 0) {
            $('#languages-demo').owlCarousel({
                autoPlay: 3e3,
                pagination: !1,
                items: 4,
                itemsDesktop: [1199, 3],
                itemsDesktopSmall: [979, 3]
            });
        }
    },

    TB.prototype.initContact = function () {

        $('#contact-form').submit(function () {

            var action = $(this).attr('action');

            $("#message").slideUp(750, function () {
                $('#message').hide();

                $('#submit')
                    .before('')
                    .attr('disabled', 'disabled');

                $.post(action, {
                    name: $('#name').val(),
                    email: $('#email').val(),
                    subject: $('#subject').val(),
                    captcha: $('#captcha').val(),
                    comments: $('#comments').val(),
                },
                    function (data) {
                        document.getElementById('message').innerHTML = data;
                        $('#message').slideDown('slow');
                        var scrollPos =  $("#message").offset().top;
                        $(window).scrollTop(scrollPos - 150);
                        $('#cform img.contact-loader').fadeOut('slow', function () {
                            $(this).remove();
                        });
                        $('#submit').removeAttr('disabled');
                        if (data.match('Successfully') != null) {
                            setTimeout(function() {
                                $('#name').val('');
                                $('#email').val('');
                                $('#subject').val('');
                                $('#comments').val('');
                            },3000);
                        }
                    }
                );

            });

            return false;

        });
    },

    TB.prototype.initBacktoTop = function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('.back-to-top').fadeIn();
            } else {
                $('.back-to-top').fadeOut();
            }
        });
        $('.back-to-top').click(function () {
            $("html, body").animate({ scrollTop: 0 }, 1000);
            return false;
        });
    },


    TB.prototype.init = function () {
        this.initStickyMenu();
        this.initLanguagesslider();
        this.initContact();
        this.initBacktoTop();
    },
    //init
    $.TB = new TB, $.TB.Constructor = TB
}(window.jQuery),

//initializing
function ($) {
    "use strict";
    $.TB.init();
}(window.jQuery);