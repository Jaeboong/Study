## 코틀린 공부 1주차

## Kotlin In ACTION 이라는 책을 1장부터 공부한 내용이다.

코틀린이란 무엇이여 왜 필요한가?


코틀린은 자바 플랫폼에서 사용되는 새로운 프로그래밍 언어이다.
자바에 비해 간결하고 실용적이며 자바 코드와의 호환성이 좋다.
주로 서버 개발, 안드로이드 앱 개발 분야에서 사용된다.

코틀린은 어떤 언어인가? 간단한 코드 예제를 보겠다.

```kotlin
data class Person(val name: String, val age: Int? = null)

fun main(args: Array<String>){
    val persons = listOf(Person("영희"), Person("철수", age=29))
    val oldest = persons.maxBy {it.age?:0}
    println("Oldest Person: $oldest")
}
```

세미콜론을 쓰지 않아도 되고 it 이라는 이름을 사용해 람다 식의 유일한 인자를 받는다.

## 2장에서 다루는 내용
1. 함수, 변수, 클래스, enum 프로퍼티 선언
2. 제어 구조
3. 스마트 캐스트
4. 예외 던지기와 예외 잡기
---
### 코틀린의 함수 선언은 fun
코틀린의 함수 선언할 때 fun 키워드를 사용한다.

```kotlin
  fun main()(args: Array<String>){
    println("Hello, World!")
  }
```

함수를 최상위 수준에 정의 가능, 반드시 클래스 안에 함수를 넣을 필요가 없다.

System.out.println 대신 println을 사용한다.

세미콜론을 붙이지 않아도 된다.

## 함수의 반환 형식

```kotlin
fun max(a: Int, b: Int): Int{
    return if(a>b) a else b
}

fun main(args: Array<String>){
    println(max(1,2))
}
```

위 코드와 같이 조건을 붙여 값을 반환할 수 있다.

## 식이 본문인 함수
```kotlin
fum max(a: Int, b: Int) : Int = if(a>b) a else b
```
위와같이 중괄호를 쓰지 않고 등호와 식으로 이루어진 함수를 식이 본문인 함수라고 부른다.

코틀린에서는 반환 타입을 생략할 수 있는데 생략하게 되면
```kotlin
fum max(a: Int, b: Int) = if(a>b) a else b
```
이렇게 더 간단해 질 수 있다.

코틀린에서는 사용자가 반환 타입을 적지 않아도 컴파일러가 함수를 분석해 반환타입을 결정한다.

## 변수
* val - 변경 불가능한 변수
* var - 변경 가능한 변수

```kotlin
val my_mind = "치킨 먹고싶다."
val reply = "살빼야지 뭔 치킨이야"
val price = 22000
```
타입을 생략할 수 있고
```kotlin
val price:Int = 22000
```
타입을 지정할 수도 있다.

val 변수는 단 한번 초기화 될 수 있다.

```kotlin
val message: String
if(canPerformOperation()){
  message = "Success"
else{
  message = "Failed"
}
```
```kotlin
val languages = arrayListOf("Java")
languages.add("Kotlin")
```
val 참조 자체는 불변일지라도 그 참조를 가리키는 객체의 내부 값은 변경될 수 있다.

## 문자열 템플릿

```kotlin
fun main(args: Array<String>){
    val name = if (args.size>0) args[0] else "Kotlin"
    println("Hello, $name!")
}
```
name이라는 변수를 선언한 후 그 다음줄에서 변수를 사용했다. 코틀린도 다른 스크립트 언어와 비슷하게 변수를 문자열 안에 사용할 수 있다.

이렇게 사용할 수도 있다.

```kotlin
fun main(args: Array<String>){
    println("Hello, ${if(args.size > 0) args[0] else "Kotlin"}!")
}
```

## 코틀린에서 클래스 사용하기

```kotlin
val person = Person("Bob", true)
println(person.name)
println(person.isMarried)
```

코틀린에서는 new 키워드를 사용하지 않고 생성자를 호출한다.

프로퍼티 이름을 직접 사용해도 코틀린이 자동으로 게터를 호출해준다.

코틀린에서는 게터와 세터를 알아서 호출해줘서 편리하다.

게터와 세터를 따로 코드를 쓰지 않으면 알아서 호출하지만 커스텀 게터와 세터를 작성하면 해당 게터와 세터를 사용할 수 있다.

커스텀 접근자는 다음과 같이 만들 수 있다.

```kotlin
class Rectangle(val height: Int, val width: Int){`
    val isSqaure: Boolean
        get(){
            return height == width
        }
}
```

## 패키지

```kotlin


