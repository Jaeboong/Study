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
## String

String 타입에 대해 배웠다.

String은 문자열타입으로 작은 따옴표나 큰 따옴표를 씌워 만들 수 있다.


- escape character? 문자열 내에서 특수한 기능을 수행하는 문자이다. 해당 문자들을 사용할 때는 역슬래시(\)를 활용한다.
   * 줄바꿈: \n
   * 따옴표: \'
   * 큰따옴표: \"
   * 역슬래시: \\

다음은 문자열을 이용한 예제 코드이다.

- lecture06.js

```javascript
var a='문자열은 따옴표로 둘러싸면 됩니다.';
var b="큰따옴표로도 문자열을 표현할 수 있습니다.";

var c="큰따옴표 문자열에는 따옴표 '를 사용할 수 있습니다.";
var d='따옴표 문자열에는 큰따옴표 "를 사용할 수 있습니다.';

var e="따옴표를 쓰고 싶다면 \'이렇게\' 사용하면 됩니다. 마찬가지로 \"큰따옴표\"도 쓸 수 있습니다.";
var f='따옴표를 쓰고 싶다면 \'이렇게\' 사용하면 됩니다. 마찬가지로 \"큰따옴표\"도 쓸 수 있습니다.';

var g="\\ 문자를 쓰고 싶다면 역슬래시를 두번 씁니다.";

var h="문자열에서 줄바꿈을 하고 싶다면, \n 역슬래시n을 사용합니다.";

var i=a+b;

var j="abcde";

console.log(a)
console.log(b)
console.log(c)
console.log(d)
console.log(e)
console.log(f)
console.log(g)
console.log(h)
console.log(i)
console.log(j)
```

실행하면 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/a7c5cab0-0a14-4343-97dc-012d6533c7ae)

## Object (객체)

객체는 number, string, boolean 등 단순 자료형보다 더 복잡한 자료를 표현할 때 사용한다.

Ex) 사람을 표현할 때 그 사람의 속성을 표현해야 하는데 이 속성은 그사람으 이름, 키, 나이 등등 여러가지로 복잡하므로 이러한 정보를 객체로 다룬다.

객체는 자료형과 똑같이 var (객체 이름) 으로 선언하고 {}(중괄호) 안에 객체 속성을 입력한다.

객체의 속성에 접근할 때는 객체이름.속성 으로 접근하거나 대괄호를 사용하여 객체이름["속성이름"] 과 같이 접근한다.

다음은 위 언급했던 것들을 작성한 예제코드이다.

```javascript
var empty_obj = {};
console.log(typeof(empty_obj));

var man = {name: "Hong gil dong", age: 20, height:188};
console.log(man.name);
console.log(man.age);
console.log(man["height"]);
console.log(man);
```

## Undefined와 null

- Undefined: 시스템에서 어떤 변수나 속성이 정의되지 않은 경우 표현하기 위해 사용한다.
  * 선언은 했으나 초기화 되지 않은 변수
  * 객체의 정의되지 않은 속성의 타입인 값

- null: 개발자가 명시적으로 비어있는 상태를 나타낼 때 사용
  * typeof의 결과는 object이며 값은 null이다.

### 실습 예제코드

- lecture08.js

```javascript
var uninitialized_var;
console.log("print uninitialized_var: ", uninitialized_var);
console.log("print uninitialized_var type: ", typeof(uninitialized_var));

var obj = {x:1, y:2};
console.log("print obj.z: ", obj.z);

var null_var = null;
console.log("print null_var type: ", typeof(null_var));
```
결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/96e2e560-45b3-4bad-894d-af9ca8c353c0)


