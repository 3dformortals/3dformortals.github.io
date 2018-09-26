function indent(){
    var tags = document.getElementsByTagName("in");
    var sp = "&nbsp;";
    console.log(tags);
    for (var i=0;i<tags.length;i++){
        var tag = tags[i];
        var n = parseInt( tag.innerHTML );
        tag.innerHTML = sp.repeat(n*4);
        console.log(n);
    }
}
indent();

function brindent(){
    var tags = document.getElementsByTagName("bin");
    var br = "<br>";
    var sp = "&nbsp;";
    console.log(tags);
    for (var i=0;i<tags.length;i++){
        var tag = tags[i];
        var n = parseInt( tag.innerHTML );
        tag.innerHTML = br + sp.repeat(n*4);
        console.log(n);
    }
}
brindent();

function codeboxdiv(){
    var tags = document.getElementsByTagName("codebox");
    for (var i=0;i<tags.length;i++){
        var div = document.createElement('div');
        div.className = "code";
        var tag = tags[i];
        var text = tag.innerHTML;
        tag.innerHTML = "";
        div.innerHTML = text;
        tag.appendChild(div);
    }
}
codeboxdiv();

function codeoutdiv(){
    var tags = document.getElementsByTagName("codeout");
    for (var i=0;i<tags.length;i++){
        var div = document.createElement('div');
        div.className = "code";
        var tag = tags[i];
        var text = tag.innerHTML;
        tag.innerHTML = "";
        div.innerHTML = text;
        tag.appendChild(div);
    }
}
codeoutdiv();