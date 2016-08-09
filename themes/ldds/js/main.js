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

var tl = new TimelineLite();

//.panels-wrapper
//#art-panel
//#designer-panel
//#ld-panel
//.social-icons
//#fb-link
//#instagram-link
//#snapchat-link


// Two sides hit the middle and bounce a few times
// TweenLite.from(artPanel, 2.5, { ease: Bounce.easeOut, x: -1000 });
// TweenLite.from(designerPanel, 0.75, {y: 1000, delay: 0.5, ease:Power4.easeOut});
// TweenLite.from(ldPanel, 2.5, { ease: Bounce.easeOut, x: 1000 });
// TweenLite.from(socialIcons, 1, {y: 1000, delay: 0.5});

// General ease in (sides slow, middle fast)
TweenLite.from(artPanel, 2.5, { ease:Power4.easeOut, x: -1000 });
TweenLite.from(designerPanel, 1, {y: 1000, delay: 0.5, ease:Power4.easeOut});
TweenLite.from(ldPanel, 2.5, { ease:Power4.easeOut, x: 1000 });
TweenLite.from(socialIcons, 1, {y: 1000, delay: 0.5});

// Time Line ease in like magazines being strung together on a coffee table
// tl
//     .from(artPanel, 1, { ease:Power4.easeOut, x: -1000 })
//     .from(designerPanel, 1, {y: 1000, ease:Power4.easeOut}, '-=0.15')
//     .from(ldPanel, 1, { ease:Power4.easeOut, x: 1000 }, '-=0.15')
//     .from(socialIcons, 0.25, {y: 1000}, '-=0');


function artStart() {
    console.log('started the art Panel animation');
}

function artUpdate() {
    console.log('art Panel animation in progress...');
}

function artComplete() {
    console.log('completed the art Panel animation');
}


// })(jQuery);