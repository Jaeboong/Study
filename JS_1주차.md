## 1주차
- 개발 환경 구축
- 자바스크립트 문법 1
    * 변수, 조건문, 반복문, 리스트
- HTML 문법
    * 생활코딩 웹1 공부
- 구구단 구현1

## 자바스크립트로 할 수 있는 것들
### 자바스크립트는 HTML을 제어할 수 있다.
### 첫 번째 프로그램
ex1.html 을 작성하고 크롬 브라우저로 연다.

```html
<!DOCTYPE html>
<html>
<body>
<h2>자바스크립트 연습장</h2>
<p id="demo">지금은 몇시인가요?</p>
</body>
</html>
```

### 개발자 도구 - 콘솔에서 아래 명령을 실행
```html
var demo = document.getElementById('demo');
demo.innerHTML = Date();
```

두 번째 프로그램

```html
demo.style.color = "red";
demo.style.background = "black";
```

세 번째 프로그램

```html
var demo = document.getElementById('demo');
var size = 10;
function big() {
    demo.style.fontSize = size + "px";
    size = size + 1;            
}
var tid = setInterval(big, 100);
```

## 자료형이란?

어떤 종류의 데이터를 사용하는 것이지 컴퓨터에게 알려주는 것

자료형마다 사용 가능한 연산자(Operator)를 따로 가지고 있습니다!

자료형이 같아야 연산을 할 수 있습니다!

### 자료형의 종류

```javascript
Number 
String
Boolean
Null
Undefined
```

그리고 하나더 객체가 있습니다.

```javascript
Object
Number type
```

정수와 실수 모두 Number 타입입니다.

```javascript
5;
3.0;
-4.8;
```

숫자의 연산자

4칙연산, 괄호, 나머지 등이 있습니다.

+ - / * ( ) %

### 문자열

```javascript
"I am String";
"Hello " + "world";
```

문자열에도 +가 됩니다. (참고로 문자열은 "Immutable" 특징을 가집니다!)

### typeof 연산자

데이터유형을 알려주는 중요한 연산자!

```javascript
typeof 5;
typeof -4.8;
typeof "5";
```

생각해 보기

```javascript
5 + 4;
5 + "4";
5 * "4";
```

### 불리언

```javascript
true;
false;
5 > 3;
5 == 5;
5 > 5;
```

### 논리연산자

논리 연산자에는 &&, ||, ! 등이 있다.

```javascript
true;
!true;
true && false;
true || false;
```

## 변수란?
데이터(값)를 담을 수 있는 그릇입니다. 데이터들은 컴퓨터의 메모리의 어딘가에 저장되는데 그 값들을 구별짓고 재사용하기 위해서 변수를 씁니다.

### 변수 선언하기
변수를 사용하기 위해서는 먼저 선언이 필요합니다.

```javascript
var a;
```

### 변수와 대입 연산자

변수에 값을 넣고 싶을 때 = 연산자를 사용한다! =은 수학에서의 같다가 아니라 변수에 값을 할당할 때 사용하는 대입 연산자입니다. 같다는 ===을 주로 사용합니다.

### 변수 사용하기
여러 가지 방식이 있습니다. 차근차근 이해해 봅시다.

```javascript
var a = 7;
var b = 10;
var c = a + b; //17
```

아래 내용이 어렵다는 분들이 많습니다. 어떤 뜻일까요?

```javascript
b = b + 1;
```

### 변수 이름 잘 짓기

변수의 이름은 매우 중요합니다. 일반적으로 소문자로 시작, 영어, 숫자, _를 주로 사용합니다. 카멜 케이스나 스네이크 케이스 표기법을 사용

* 카멜 케이스

numPeople

* 스네이크 케이스

num_people

### 문자열의 길이 구하기

```javascript
var a = "hello"
a.length;
```

### 문자열 간단히 조작하기

```javascript
var a = "KheLLo"
a[0];
a[1] = "H"; //안 됨
a.slice(1,4); // 문자열 자르기
a.toUpperCase(); // 다 소문자
a.toLowerCase(); // 다 대문자
// 변수는 다루고 나면 다른 문자에 담아주는 것이 좋다
```

### undefined, null, NaN
undefined: 값이 정의되지 않았다. null: 값이 비어있다. NaN: 값이 아니다. === 계산불가능


### console.log()

개발자 콘솔에 뭔가를 찍어주는 메서드입니다.

```javascript
var a = 1;
var b = "더하기";
var c = 2;
console.log(a + " " + b + " " + c + " = " + a + c);
```

### alert() 과 prompt() 사용해 보기

```javascript
var ans = prompt("How are you?");
alert(ans); // 입력한 프롬트를 창에 출력
```

ans라는 변수는 prompt 창 안에 넣은 값이 String 타입으로 저장이 된다.
타입 변경 시

```javascript
ans2 = Number(n);
```

이렇게 타입 변경을 해주면 된다.
