/**
 * Created by Heath on 2/08/16.
 */
// (function($) {

    // JS code goes here
    var logo = $('.logo-link'),
    hamburger = document.getElementsByClassName("fa-bars"),
    navicons = document.getElementsByClassName("nav-icons"),
    panelsWrapper = document.getElementsByClassName("panels-wrapper"),
    artPanel = document.getElementById("art-panel"),
    designerPanel = document.getElementById("designer-panel"),
    ldPanel = document.getElementById("ld-panel"),
    socialIcons = document.getElementsByClassName("social-icons"),
    fbLink = document.getElementById("fb-link"),
    instagramLink = document.getElementById("instagram-link"),
    snapchatLink = document.getElementById("snapchat-link");

    //.panels-wrapper
    //#art-panel
    //#designer-panel
    //#ld-panel
    //.social-icons
    //#fb-link
    //#instagram-link
    //#snapchat-link




    TweenLite.from(panelsWrapper, 1, {y: -200});
    TweenLite.from(artPanel, 1.5, {y: -200});
    TweenLite.from(designerPanel, 1, {y: -200});
    TweenLite.from(socialIcons, 1, {y: 1000});


// })(jQuery);