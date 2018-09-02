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