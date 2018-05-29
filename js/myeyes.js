function switchfont(){
    // document.body.style.fontFamily = "RBM";
    document.body.style.color = "hsla(129, 50%, 82%,0.5)";
    Array.from(document.body.querySelectorAll("code"), e => e.style.fontFamily="RBM");
    var b=document.getElementById("myeyes");
    document.body.removeChild(b);
}
var b = document.createElement("button");
b.textContent = "myeyes >8O";
b.type= "button";
b.id="myeyes";
b.onclick = switchfont;
document.body.appendChild(b);