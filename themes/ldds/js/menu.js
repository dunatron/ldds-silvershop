/**
 * Created by Heath on 18/07/16.
 */
function openNav() {
    document.getElementById("lddsSidenav").style.width = "250px";
    $(".fa-bars").addClass("hamburger-fade");
}

function closeNav() {
    document.getElementById("lddsSidenav").style.width = "0";
    $(".fa-bars").removeClass("hamburger-fade");
}

// var artpanel = document.getElementById("art-panel");
// var artpaneltext = document.getElementById("art-panel-text");
// var designpanel = document.getElementById("designer-panel");
// var designpaneltext = document.getElementById("designer-panel-text");
// var ldpanel = document.getElementById("ld-panel");
// var ldpaneltext = document.getElementById("ld-panel-text");
//
// $(artpanel).hover(function(){
//     $(this).addClass('show-panel');
//     $(artpaneltext).addClass('show-panel');
// }, function(){
//     $(this).removeClass('show-panel');
//     $(artpaneltext).removeClass('show-panel');
// });
//
// $(designpanel).hover(function(){
//     $(this).addClass('show-panel');
//     $(designpaneltext).addClass('show-panel');
// }, function(){
//     $(this).removeClass('show-panel');
//     $(designpaneltext).removeClass('show-panel');
// });
//
// $(ldpanel).hover(function(){
//     $(this).addClass('show-panel');
//     $(ldpaneltext).addClass('show-panel');
// }, function(){
//     $(this).removeClass('show-panel');
//     $(ldpaneltext).removeClass('show-panel');
// });
