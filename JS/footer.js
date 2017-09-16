function screenRes(){
  return screen.width + "x" + screen.height;
}
function currentSize(){
  return $(window).width()+"x"+$(window).height();
}
function IPofVisit(){
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("IPvisit").innerHTML = this.responseText;
    }
  };
  xmlhttp.open("GET", "/PHP/IP.php", true);
  xmlhttp.send();
}
function getLocation(){
  xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("locationFooter").innerHTML = this.responseText;
    }
  };
  xmlhttp.open("GET", "/PHP/currentIP.php", true);
  xmlhttp.send();
}
$(document).ready(function(){
  IPofVisit();
  getLocation();
  document.getElementById("navResolution").innerHTML=currentSize();
  document.getElementById("screenRes").innerHTML=screenRes();
});
$(window).resize(function() {
  document.getElementById("navResolution").innerHTML=currentSize();
});
