## 산술 연산자

산술 연산자는 A 연산자 B의 형태로 사용하며 피연산자는 변수나 숫자가 될 수 있다.

* \+ 더하기
* \- 빼기
* \* 곱하기
* \/ 나누기
* \% 나머지

### 단항 연산자

하나의 피연산자(A)를 가진 연산자로 연산자 A, A 연산자 형태로 사용한다.

- \-A -> A x -1

### 증감연산자

변수의 값을 1씩 증가시키거나 감소시킬 수 있다.

- A++ 는 A = A+1

- A-- 는 A = A-1과 같다


### Math 명령어

- Math.pow(A, B): A의 B승
- Math.sqrt(A): A의 제곱근
- Math.random(): 0~1사이의 임의의 난수를 발생

## 실습 코드

- lecture09.js

```javascript
a = 4, b = 5;

console.log("a:", a, " b:", b);
console.log("a+b=",a+b);
console.log("a-b=",a-b);
console.log("a*b=",a*b);
console.log("a/b=",a/b);
console.log("a%b=",a%b);

console.log("a++=",a++);
console.log("a--=",b--);

console.log("a^2=",Math.pow(a, b));
console.log("sqrt(a)=",Math.sqrt(b));
```

결과는 다음과 같다

![image](https://github.com/Jaeboong/Study/assets/158824294/49eb3c96-0623-440e-9d6f-eb53ded7d4f9)

## 함수

### 함수의 정의
- 호출에 의해 여러번 실행할 수 있는 코드 블럭을 말한다.
  * 반복되는 코드 감소
  * 코드의 개발 및 수정 용이

함수는 일반적으로 호출하면 파라미터 값을 받아 결과값을 반환한다.

함수의 일반적인 형태와 여러가지 예제는 다음과 같다

## 실습 코드

```javascript
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
```

결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/63b93e6e-49ea-4d29-8bf1-c8601462cb50)


sum 함수의 경우 1과 2를 파라미터 값으로 넣어 1+2인 3이 출력되었다.

return_test함수의 경우 리턴값이 없으므로 undefined로 표기되었다.

함수는 반드시 결과값을 리턴하는 용도가 아닌 함수 안에 console.log()함수를 사용하거나 print()로 어떤 값을 출력하는 등의 기능을 수행하는 용도로도 사용된다.

## 관계연산자

### Relational operator, 관계연산자

두 표현식 A, B의 관계를 비교하는 이항연산자와 관게에 따라 boolean 타입의 true, false로 표현된다.

관계연산자의 종류는 다음과 같다

- <    ex) A < B   A는 B보다 작다
- \>   ex) A > B   A는 B보다 크다
- <=   ex) A <= B  A는 B보다 작거나 같다.
- \>=  ex) A >= B  A는 B보다 크거나 같다.
- ==   ex) A == B  A와 B는 같은가? 같은경우 참 다르면 거짓
- !=   ex) A != B  A와 B는 다른가? 다른경우 참 같으면 참

### Logical operator, 논리연산자

- 두 boolean 피연산자에 대해 연산한다.

  * AND(&&) 연산자

- 두 피연산자가 모두 true인 경우 true를 반환한다.

  * 하나라도 false인 경우 false를 반환한다.

- OR(||) 연산자

  * 두 연산자중 한개만 true여도 true를 반환한다.

  * 둘 다 false여야 false를 반환한다.

- NOT(!) 연산자

  * 피연산자의 결과를 반대로 만드는 연산자이다. true -> false / false -> true
 
  ## 실습 코드

  다음은 위 설명한 관계연산자, 논리연산자를 실습한 코드이다.

  - lecture11.js
 
 ```javascript
 a = 5, b = 7, c = 5, d = 6;

console.log("a:", a, "b:", b, "c:", c, "d:", d);
console.log("a < b? ", a<b);
console.log("a > b? ", a>b);
console.log("a <= b? ", a<=b);
console.log("d >= b? ", d>=b);
console.log("a == c? ", a==c);
console.log("a != b? ", a!=b);

e = true, f = false, g = true, h = false;

console.log("e:", e, "f:", f, "g:", g, "h:", h);

console.log("e&&f: ",e&&f);
console.log("e&&g: ",e&&g);
console.log("e||f: ",e||f);
console.log("h||f: ",h||f);
console.log("a: ",a);
console.log("!a: ",!a);
console.log("!f: ",!f);
```

결과는 다음과 같다.
 
![image](https://github.com/Jaeboong/Study/assets/158824294/5670b396-d636-4b7a-89d6-6e6e5c9a6c11)

숫자 5인 a를 !a로 출력하니 false가 나왔다.

a를 0으로 수정한 후 !a로 출력하니 true가 나왔다.

0이 false를 나타내고 0이 아닌 수를 true로 표기하기 때문인 것 같다.

## 연산자 우선순위

- 수학에서도 연산에 우선순위가 있는 것 처럼 javascript에서도 연산자에 우선순위가 존재한다.

우선순위 순으로 연산자를 정리하면 다음과 같다

- ++, --
- !
- \*, /, %
- \+, -
- <, <=, >, >=
- ==, !=
- &&
- ||

연산자에 우선순위가 존재하지만 여전히 괄호 안 수식이 연산순위가 높다.

그 밖에도 괄호는 코드의 가독성을 향상시켜주고, 연산자 우선순위 실수를 방지해준다.

## String 이어붙이기

- 문자열 길이 -> 문자열의 .length 속성을 이용한다.
  * str.length
 
- 문자열 붙이기 -> .concat 함수를 사용 or (+) 연산자 사용
  * str1.concat(str2)
  * str1+str2

## 실습 코드

다음은 위 내용의 실습코드이다.

- lecture12.js

```javascript
str1 = "Hello ", str2 = "javascript ", str3 = "is fun!";
num1 = 123, num2 = 456;

console.log(str1.concat(str2));
console.log(str1.concat(str2).concat(str3));

console.log(str1+str2+str3);
console.log(str1+num1);
console.log(str1+num1+str2+num2);

console.log(str1.length);
console.log((str1+str2).length);
```

![image](https://github.com/Jaeboong/Study/assets/158824294/ae59572b-087c-43ce-b563-ef757e07c023)

concat을 활용할 때 뒤에 .concat을 계속 이어붙여 1개뿐만 아니라 더 이어 붙일 수 있다.

+를 활용할 때 역시 계속 이어붙일 수 있다.

number type를 String타입과 +로 붙이면 String 타입처럼 붙여져서 나온다.
