if (!window.demo) {
    window.demo = {};
}
var demo = window.demo;

if (!window.ACC) {
    window.ACC = {config: {encodedContextPath: {}}};
}

(function ($) {
    demo.global = {
        home: function () {
            var mainBanner = $(".main-banner");

            mainBanner.slick({
                dots: true,
                infinite: true,
                speed: 300,
                slidesToShow: 1,
                adaptiveHeight: true
            });
        },

        init: function () {
            var self = demo.global;
            self.home();
        }
    }
    demo.global.init();
})(jQuery);