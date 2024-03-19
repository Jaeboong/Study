# UDR Javascript 챌린지 5일차

## while

### while문이란 조건에 따라 특정 코드를 반복해서 수행시키는 함수이다.

- while문의 양식은 다음과 같다.

```javascript
while(/* 조건식 */){
  //실행될 코드
}
```

- break: while문 밖으로 빠져나간다.
- continue: 반복문의 제일 마지막으로 이동해 반복문을 계속 반복할 지 결정한다.

다음은 위 내용을 코드로 작성한 실습 코드이다.

## 실습코드

- lecture18.js

```javascript
console.log("Menu");
console.log("1. Ice Americano");
console.log("2. Caf0e Latte");
console.log("3. Cappuccino");
console.log("4. Tea");

var count = 0;

while(count < 3){
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
        count++;
}
```

실행 결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/2f2911d7-8c63-4e62-afcd-68cc6c99d67b)

이전 switch에서 사용했던 코드이며 해당 코드를 3번 반복하도록 while문을 작성하였다.

- lecture19.js

```javascript
var count = 0;

while(true){

    var ans;
    ans = parseInt(prompt("1+1=?"));
    if(ans != 2){
        console.log((++count) + "번 틀렸습니다. 다시 도전하세요.");
        continue;
    }

    ans = parseInt(prompt("7-3=?"));
    if(ans != 4){
        console.log((++count) + "번 틀렸습니다. 다시 도전하세요.");
        continue;
    }

    ans = parseInt(prompt("9*7=?"));
    if(ans != 63){
        console.log((++count) + "번 틀렸습니다. 다시 도전하세요.");
        continue;
    }

    break;
}

console.log("참 잘했습니다!");
```
간단한 산수를 계산하도록 하는 코드이며 틀리면 틀렸다는 console 메세지와 함께 1번부터 다시 풀도록 하는 프로그램이다.

틀릴 시 무한으로 반복된다.

3개를 모두 풀면 참 잘했다는 콘솔 메세지가 콘촐창에 출력된다.


## do while

do while은 while과 매우 유사하며 while의 변형이라고 볼 수 있다.

다음 while문의 양식과 do while문의 양식을 보겠다.

```javascript
var cond=false;
while(cond){
  console.log("실행 되지 않는 구문");
}

do{
  console.log("이 구문은 처음 한번은 무조건 실행된다.");
}while(cond);
```

위 console.log 코드와 같이 while문은 조건이 맞지 않으면 단 한번도 실행되지 않는다.

하지만 do while문은 일단 한번은 무조건 코드를 실행한다. 그리고 조건 여부에 따라 반복할지 말지를 결정한다.

이게 while과 do while의 결정적인 차이라고 볼 수 있다.

다음은 위 내용을 코드로 작성한 실습 코드이다.

## 실습 코드

- lecture20.js

```javascript
var cond = false;

while(cond){
    console.log("Do not Action");
}

do{
    console.log("처음은 무조건 실행된다.");
}while(cond)

var num = 0;

do{
    console.log(num);
    num++;
}while(num%3 != 0);
```

실행 결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/c210c0d7-65a6-4f0d-a16f-b3f32c2ddd7c)

조건이 false로 고정되어있어도 첫 번째는 무조건 실행되는 것을 볼 수 있다.

0 % 3은 0인데도 처음은 실행 된 후 1%3, 2%3은 조건에 부합해 실행되는것을 볼 수 있다.

## for

- for문은 while과 같은 반복문이다.
- for문은 주로 조건문이 배열과 함께 쓰이며 횟수가 정해져 있꺼나 배열을 사용하는 조건을 쓸 때 편리하다.
- while문은 무한푸르를 돌거나 특정 조건을 만족할 때 까지 반복해야 하는경우 편리하다.

for문의 양식은 다음과 같다.

```javascript
var array = [1,2,3,4,5,6,7,8,9,10];

for(var i = 0; i<array.lenght; i++){
  console.log(array[i]);
}
```

