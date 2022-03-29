const checkAll = document.getElementById("checkAll");
const check = document.getElementsByClassName("form-check-input me-1");
const btn = document.getElementById("btn");

const pw = document.getElementById("pw");
const pwResult  = document.getElementById("pwResult");
const pw2 = document.getElementById("pw2");
const pwResult2  = document.getElementById("pwResult2");
const id = document.getElementById("id");
const idResult = document.getElementById("idResult");
const name1 = document.getElementById("name");
const nameResult = document.getElementById("nameResult");
const address = document.getElementById("address");
const addressResult = document.getElementById("addressResult");
const email = document.getElementById("email");
const emailResult = document.getElementById("emailResult");

const frm = document.getElementById("frm");

let idCheck = false; //id 입력됐으면 true; 안됐으면 false;
let pwCheck = false;
let nameCheck = false;
let emailCheck = false;
let addressCheck = false;

btn.addEventListener("click", function(){
    
    let c = true;
    for(ch of check){
        if(!ch.checked){
            c=false;
        }
    }

    if(idCheck && pwCheck && nameCheck && emailCheck && addressCheck && c){
        frm.submit();
    }else if(!idCheck){
        alert("아이디를 입력해주세요.");
    }else if(!pwCheck){
        alert("비밀번호를 확인해주세요.");
    }else if(!nameCheck){
        alert("이름을 입력해주세요.");
    }else if(!emailCheck){
        alert("이메일을 입력해주세요.");
    }else if(!addressCheck){
        alert("주소를 입력해주세요");
        console.log(addressCheck);
    }else if(c==false){
        alert("필수 약관에 동의해주세요.");
    }
    
});

id.addEventListener("blur", function(){
    let result = id.value;
    
    if(result ==''){
        idResult.innerHTML='필수 정보입니다.';
        idCheck=false;
    }else{
        idResult.innerHTML='';
        idCheck=true;
    }
 
});

name1.addEventListener("blur", function(){
    let result = name1.value;
 
    if(result ==''){
        nameResult.innerHTML='필수 정보입니다.';
        nameCheck=false;
    }else{
        nameResult.innerHTML='';
        nameCheck=true;
    }
 
});

address.addEventListener("blur", function(){
    let result = address.value;
 
    if(result ==''){
        addressResult.innerHTML='필수 정보입니다.';
        addressCheck=false;
    }else{
        addressResult.innerHTML='';
        addressCheck=true;
    }
 
});

email.addEventListener("blur", function(){
    let result = email.value;
 
    if(result ==''){
        emailResult.innerHTML='필수 정보입니다.';
        emailCheck=false;
    }else{
        emailResult.innerHTML='';
        emailCheck=true;
    }
 
});

pw.addEventListener("keyup", function(){
    let length = pw.value.length;
    let message = '8~16자에 해당하는 비밀번호를 입력해주세요.';
    if(length>=8 && length<=16){
        message = '사용할 수 있는 비밀번호입니다.';
    }
    pwResult.innerHTML=message;
});

pw2.addEventListener("blur", function(){
    let pw1 = pw.value;
    let pw3 = pw2.value;
    let message = "비밀번호가 일치하지 않습니다.";

    if(pw1 == pw3){
        message="일치";
        pwCheck=true;
    }else{
        pwCheck=false;
    }
    pwResult2.innerHTML=message;
 
});

checkAll.addEventListener('click', function(){
    for(c of check){
        c.checked=checkAll.checked;
    }
});

for(ch of check){
    ch.addEventListener('click', function(){
        let final = true;
        for(c of check){
            if(!c.checked){
                final=false;
            }
        }
        checkAll.checked=final;
    })

};
