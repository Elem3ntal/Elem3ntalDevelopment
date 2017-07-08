var ua = navigator.userAgent.toLowerCase();
var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");
if(isAndroid) {
    var link = document.getElementById("whatsapp");
    link.setAttribute("href", "intent://send/+56999402264#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end");
}
