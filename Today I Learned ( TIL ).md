# 언더독 JS 챌린지 1일차

## Javascript의 특징

- HTML + CSS와 함께 사용해 client side 웹 프로그래밍 작성이 가능하다.

#### Client side 웹 프로그래밍이란?

우리가 사용하는 크롬, 사파리, 오페라, 엣지 등등 웹 브라우저는 Client side의 애플리케이션이다. 이러한 애플리케이션은 웹 페이지(HTML, Javascript)를 서버로 부터 받아온 후에 크롬과 같은 Client side 애플이케이션에 의해 클라이언트에서 실행 하도록 한다.

정확히는 프로토콜로부터 코드화 되어있는 문서를 서버로부터 받아와 이를 웹 서버 또는 앱 서버에서 해석하고 이에 대한 결과물을 클라이언트 사이드에서 사용한다는 개념이다.

* 참고 출처: https://nitro04.blogspot.com/2020/06/web-sever-side-client-side-1.html


## 개발환경 구축

코드를 작성할 수 있는 에디터와 브라우저가 필요하다.

영상에서는 서브라임 텍스트 에디터와 크롬 브라우저를 사용하는데 나는 visual studio code를 사용하므로 에디터는 visual studio code를 사용하였다.

## 간단한 Javascript 프로그래밍 실습 해보기

Javascript 코드를 작성한다.
- lecture01.js

```javascript
alert("Hello Javascript");
```

해당 코드를 로드하는 HTML 파일을 작성한다.
- index.html

```html
<html>
    <head> 
        <meta charset="utf-8">
        <script src = "lecture01.js"></script>
    </head>
    <body>
        This is a basic HTML page
    </body>
</html>
```

alert를 쓰게되면

![image](https://github.com/Jaeboong/Study/assets/158824294/b3fb0262-ec82-44d9-9a21-171166468cf8)

위 사진과 같이 브라우저 창에 알림이 뜬다.

## Developer Console

크롬 브라우저를 사용해 Developer Console을 사용하겠다.

크롬 브라우저에서 개발자 도구 창을 띄우려면 F12나 (ctrl + shift + i) 를 누르면 창이 나온다.

개발자 도구 창에서 Console 부분을 보면 코드를 작성할 수 있게 되어있다.

Console 창에서 위에서 썼었던

alert("Hello Javascript");나 console.log("Hello World"); 를 작성하면 js 파일에서 썼었던대로 똑같이 실행된다.

HTML과 js 파일을 이용해 다시 코드를 작성해보겠다.

- lecture02.js

```javascript
console.log("Hello developer console");
console.log("2");
console.log("3");
```

- lecture02.html

```html
<html>
    <head> 
        <meta charset="utf-8">
        <script src = "lecture02.js"></script>
    </head>
    <body>
        This is a basic HTML page
    </body>
</html>
```

![image](https://github.com/Jaeboong/Study/assets/158824294/3edbb2b8-8ad1-4a39-a6b3-2105f60e5406)

console.log("Hello developer console");를 사용했지만 변화가 없다.

console.log("Hello developer console");를 이용해 작성한 것은 아래와 같이 개발자 도구를 열면 있는 console에만 출력이 된다.

![image](https://github.com/Jaeboong/Study/assets/158824294/ba6aebab-ce42-4683-b63b-4006d1fdf7d8)
