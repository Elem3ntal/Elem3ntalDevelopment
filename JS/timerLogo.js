var statusText=1;
changeText();
function changeText(){
    if (statusText==1){
        document.getElementById("TheConsole").innerHTML=": ~$_";
        statusText=0;
    }
    else{
        document.getElementById("TheConsole").innerHTML=": ~$";
        statusText=1;
    }
    setTimeout(changeText,500);
}
