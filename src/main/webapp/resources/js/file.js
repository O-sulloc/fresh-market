const fileAdd = document.getElementById("fileAdd");
const fileResult = document.getElementById("fileResult");
const del = document.getElementsByClassName("input-group-text");
//del = 사진삭제
const fileDeleteBtn = document.querySelectorAll(".fileDeleteBtn");
const files = document.querySelector("#files");

let count = 0;
let num = 0;

fileAdd.addEventListener("click", function(){
    count++;

    if(count>6){
        alert('파일 등록은 6개까지 가능합니다.');
        count--;
        return;
    }
    let div = document.createElement("div");
    div.className="input-group mb-3";
    div.setAttribute("id", "del"+num);
    
    let file = document.createElement("input");
    file.setAttribute("type", "file");
    file.setAttribute("name", "files");
    file.className="form-control";
    file.setAttribute("id", "inputGroupFile02");
    
    let label = document.createElement("label");
    label.setAttribute("type", "button");
    label.className="input-group-text";
    label.setAttribute("for", "inputGroupFile01");
    label.innerHTML="파일 삭제";
    label.setAttribute("data-num", "del"+num);
    
    div.append(file);
    div.append(label);
    fileResult.append(div);
    
    num++;
});

fileResult.addEventListener("click", function(event){
    let cn = event.target;
    
    if(cn.classList.contains('input-group-text')){
        let delNum = cn.getAttribute("data-num");
        document.getElementById(delNum).remove();
        count--;
    }
});

files.addEventListener("click", function(event){
    if(event.target.classList.contains("fileDeleteBtn")){
        let check = confirm("삭제하시겠습니까?");
        if(!check){
            return;
        };

        let fileNum = event.target.getAttribute("data-fileNum");
        
        let xhttp = new XMLHttpRequest();
        xhttp.open("POST", "./fileDelete");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("fileNum="+fileNum);

        xhttp.onreadystatechange=function(){
            if(this.readyState == 4 && this.status == 200){
                console.log(this.responseText);
                let result = this.responseText.trim();
                if(result=='1'){
                    console.log('file delete');
                    event.target.parentNode.remove();
                }
            }
        }
    }
});
