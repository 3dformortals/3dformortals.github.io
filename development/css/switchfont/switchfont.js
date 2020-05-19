function switchfont(){
    document.body.style.fontFamily = "RBM";
    document.body.style.fontSize = "16";
    Array.from(document.body.querySelectorAll("code"), e => e.style.fontFamily="RBM");
    var b=document.getElementById("fontswitcherbutton");
    document.body.removeChild(b);
}
var b = document.createElement("button");
b.textContent = "RobotoMono-Regular.ttf";
b.type= "button";
b.id="fontswitcherbutton";
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