function registerVisit(){
   if (window.XMLHttpRequest) {
      // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
   } else {  // code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
   xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
         this.responseText;
      }
   }
   xmlhttp.open("GET","/PHP/registerVisit.php",true);
   xmlhttp.send();
}
function numberOfVisit(){
   if (window.XMLHttpRequest) {
      // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
   } else {  // code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
   xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
         document.getElementById("visitNumber").innerHTML = this.responseText;
      }
   }
   xmlhttp.open("GET","/PHP/numberOfVisit.php",true);
   xmlhttp.send();
}
numberOfVisit();
registerVisit();
