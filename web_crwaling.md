### unique

```
ids.1 <- ids[[1]]
ids.1 <- unique(ids.1)
```

ids[[1]] 을 사용해 리스트에서 첫 번째 요소 추출 후 ids.1 변수에 할당
ids.1에 중복값을 제거해 유일값만 남긴다.

### '%>%' 연산자란?

Chain operation으로 중간과정의 데이터를 저장할 필요 없이 일련의 전처리과정을 도와주는 연산자이다.

### mutate, str_replace

```
df <- df %>% 
  mutate(strings = str_replace_all(strings, "\"", "")) %>% # 따옴표 제거
  separate(strings, into = c( "id", "iso"), sep = ",") 
```

mutate와 str_replace_all을 사용

- mutate는 데이터 프레임 자료형에 새로운 파생 column을 만드는 함수이다.
- mutate 함수는 같은 이름으로 여러 패키지에 존재하지만 dplyr 패키지의 mutate 함수를 많이 사용한다.

mutate 사용 예시
```
mutate(dataframe, 새로운 column명 = 기존 columns을 조합한 수식)
```


- str_replace_all은 문자의 치환과 삭제에 사용된다.

다음은 예시코드이다.

```
str_replace('apple','p','*')         # 처음으로 매칭하는 값만 치환 
```

결과는 a*ple이다.

str_replace_all을 사용하면 p가 하나가 아닌 모든 p가 치환된다.

치환할 곳에 아무것도 쓰지 않고 ""와같이 두면 삭제가 된다.


