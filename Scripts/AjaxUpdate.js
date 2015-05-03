function AjaxUpdate(url) {
    var xmlhttp;
    var chatitems, user, dt, cnt;
    var msg = document.getElementById("chatcontent");
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            chatitems = xmlhttp.responseXML.documentElement.getElementsByTagName("chatitem");
            for (i = 0; i < chatitems.length; i++) {
                user = chatitems[i].getAttribute("username");
                dt = chatitems[i].getAttribute("datetime");
                cnt = chatitems[i].firstChild.nodeValue;
                msg.value += user + " " + dt + "\n" + cnt + "\n";
            }
        }
    }
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}