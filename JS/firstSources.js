function loadjscssfile(filename, filetype) {
    if (filetype == "js") { //if filename is a external JavaScript file
        // alert('called');
        var fileref = document.createElement('script')
        fileref.setAttribute("type", "text/javascript")
        fileref.setAttribute("src", filename)
    }
    else if (filetype == "css") { //if filename is an external CSS file
        var fileref = document.createElement("link")
        fileref.setAttribute("rel", "stylesheet")
        fileref.setAttribute("type", "text/css")
        fileref.setAttribute("href", filename)
    }
    if (typeof fileref != "undefined"){
        document.getElementsByTagName("head")[0].appendChild(fileref)
    }
}
//
//SOURCE FILES
loadjscssfile("/CSS/body.css","css");
loadjscssfile("/CSS/animations.css","css");
loadjscssfile("/JS/headerMenu.js","js");

$(window).scroll(function(){
    var a = 170;
    var pos = $(window).scrollTop();
    if(pos > a) {
        $("#navbar").css({
            position: 'fixed',
            top:  '2rem'
        });
    }
    else {
        $("#navbar").css({
            position: 'relative'
        });
    }
});
