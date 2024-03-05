// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require turbolinks
//= require jquery/animatescroll.min
//= require jquery/jquery.infinitescroll
//= require jquery/jquery.colorbox-min
//= require jquery/jquery.cookie
//= require jquery/detect-card
//= require underscorejs/underscore-min
//= require modulejs/modulejs-1.5.0.min
//= require backbone/backbone-min
//= require backbone/extended-backbone
//= require backbone/backbone.subroute.min
//= require momentjs/moment
//= require bootstrap/bootstrap.min
//= require bootstrap/bootstrap-datetimepicker.min
//= require sweet_alert/sweet-alert.min
//= require tock/tock.min
//= require reactjs/react-with-addons-0.13.1
//= require reactjs/flux
//= require reactjs/event_emitter.min
//= require reactjs/immutable.min
//= require reactjs/shallowEqualImmutable
//= require reactjs/ImmutableRenderMixin
//= require braintree/braintree
//= require owl_carousel/owl.carousel.min
//= require selectize/selectize.min
//= require i18n
//= require i18n/translations
//= require_tree .

modulejs.define('jquery', function () { return jQuery; });
modulejs.define('backbone', function () { return Backbone; });
modulejs.define('underscore', function () { return _; });
modulejs.define('tock', function () { return Tock; });
modulejs.define('i18n', function () { return I18n; });
modulejs.define('react', function () { return React; });
modulejs.define('flux', function () { return Flux; });
modulejs.define('immutable', function () { return Immutable; });
modulejs.define('eventEmitter', function () { return EventEmitter; });
modulejs.define('braintree', function() { return braintree; });

$(function() {
  var router = modulejs.require('router');
  router.initialize();

  var tracking = modulejs.require('tracking');
  tracking.initialize();

  $('.block-message-details').on('click', function(e) {
    $(this).css('background-color', '#dcf7f7');
  });

  $(window).scroll(function() {
    var currentPosition = $('.nav-offset').offset();

    if (currentPosition) {
      var scrollPosition = $(window).scrollTop();
      currentPosition = currentPosition.top - 40;

      if (currentPosition <= scrollPosition) {
        $('#main-nav').addClass('active');
      } else {
        $('#main-nav').removeClass('active');
      }
    }
  });

  // Responsive Menu
  var pull = $('.res-btn');
  var menu = $('#main-nav .horizontal-menu');
  var menuHeight = menu.height();
  var mainNav = $('#main-nav');

  $(pull).on('click', function(e) {
    e.preventDefault();

    var menuIcon = pull.find('.horiz-line');

    if (menuIcon.hasClass('active')) {
      menuIcon.removeClass('active');
      mainNav.removeClass('menu-active');
    } else {
      menuIcon.addClass('active');
      mainNav.addClass('menu-active');
    }

    menu.fadeToggle();
  });

  $(window).resize(function(){
    var w = $(window).width();

    if (w > 992 && menu.is(':hidden')) menu.removeAttr('style');
  });
});