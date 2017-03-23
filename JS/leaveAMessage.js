function sendMessage(){
    var email = document.getElementById("email").value;
    var text = document.getElementById("message").value;
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    } else {  // code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function() {
        if (this.readyState==4 && this.status==200) {
            retorno = this.responseText;
            document.getElementById("email").value = "";
            document.getElementById("message").value = "";
              $(".alert").hide().show('medium');
        }
        else{
        }
    }
    xmlhttp.open("GET","/PHP/leaveAMessage.php?q="+email+","+text,true);
    xmlhttp.send();
}
