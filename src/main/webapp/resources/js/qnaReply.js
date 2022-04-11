const reply = document.querySelector("#reply");
const num = document.querySelector("#num");
const id = document.querySelector("#id");
const contents = document.querySelector("#contents");
const replyResult = document.querySelector("#replyResult");
const del = document.querySelector(".del");


// delete
replyResult.addEventListener("click", function(event){

    if(event.target.classList.contains('del')){
        console.log("del click");
      let replyNum = event.target.getAttribute("data-num");
        console.log(replyNum);  

        const xhttp = new XMLHttpRequest();
        xhttp.open("POST", "../qnaReply/delete");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
        xhttp.send("replyNum="+replyNum);
        xhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                console.log(this.responseText);
                if(this.responseText.trim()=='1');
                alert('삭제성공');
                getList();
            }else{
                alert('삭제실패');
            }
        }
    }
});

    //list
    getList();

    function getList(){
        const xhttp = new XMLHttpRequest();
        xhttp.open("GET", "../qnaReply/list?num="+num.value);
        xhttp.send();
        xhttp.onreadystatechange=function(){
        if(this.readyState == 4 && this.status == 200){
            console.log(this.responseText);
            replyResult.innerHTML = this.responseText.trim();
        }    
        }

    }

// add
reply.addEventListener("click", function(){

    console.log(num.value);
    console.log(id.value);
    console.log(contents.value);

   // 1. JS에서 요청 객체 생성(준비)
   const xhttp = new XMLHttpRequest();

   // 요청 정보 입력
   //open("method형식", "URL주소")
  xhttp.open("POST", "../qnaReply/add");

   // 요청 header 정보
   xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

   //요청 정보
   xhttp.send("num="+num.value+"&id="+id.value+"&contents="+contents.value);

   //응답처리
    xhttp.onreadystatechange=function(){
        if(this.readyState == 4 && this.status == 200){
            console.log(this.responseText);
            let result = this.responseText.trim();
            if(result == '1'){
                alert('댓글이 등록 되었습니다.');
            }else{
                alert('댓글 등록이 실패했습니다.')
            }
        }
    }

   
});