# Fresh Market
> 웹개발의 기본 중의 기본, 쇼핑몰 프로젝트입니다.

![index](https://user-images.githubusercontent.com/96342941/229505956-0c2c3041-d66f-469a-b5f7-b07c3568764b.png)

---

## 목차
- [들어가며](#들어가며)
    - [프로젝트 소개](#1-프로젝트-소개)
    - [프로젝트 기능](#2-프로젝트-기능)
    - [사용 기술](#3-사용-기술)
        - [백엔드](#3-1-백엔드)
        - [프론트엔드](#3-2-프론트엔드)
    - [실행 화면](#4-실행-화면)


- [구조 및 설계](#구조-및-설계)
    - [DB 설계](#1-db-설계)
    - [API 설계](#2-api-설계)

- [마치며](#마치며)
    - [프로젝트 보완사항](#1-프로젝트-보완사항)
    - [후기](#2-후기)

---

## 들어가며
### 1. 프로젝트 소개

**Fresh Market**은 **Spring + MyBatis** 기반으로 구현된 신선 식품 쇼핑몰 프로젝트입니다.
이 프로젝트는 쇼핑몰 서비스의 핵심인 **'회원', '상품', '장바구니'** 기능을 개발하고 서비스를 구축해보는 것에 목적을 두고 있습니다.

### 2. 프로젝트 기능

프로젝트의 주요 기능은 다음과 같습니다.
- **회원 -** 회원가입 시 유효성 검사 및 중복 검사, 회원정보 수정
- **상품 -** CRUD 기능, 카테고리 별 상품 조회, 페이징 처리, 검색 기능
- **장바구니 -** CRUD 기능

### 3. 사용 기술

#### 3-1 백엔드

##### 주요 프레임워크 / 라이브러리
- Java 11
- Spring
- mybatis
- jquery
- jsp
- servlet
- JUnit 4.12

##### DataBase
- MySQL 8.0.18

#### 3-2 프론트엔드
- Html/Css
- JavaScript
- Bootstrap


### 4. 실행 화면

<details open>
<summary>홈 화면</summary>

![index_g](https://user-images.githubusercontent.com/96342941/229507366-bf463d03-a917-42f6-b3fe-2b029c368369.gif)

최저가, 판매량 순위로 상품 노출. 상품을 클릭하면 상세 페이지로 이동한다.

</details>
<br/> 


<details>
<summary>회원 관리</summary>

**1. 회원 가입**

![join](https://user-images.githubusercontent.com/96342941/229508429-143d1c75-2e42-45d4-b6d4-d7cc018d45d5.gif)
![스크린샷 2022-12-07 오후 7 58 26](https://user-images.githubusercontent.com/96342941/229509312-636ff512-07f8-416e-9a28-e99039e98c69.png)

유효성 검사, 카카오 주소 API 활용


**2. 로그인**

![login](https://user-images.githubusercontent.com/96342941/229508979-0d9ce644-1b90-47fd-8016-4cce4835c427.png)


**3. 마이페이지 정보 수정**

![mypage](https://user-images.githubusercontent.com/96342941/229509679-091c59c9-63f2-45f3-9c04-8bcdd364cd03.gif)


</details>
<br/> 


<details>
<summary>상품</summary>

**1. 상품 리스트**

![list](https://user-images.githubusercontent.com/96342941/229510574-182cb8d6-0821-483d-939f-9bf20ca7d37d.gif)
![cate](https://user-images.githubusercontent.com/96342941/229510603-be74982d-e34a-4025-ad51-9d7b4c2c70af.gif)

카테고리 별로 상품을 조회할 수 있도록 하였습니다.

**2. 상품 상세 페이지**

![productdetail](https://user-images.githubusercontent.com/96342941/229511155-de52b7f8-9d92-4160-910c-a4960c350caf.gif)

상품 사진과 설명을 볼 수 있습니다.

</details>
<br/> 


<details>
<summary>장바구니</summary>

**1. 장바구니**

![cart](https://user-images.githubusercontent.com/96342941/229511444-ac2562ca-7d36-4b8b-a0ab-85dbeb0aa78b.gif)

수량 조절이 가능합니다. 담긴 상품 금액에 따라 배송비가 적용되도록 하였습니다.    

</details>
<br/> 

## 구조 및 설계

### 1. DB 설계
![erd](https://user-images.githubusercontent.com/96342941/229513042-85909d21-0af2-4c5a-b3cd-52df995ed931.png)

### 2. API 설계
포스트맨 도큐먼트

## 마치며
### 1. 프로젝트 보완사항

* Spring security, JWT 적용
* OAuth 2.0 소셜 로그인 기능 기능 추가
* 주문 및 결제 기능
* 상품 리뷰 기능
* 쿠폰 발급 및 적용 기능

### 2. 후기

기획, 개발까지 경험해 본 인생 첫 프로젝트로, 개인적으로 애정이 가면서도 동시에 아쉬운 점, 보완할 점이 많이 보이는 프로젝트입니다.
개발을 하면서 배웠던 것만 그대로 적용하는 것이 아니라, 레퍼런스를 참고하고 따로 공부했던 것이 가장 기억에 남습니다.
특히, 프론트 전반을 맡으며, 다양한 쇼핑몰 웹사이트를 참고했는데, 이 경험으로 UI/UX 디자인에 대해 고민하고 적용해보는 계기가 되었습니다.
또한, 회원가입 기능을 개발하며 카카오 주소찾기 API를 적용해보았는데, 이를 통해 쉽게 기능을 확장할 수 있었고, 이미 구현된 기능을 가져와 사용한다는 점에서 개발 시간이 단축되기도 했습니다.
이 경험으로 다양한 API를 사용해보는 데 더욱 자신감을 갖게 되었고, API 문서를 해석하며, 나뿐만 아니라 타인의 이해를 위해서도 문서화가 중요하다는 점을 깨달았습니다.
