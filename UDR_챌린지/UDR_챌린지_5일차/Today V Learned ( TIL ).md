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

