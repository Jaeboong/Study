# Git? Github?

- 내 소스 코드 저장(버전 관리)
- 소스코드 공유
- 협업 공간

# Git 이용하기 5분 컽

--------------------------------

## 저장소 만들기
- Repository: 저장소, 프로젝트

![image](https://github.com/Jaeboong/Study/assets/158824294/8560cf0c-3471-47c7-bb45-2b4d9c49bb18)

New를 클릭!

![image](https://github.com/Jaeboong/Study/assets/158824294/fc9781ae-86d8-49a2-8e71-89bd435d479c)


저장소 생성 완료

![image](https://github.com/Jaeboong/Study/assets/158824294/4d512b43-e18e-4c7f-8238-49651b82e18a)


## 보통 어떻게 활용하는가?

![image](https://github.com/Jaeboong/Study/assets/158824294/b98860aa-ff85-44d2-a848-ba9d0c9d59d5)

예를 들어 협업을 하는데 이런 코드를 가지고 협업을 한다고 가정하면

이 환경을 내 컴퓨터로 가져와야 함

그리고 내 컴퓨터로 작업 환경을 가져오고 코드를 수정했을 때 다이렉트로 원본 코드에 수정을 하면 안됨

따라서 Branch 를 만들어 코드를 수정하고 확인을 받은 후 원본 코드로 병합한다.

## 환경 세팅

저는 이렇게 미리 README.md 파일을 하나 만들어 두었습니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/92779da9-cfec-4ca9-bbfd-c3d3cf61f3da)

저장소를 새로 만들고 README.md를 추가하지 않으면 이런 Quick setup 이 나옵니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/b67a5377-43a6-4836-902b-34c09463a9ec)

이걸 그대로 복사 붙여넣기 하셔도 되고

저처럼 따로 업로드 시킬 파일이 존재하면 아래와 같이 쓰셔도 됩니다. commit과 remote의 주소는 본인의 내용에 맞게 쓰시면 됩니다.

```
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/Jaeboong/Session.git
git push -u origin master
```

![image](https://github.com/Jaeboong/Study/assets/158824294/0830d231-e419-4ba4-aeca-152a665b4c95)

위와같이 뜨면 성공입니다.

### pull, push

- push는 local에서 remote(github)로 commit 이력을 업로드하는 것
- pull은 remote(github)에서 local로 commit 이력을 다운로드하는 것

![image](https://github.com/Jaeboong/Study/assets/158824294/950ac7d1-98e7-4d5d-ae2d-28fc30f7bd72)

이렇게 변경 사항이 생겼을 때 git add .(모든 변경사항을 add)을 하고 git status를 하면 변경 사항을 볼 수 있다.

그리고 commit, push를 진행해주면 된다.

![image](https://github.com/Jaeboong/Study/assets/158824294/9dcdeb70-7c99-499d-9f58-4d236504ce4a)

pull은 그냥 git pull해주면 된다.


## branch 생성

![image](https://github.com/Jaeboong/Study/assets/158824294/e587353f-83c0-4576-8247-3da7374e2384)

코드에 있는 main으로부터 KimJaehwan이라는 branch를 생성하면 

![image](https://github.com/Jaeboong/Study/assets/158824294/f434f946-b779-45d0-8d72-011dc65440cc)

KimJaehwan branch에도 똑같은 파일들이 생성이 됩니다. 이 파일들을 수정해서 완벽하게 완성되었을 때 main에 병합시킵니다.

그럼 어떻게 이 브랜치를 내 로컬로 가져오느냐?

## Clone

Clone을 사용해 환경을 가져옵니다.

Visual Code를 예시로 설명하겠습니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/c957ec5b-5cb9-4c19-a1db-60183a59a9c0)

본인이 원하는 폴더를 열어줍니다.

저는 Session 이라는 폴더를 열었고 여기서 Terminal을 열어줍니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/876be1ba-aa2b-4ae3-a06e-d25c773475e6)

Clone은 아주 쉽습니다.

그냥

```
git clone https://github.com/Jaeboong/Session
```

이라고 치면 됩니다. 그럼 알아서 remote도 되어있습니다.

github2라는 새 폴더를 열었습니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/77edee39-555e-48a6-b379-e845311782ba)

clone을 하면 폴더 째로 생기기 때문에 git 명령어를 사용하려면 

```
cd Session
```

폴더를 이동해주어야 합니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/7b707f64-c7fb-49f2-9679-7576c478acf5)

마지막으로

아까 우리는 branch를 새로 만들어 원본의 소스코드를 건드리지 않아야 한다고 했는데 이렇게 되면 원본 코드를 건드리게 된다.

그럼 push를 master가 아닌 Kimjaehwan에게 해야하는데

git push origin Kimjaehwan을 쓰면 오류가 뜬다.

![image](https://github.com/Jaeboong/Study/assets/158824294/d56b97f7-0fa6-419f-abc7-1c5d783b3479)

현재 branch를 확인하면 master밖에 없다고 뜬다.

![image](https://github.com/Jaeboong/Study/assets/158824294/6c7c2e0a-1129-4e80-8a99-ee961be55cf1)

remote의 브랜치는 Kimjaehwan이 뜬다.

clone을 하면 모든 정보를 가져오긴 하지만 branch까지 가져오진 않는다.

따라서 브랜치를 생성해주고 브랜치 전환을 해주어야 한다.

```
git branch Kimjaehwan
git checkout Kimjaehwan
git add .
git commit -m "Third Commit"
git push origin Kimjaehwan
```

이렇게 하면 remote의 Kimjaehwan branch에서도 적용이 되어있습니다.

![image](https://github.com/Jaeboong/Study/assets/158824294/8a5373fd-1da5-4545-bcc7-2ac5828f6111)
























