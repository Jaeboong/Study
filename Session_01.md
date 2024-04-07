# 아래 수식이 틀린 이유는??

```java
> 0.1 + 1.1 == 1.2
> false
```

# RAM

![image](https://github.com/Jaeboong/Study/assets/158824294/ae904f40-f470-412a-9f5c-a03c090d3a6b)

- RAM은 0과 1이 아주 많이 들어있는 메모리이다.

- 컴퓨터는 계산을 할 때 이 메모리를 이용해 숫자를 이진수로 만들어 계산을 한다.

![image](https://github.com/Jaeboong/Study/assets/158824294/eabc78b2-f9cc-4e41-b19a-ebf994dd63e7)


# 5.125 저장

5.125 -> 101.001(2진수)

부동소수점 : 부호(sign), 지수(exponent), 가수(mantissa)
  - 부호: 0 -> 양수, 1 -> 음수
  - 지수: 2의 지수
  - 가수: 소수점 이하의 수

정규화 -> 2진수 변환 -> 1.xxxxx 형태로 지수 조정, 소수점 자리를 왼쪽으로 n번 옮기면 2^n 을 곱해준다. 오른쪽으로 가면 반대로

지수형식 부호화를 통해 

5.125 -> 1.01001 x 2^2 로 변환

![image](https://github.com/Jaeboong/Study/assets/158824294/547b35e7-4dbd-4363-9f98-a69656b8eb65)

이것이 바로 컴퓨터가 소수를 저장하는 방식이다.

# 순환소수

0.125와 같은 10진수는 2진법으로 변환하면 0.001로 깔끔하게 맞아 떨어진다.

하지만 0.1과 같은 10진수를 2진수로 변환하면 무한히 순환하는 0.0001100110011001100.... 순환소수가 된다.

![image](https://github.com/Jaeboong/Study/assets/158824294/44fe70cc-327c-451b-ae45-dfd322a62108)

컴퓨터가 숫자를 계산할 때 사용할 수 있는 비트는 한정적이기 때문에 다음과 같은 문제가 발생한다.

![image](https://github.com/Jaeboong/Study/assets/158824294/0b449dbe-d3bc-4267-8b11-a41a1b5d7471)

이러한 오차 때문에 0.1 + 1.1 == 1.2 라는 수식에 False라는 결과가 나오게 된다.

# 실제 피해사례

![image](https://github.com/Jaeboong/Study/assets/158824294/ac92e266-9ef7-4d05-b2fd-8c75438a22a0)

걸프전 때 미군이 Patriot Missile Defense를 운용하던 중 미사일을 요격에 실패하여 많은 사람이 사망하는 사례가 있었음

해당 기계는 24비트를 사용하여 계산을 하는데 해당 기기를 100시간 가동하면 0.34초 오차가 발생하게 된다.

이런 이유때문에 미사일 요격에 실패하였고 많은 사람이 사망했다.

# 해결방법

1. 정확한 계산은 정수화 시켜서

2. 반올림 문법 활용 -> Math.pow

3. double 자료형 -> 좀 더 정확 오차 줄어듦

4. javascript의 toFixed() 메서드 사용
   * 입력받은 숫자를 매개변수만큼 반올림하여 String으로 반환