for문을 쓸 때는 초기화구문 + 조건문 + 업데이트구문 으로 구성되어 있다.

for문에서도 break문과 continue문이 있다.

break를 만나면 while과 동일하게 즉시 for문을 빠져나간다.

for문의 continue의 경우 실행문의 맨 끝으로 간 후 처음으로 돌아가 조건식을 확인하기 전에 업데이트 구문을 먼저 실행한 후 조건식을 검사 한 후 반복 실행할지 말지를 결정한다.

다음은 위 내용을 코드로 작성한 실습 코드이다.

## 실습 코드

- lecture21.js

```javascript
var cost = [85, 42, 37, 10, 22, 8, 15];
var total_cost=0;

for(var i=0; i<cost.length; i++){
    total_cost += cost[i];
}

console.log(total_cost)
```

결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/8ca189bf-d041-41e2-8299-bac48d74f6ed)

## for in

for문을 사용할 때 조건문에 객체의 각 속성에 접근하려면 for in 구문을 사용한다.

먼저 Object.keys() 함수에 대해 알고가자.

Object.keys()를 사용하면 객체의 속성의 이름을 배열로 반환해준다.

그리고 이렇게 얻어낸 객체의 속성을 반복문으로 돌려가며 객체의 속성 값에 접근하는데

for in 구문을 알고있다면 더 간단하게 할 수 있다.

아래 예시 코드와 함께 보겠다.

## 실습 코드

```javascript
var obj = {
    name: "object",
    weight: 30,
    isObject: true,
    arr: [1,2,3],
    obj: {property:1}
};

console.log("For 구문으로 object property 반복");

var property_list = Object.keys(obj);
console.log("Property List: ", property_list);

for(var i=0; i<property_list.length; i++){
    var propertyName = property_list[i];
    console.log("\t", propertyName, ": ", obj[propertyName]);
}

// 여기까지가 그냥 for문 사용

console.log("\n\n for in 구문으로 object property 반복하기");

for(var propertyName in obj){
    console.log("\t", propertyName, ": ", obj[propertyName]);
}
```

결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/6d1ac79e-f9f9-4ecf-bbf3-5085b3c7ea74)

for과 for in문 모두 결과가 같은 것을 볼 수 있다.

in은 for in 밖에서는 다음과 같이 활용할 수도 있다.

"age" in obj; 와 같이 in 을 사용하면 객체에 해당 속성이 있는지 알아볼 수 있다.

## 변수의 scope

- 변수의 scope는 fucntion의 scope를 따른다. 객체(변수)는 선언된 함수 안에서만 접근이 가능하다.

아래 실습 코드를 보겠다.

## 실습 코드

- lectrue23.js

```javascript
function a(){
    var v_a = "a";
    function b(){
        var v_b="b";
        console.log("b: ", typeof(v), typeof(v_a), typeof(v_b));
    }
    b();
    console.log("a: ", typeof(v), typeof(v_a), typeof(v_b));
}

var v = "v";
a();
console.log("o: ", typeof(v), typeof(v_a), typeof(v_b));
```

실행 결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/0ac55038-ad35-43a8-afee-73a168b364d3)

a는 v와 a에 접근이 가능하지만 b에는 접근하지 못하는 것을 볼 수 있다. b의 영역 밖이기 때문이다.

b는 바깥에 있는 v와 a는 물론 본인 함수안에있는 b까지 모두 접근이 가능한 것을 볼 수 있다.

제일 바깥에 있는 o는 a와 b에는 접근을 못하는 것을 볼 수 있다.

## 변수의 shadowing

### 변수의 Shadowing이란?

- 함수 안과 밖 모두에서 선언되었던 같은 이름의 변수를 사용하는 경우 안에서 변수를 사용할 때 밖 변수는 잠시 가려짐(shadowing) 이 되는 것을 말한다.
- shadowing이 되는 순간에는 동일 이름의 변수 값을 조정해도 shadowing된 변수는 영향을 받지 않는다.
- 함수에서 빠져나오려면 다시 가려졌던 변수에 접근할 수 있다.

