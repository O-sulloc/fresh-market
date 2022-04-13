const updateBtn = document.getElementById("updateBtn");
const cartNum = document.getElementById("cartNum");
const no = document.getElementById("no");
const id = document.getElementById("id");
const count = document.getElementById("count");

updateBtn.addEventListener("click", function(){
    console.log(cartNum.value);
    console.log(no.value);
    console.log(id.value);
    console.log(count.value);

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./list");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("cartNum="+cartNum.value+"&no="+no.value+"&id="+id.value+"&count="+count.value);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            
        }
    }
});