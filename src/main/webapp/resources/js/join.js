const joinForm = document.getElementById("joinForm");
const regBtn=document.getElementById("regBtn") //회원가입 버튼

const userName = document.getElementById("name");
let nameCheck=false;

const id = document.getElementById("id");
const idGuide = document.getElementById("idGuide")
const idCase1=document.getElementById("idCase1") //id 8글자 이상
let idCheck=false; //id 유효성 확인 결과 (false = 만족못함)

const pw = document.getElementById("pw");
const pwGuide = document.getElementById("pwGuide")
const pwCase1=document.getElementById("pwCase1") //pw 8글자 이상
let pwCheck=false; //pw 유효성 확인 결과 (false = 만족못함)

const pw2 = document.getElementById("pw2");
const pw2Guide = document.getElementById("pw2Guide")
const pw2Case1=document.getElementById("pw2Case1") //pw 일치 확인
let pw2Check=false; //비밀번호 일치 확인(false=불일치)

const email = document.getElementById("email");
let emailCheck=false; //email 유효성 확인 결과 (false = 만족못함)

const address = document.getElementById("address");
let addressCheck=false; //address 유효성 확인 결과 (false = 만족못함)

//name 검사
userName.addEventListener("blur", function(){
    let userNameResult = userName.value;

    if(userNameResult ==''){
        nameCheck=false; //name 비어있으면 false
    }else{
        nameCheck=true; //name 기입했으면 true
    }
});

//id span 보이기
function idInfo(){
    if(idGuide.style.display=='none'){
        //아이디 조건 설명해주는 span 태그가 접혀있으면
		idGuide.style.display = 'block'
        //펼쳐줘
	}
}

//id 검사
id.addEventListener("keyup", function(){
    let idLength=id.value.length;
    
    if(idLength>=8){
        //id 8글자 이상이면 초록색으로 표시해줘
        idCase1.style.color ='#0f851a';
        //idcheck true (통과)
        idCheck=true;
    }else{
        //아니면 빨강색으로 경고
        idCase1.style.color ='red';
        idCheck=false;
    }
});

//pw span 보이기
function pwInfo(){
    if(pwGuide.style.display=='none'){
        //pw 조건 설명해주는 span 태그가 접혀있으면
		pwGuide.style.display = 'block'
        //펼쳐줘
	}
}

//pw 검사
pw.addEventListener("keyup", function(){
    let pwLength=pw.value.length;
    
    if(pwLength>=8 && pwLength<=16){
        //pw 8~16자리이면 초록색으로 표시해줘
        pwCase1.style.color ='#0f851a';
        //pwcheck true (통과)
        pwCheck=true;
    }else{
        //아니면 빨강색으로 경고
        pwCase1.style.color ='red';
        pwCheck=false;
    }
});

//pw2 span 보이기
function pw2Info(){
    if(pw2Guide.style.display=='none'){
        //pw 조건 설명해주는 span 태그가 접혀있으면
		pw2Guide.style.display = 'block'
        //펼쳐줘
	}
}

//pw2 일치 확인
pw2.addEventListener("keyup", function(){
    let pw1 = pw.value;
    let pwConfirm = pw2.value;
    
    if(pw1 == pwConfirm){
        //비밀번호가 일치한다면
        pw2Case1.style.color ='#0f851a';
        //pwc2heck true (통과)
        pw2Check=true;
    }else{
        //불일치하면 빨강색으로 경고
        pw2Case1.style.color ='red';
        pw2Check=false;
    }
});

//email 검사
email.addEventListener("blur", function(){
    let emailResult = email.value;

    if(emailResult ==''){
        emailCheck=false; //email 비어있으면 false
    }else{
        emailCheck=true; //email 기입했으면 true
    }
});

//address 검사
address.addEventListener("blur", function(){
    let addressResult = address.value;

    if(addressResult ==''){
        addressCheck=false; //address 비어있으면 false
    }else{
        addressCheck=true; //address 기입했으면 true
    }
});

regBtn.addEventListener("click", function(){
    if(nameCheck && idCheck && pwCheck && pw2Check && emailCheck && addressCheck){
        joinForm.submit();
    }else if(!nameCheck){
        alert("이름을 확인해주세요.");
        userName.focus();
    }else if(!idCheck){
        alert("아이디를 확인해주세요.");
        id.focus();
    }else if(!pwCheck){
        alert("비밀번호를 확인해주세요.");
        pw.focus();
    }else if(!pw2Check){
        alert("비밀번호가 일치하지 않습니다.");
        pw2.focus();
    }else if(!emailCheck){
        alert("이메일을 확인해주세요.");
        email.focus();
    }else if(!addressCheck){
        alert("주소를 확인해주세요.");
        address.focus();
    }
});