### 사용 방법

- 함수 안에서만 값이 유지되어야 할 때 -> 함수 안에 따로 선언하고 사용
- 여러 함수에서 사용하고 값을 유지하는 경우 -> 해당 함수들을 포괄하는 곳에 변수를 선언하고 사용

다음은 위 내용을 코드로 작성한 실습 코드이다.

## 실솝 코드

-lecture24.js

```javascript
function shadowing_example(){
    var val = 0;
    console.log("F", val);
    val++;
}

var val = 0;
shadowing_example();
console.log("0", val);

function printTimesTable(a){
    for(var i=1; i<=9; i++){
        console.log(a+"*"+i+"="+a*i);
    }
}

for(var i=2; i<=9; i++){
    printTimesTable(i);
}
```

결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/5784618a-73c4-47d1-a9c7-ef584b0a132f)

함수의 안쪽과 바깥쪽 모두 같은 이름의 변수를 사용해 Shadowing이 잘 되어 코드가 잘 수행되었다.

## method, this

함수가 객체의 속성으로 들어가면 그 함수를 method라고 부른다.

this는 예약어 이다. this를 호출하면  함수가 어떤 객체에 바인드되어 호출됐는지 알려준다.

가장 바깥인 전역에 함수를 호출하게 되면 왼도우라는 객체가 출력되게 된다.

다음 예제 코드를 보며 설명하겠다.

## 실솝 코드

- lecture25.js

```javascript
function f(){
    console.log(this);
    console.log("f is called");
}


function setName(name){
    this.name=name;
}

var o = {name: "object", method:f, setName:setName};
var o2 = {name: "", setName:setName};

o.setName("object1");
o2.setName("object2");

console.log(o, o2);
```

결과는 다음과 같다.

![image](https://github.com/Jaeboong/Study/assets/158824294/ef08e8a3-0ebb-401a-9bba-be54b25c62c5)

object o1, o2의 이름이 object1, object2로 바뀐 것을 볼 수 있다.

this를 사용하여 해당 object들의 정보를 나타내는 것을 볼 수 있다.

## closure

- 클로저란? 함수와 함수가 선언될 때 environment로 구성된다.

다음 실습 코드를 보며 설명하겠다.

## 실습코드

- lectrue 26.js

```javascript
function makeCounterFunction(initVal){
    var count = initVal;
    function Increase(){
        count++;
        console.log(count);
    }
    return Increase;
}

var counter1 = makeCounterFunction(0);
var counter2 = makeCounterFunction(10);

counter1();
counter2();
```

결과는 다음과 같다.


![image](https://github.com/Jaeboong/Study/assets/158824294/c5041030-f267-4986-9fb7-02de81212d74)

count의 값이 1이었다가 11인 것을 볼 수 있다.

counter1 이라는 환경과 counter2라는 다른 환경으로 구성되어있기 때문이다.

counter1에서는 counter1의 구성요소에만 접근할 수 있으며 외부에서도 counter1의 count 변수에 직접적으로 접근할 수 없고 counter1을 통해 접근해야 한다.

따라서 count변수가 counter1의 환경과 counter2의 환경으로 따로 적용되어 위와 같은 결과가 출력되었다.

## 다른 실습 코드

```javascript
function solution(arr){
    var answer = 0;
    for(var i = 0; i<arr.length; i++){
        answer += arr[i];
    }
    answer = answer / arr.length;
    return answer;
}
```

위 코드는 정수를 담고있는 배열 arr의 평균값을 구하는 함수이다.

## 오늘 들은 강의

![](https://velog.velcdn.com/images/cbkjh0225/post/f6cf856a-fba0-4ed8-8bf4-5c4749ab82b1/image.png)
