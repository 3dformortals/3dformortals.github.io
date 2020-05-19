function switchfont(){
    // document.body.style.fontFamily = "RBM";
    document.body.style.color = "hsla(129, 50%, 82%,0.5)";
    Array.from(document.body.querySelectorAll("a"), e => e.style.color="hsla(180, 50%, 82%,0.5)");
    Array.from(document.body.querySelectorAll("p1"), e => e.style.color="hsla(180, 50%, 82%,0.5)");
    var b=document.getElementById("myeyes");
    document.body.removeChild(b);
}
var b = document.createElement("button");
b.textContent = "myeyes >8O";
b.type= "button";
b.id="myeyes";
b.onclick = switchfont;

b.style.background = "hsla(129, 50%, 0%,1)";
b.style.color = "hsla(129, 50%, 82%,0.8)";
b.style.border = "1px solid hsla(180, 50%, 82%,0.8)";
b.style.borderTop = "0px solid hsla(180, 50%, 82%,0.8)";
b.style.borderRadius = "0px 0px 25px 25px";
b.style.paddingLeft = "25px";
b.style.paddingRight = "25px";
b.style.paddingBottom = "10px";
b.style.marginTop = "-10px";

document.body.appendChild(b);