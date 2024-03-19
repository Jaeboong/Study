# UDR Javascript 챌린지 4일차

## 배열

값을 저장할 수 있는 공간으로 엔덱스를 통해 배열에 접근이 가능하다.

빈 배열은 var arr = []; 와 같은 형식으로 초기화 시킬 수 있다.

배열의 인덱스에는 어떤 자료형이든 저장될 수 있다.

배열의 인덱스에 접근할 때 값이 없는 인덱스에 접근하면 undefined가 나온다.

## 실습 코드

다음은 위 내용을 코드로 작성한 실습코드이다.

- lecture14.js

```javascript
var arr = [];

var arr2= [1,2,3,4,5];

console.log(arr2[3]);

var mixed_arr =[1, true, 3.14, "string", {name:"object"}];

console.log(mixed_arr[0]);
console.log(mixed_arr[1]);
console.log(mixed_arr[2]);
console.log(mixed_arr[3]);
console.log(mixed_arr[4]);
console.log(mixed_arr.length);
```

![image](https://github.com/Jaeboong/Study/assets/158824294/1e4d4fda-c689-4a49-9899-3f6ee100007a)

결과는 위와 같다.

## 배열 사용하기

배열에 엘리스먼트를 추가하고 삭제하는 방법에 대해 알아보았다.

기능들은 다음과 같다.

### 배열에 엘리먼트 추가/삭제
- .push(element) -> 배열의 뒷부분에 엘리먼트 추가
- .pop(): 배열의 뒤에서부터 엘리먼트를 하나 삭제한 후 값을 리턴
- .shift(): 배열의 앞에서 엘리먼틀르 하나 삭제한 후 리턴
- .unshift(element): 배열의 앞에 엘리먼트를 추가
- .reverse(): 배열의 앞 뒤를 뒤집어서 리턴
- .sort(): 배열을 정렬하여 출력

### 배열 붙이기, 검색하기
- arr1.concat(arr2): 배열 arr1에 arr2를 붙인다.
- arr.indexOf(element): arr에서 element가 있는 첫 위치를 검색하여 반환한다.
- arr.lastIndexOf(element): arr에서 element가 있는 맨 뒤의 위치를 검색하여 반환한다.

### 문자열 split 함수

- 문자열을 separator을 기준으로 나눠서 각각 담아 배열을 반환하는 함수이다.

- 다음과 같은 형식으로 사용한다. arr= str.split("separator");

다음은 위 내용을 코드로 작성한 실습 코드이다.

- lecture15.js

```javascript
arr1 = [1,2,3], arr2 = [4,5,6];

console.log(arr1.sort(), arr2.sort());

arr1.push(4);
arr2.pop();
arr1.shift();
arr1.unshift(0);
arr1.reverse();

console.log(arr1.sort(), arr2.sort());

arr1.concat(arr2);
console.log(arr1.indexOf(2));
console.log(arr1.lastIndexOf(4));

var str = "1,2,3,4,5";
arr = str.split(",");

console.log(arr.sort());
```

![image](https://github.com/Jaeboong/Study/assets/158824294/f29d216b-f06b-43c1-95f7-f587f2650371)

결과는 다음과 같다.

## 주석

- 주석은 코드에 대한 설명을 적는 기능으로 프로그램의 동작과는 무관하며 프로그램이 코드를 해석할 때 제외되는 부분이다.

- 한줄 주석은 // 두 개의 슬래시 이후에 작성하면 된다

- 여러줄 주석은 /* 으로 시작해서 */ 으로 끝나면 된다.

### 한줄 주석

```javascript
alert("이 코드는 실행됨"); // 이 부분은 주석
```

### 여러줄 주석

```javascript
/* 주
석
주
석
*/

console.log("여기서부터는 실행된다");
```

위와 같이 사용한다.

이전에 사용했던 코드인 lecture15.js 코드에 주석을 넣어보면 다음과 같다.

- lecture16.js

```javascript
arr1 = [1,2,3], arr2 = [4,5,6]; // 주석주석

console.log(arr1.sort(), arr2.sort()); //주석주석주석

arr1.push(4);
arr2.pop();
arr1.shift();
arr1.unshift(0);
arr1.reverse();

console.log(arr1.sort(), arr2.sort());

/*
주
arr1.concat(arr2);
console.log(arr1.indexOf(2));
console.log(arr1.lastIndexOf(4));

var str = "1,2,3,4,5";
arr = str.split(",");

console.log(arr.sort());
석
*/
```

![image](https://github.com/Jaeboong/Study/assets/158824294/809fc9ad-2239-4744-a533-0a868a3328b9)

결과는 다음과 같다.

주석 처리한 부분은 컴파일 되지 않고있는 것을 볼 수 있다.

## if문

- 조건문으로 불리며 조건을 만족할 시 if()의 괄호 안 코드를 실행시키는  기능을 한다.

- if(a) 를 만족하지 않는 반대의 경우를 실행시킬 때는 else를 사용한다.

- 조건을 if(a)를 만족시키지는 않지만 다른 조건을 세울 때는 else if(b) 구문을 사용한다.


위 내용을 실습 코드로 작성해보면 다음과 같다.

- lecture17.js

```javascript
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
```

![image](https://github.com/Jaeboong/Study/assets/158824294/aa0a000d-044f-4691-9613-79fb19af11d8)

실행 결과는 다음과 같다.

## Switch

- Switch문은 if문과 유사하며 조건에 따라 프로그램의 특정 코드를 실행시키는 기능이다. if와 다른점은 Switch는 case로 경우의 수를 나누어 해당 경우에 부합하는 경우 특정 코드를 실행 시킨다.
- default는 if문에서의 else와 같은 역할을 하며 case는 else if와 유사하다고 이해하면 편리하다.

### break
- break구문을 만나면 switch문을 빠져나오게 되며 더 이상 switch문 안의 코드를 실행하지 않게된다.
- break를 사용하지 않으면 switch문의 마지막 case까지 코드를 실행한 후 switch문에서 빠져나오게 된다.


위 내용을 코드로 작성한 실습 코드이다.

## 실습 코드

```javascript
console.log("Menu");
console.log("1. Ice Americano");
console.log("2. Cafe Latte");
console.log("3. Cappuccino");
console.log("4. Tea");

var choice = parseInt(prompt("메뉴를 선택해 주세요"));

console.log(choice+"번 메뉴를 선택하셨습니다.");

switch(choice){
    case 1:
        console.log("아이스 아메리카노는 1500원 입니다.");
        break;
    case 2:
        console.log("카페 라떼는 1800원 입니다.");
        break;
    case 3:
        console.log("카푸치노는 2000원 입니다.");
    case 4:
        console.log("홍차는 1300원 입니다.");
        break;
    default:
        console.log("죄송합니다. 그런 메뉴는 없습니다.");
        break;
}
```

- switch문 실습

```javascript
function solution( month ){
    switch( choice ){
        case 2:
            console.log("28");
            break;
        case 4:
            console.log("30");
            break;
        case 6:
            console.log("30");
            break;
        case 9:
            console.log("30");
            break;
        case 11:
            console.log("30");
            break;
        default:
            console.log("31");
            break;

}
    return 31;
}
```

![image](https://github.com/Jaeboong/Study/assets/158824294/d46c48c3-e333-4837-8200-675909bf62b2)

결과는 다음과 같다.

## 오늘 들은 강의

![](https://velog.velcdn.com/images/cbkjh0225/post/bec06b12-f864-44ac-a16a-5424dd226191/image.png)

