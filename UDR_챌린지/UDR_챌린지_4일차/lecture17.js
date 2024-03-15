a = true, b = false;
c = 2, d = 4;

console.log(a, b, c, d);

if(a){console.log("true")}
else{
    console.log("false");
}
if(b){console.log("true")}
else{
    console.log("false");
}

if(b){console.log("true")}
else if(c>d){console.log("second true")}
else if(d>c){console.log("third true")}
else{
    console.log("false");
}