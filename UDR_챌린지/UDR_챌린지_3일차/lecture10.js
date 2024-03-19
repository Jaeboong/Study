function 함수이름(인자1, 인자2){
    /*
    실행할 코드
    */
    return 결과값;
}

function sum(arg1, arg2){
    var result = arg1 + arg2;
    return result;
}

function print(message){
    console.log("print function in");
    console.log(message);
}

function return_test(){
    return;
    console.log("실행되지 않는 코드");
}

console.log(sum(1, 2));
console.log(return_test());

msg = "Hello Function!";
print(msg);