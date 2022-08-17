const updateCount = document.getElementById("updateCount");
const cartNum = document.getElementById("cartNum");
const productNum = document.getElementById("productNum");
const id = document.getElementById("id");
const count = document.getElementById("count");

updateCount.addEventListener("click", function(){
    console.log(cartNum.value);
    console.log(productNum.value);
    console.log(id.value);
    console.log(count.value);

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./update");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    xhttp.send("cartNum="+cartNum.value+"&productNum="+productNum.value+"&id="+id.value+"&count="+count.value);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){

        }
    }
});

// updateCount.addEventListener("click", function(){
//     console.log(cartNum.value);
//     console.log(productNum.value);
//     console.log(id.value);
//     console.log(count.value);

//     const xhttp = new XMLHttpRequest();
//     xhttp.open("POST", "./list");

//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

//     xhttp.send("cartNum="+cartNum.value+"&productNum="+productNum.value+"&id="+id.value+"&count="+count.value);

//     xhttp.onreadystatechange = function(){
//         if(this.readyState == 4 && this.status == 200){
            
//         }
//     }
// });