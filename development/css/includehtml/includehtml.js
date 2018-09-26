
function textindent(text){
    var el = document.createElement('html');
    el.innerHTML = "<body>" + text + "</body>";
    //in
    var tags = el.getElementsByTagName("in");
    var sp = "&nbsp;";
    console.log(tags);
    for (var i=0;i<tags.length;i++){
        var tag = tags[i];
        var n = parseInt( tag.innerHTML );
        tag.innerHTML = sp.repeat(n*4);
        console.log(n);
    }
    //bin
    var tags = el.getElementsByTagName("bin");
    var br = "<br>";
    var sp = "&nbsp;";
    console.log(tags);
    for (var i=0;i<tags.length;i++){
        var tag = tags[i];
        var n = parseInt( tag.innerHTML );
        tag.innerHTML = br + sp.repeat(n*4);
        console.log(n);
    }
    //codebox
    var tags = el.getElementsByTagName("codebox");
    for (var i=0;i<tags.length;i++){
        var div = document.createElement('div');
        div.className = "code";
        var tag = tags[i];
        var text = tag.innerHTML;
        tag.innerHTML = "";
        div.innerHTML = text;
        tag.appendChild(div);
    }
    //codeout
    var tags = el.getElementsByTagName("codeout");
    for (var i=0;i<tags.length;i++){
        var div = document.createElement('div');
        div.className = "code";
        var tag = tags[i];
        var text = tag.innerHTML;
        tag.innerHTML = "";
        div.innerHTML = text;
        tag.appendChild(div);
    }
    return el.innerHTML;
}

function includeHTML() {
    var z, i, elmnt, file, xhttp;
    /*loop through a collection of all HTML elements:*/
    z = document.getElementsByTagName("*");
    for (i = 0; i < z.length; i++) {
      elmnt = z[i];
      /*search for elements with a certain atrribute:*/
      file = elmnt.getAttribute("w3-include-html");
      if (file) {
        /*make an HTTP request using the attribute value as the file name:*/
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4) {
            if (this.status == 200) {elmnt.innerHTML = textindent(this.responseText);}
            if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
            /*remove the attribute, and call this function once more:*/
            elmnt.removeAttribute("w3-include-html");
            includeHTML();
          }
        }
        xhttp.open("GET", file, true);
        xhttp.send();
        /*exit the function:*/
        return;
      }
    }
  }
includeHTML();