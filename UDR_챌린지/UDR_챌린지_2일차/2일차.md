# 언더독 JS 챌린지 2일차

## Number

-  Number란?
  * 숫자를 나타내는 자료형
  * 64bit로 실수와 정수 모두 표현이 가능하다. (범위 밖의 숫자도 작동은 하나 정확도가 떨어짐)
  * 비정상이거나 표현할 수 없는 범위의 수는 Nan(not a number), Infinity로 표기한다

## 실습 예제

javascript에서 prompt 함수를 사용해 값을 입력받으면 숫자로 입력해도 String으로 값을 받는다.

이를 parseInt, parseFloat 명령어를 사용해 Number type으로 바꿀 수 있다.

- lecture05.html

```html
<html>
    <head> 
        <meta charset="utf-8">
        <script src = "lecture05.js"></script>
    </head>
    <body>
        This is a basic HTML page
    </body>
</html>
```

- lecture05.javascript

```javascript
var height=prompt("키를 입력해 주세요");
console.log(height, typeof(height));

var height_int = parseInt(height);
console.log(height_int, typeof(height_int));

var height_float = parseFloat(height);
console.log(height_float, typeof(height_float));

var a = 1/0;
console.log(a);
```

결과는 아래와 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/9dafaf87-5f22-4200-b0e1-88b848557e1e)

parseInt의 경우 정수부분까지만 출력을 하고 parseFloat은 실수부분까지 모두 출력한다.

숫자부분 뒤의 문자열은 출력하지 않는다.

1/0 같은 무리수의 경우 Infinity로 표시한다.

![image](https://github.com/Jaeboong/Study/assets/158824294/54035a8f-334c-4c70-afb7-430983df0022)

prompt창에 문자부터 입력하면 Nan으로 표시한다.

## 실습코드

```javascript
var str="3.141592는 Pi의 근사값입니다."
var pi_int = parseInt(float);

console.log("pi_int의 값은", pi_int, "입니다." );
```

```javascript
var str="3.141592는 Pi의 근사값입니다."
var pi_float = parseFloat(str);

console.log("pi_float의 값은", pi_float, "입니다." );
```
