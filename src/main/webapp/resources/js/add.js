// const categoryChange = (target) => {
    // console.log(target.value);
  
    // option의 text 값
    // console.log(target.options[target.selectedIndex].text);
// }

// const addBtn = document.getElementById('addBtn');

// $(document).ready(function () {
    // $('#addBtn').click(function () {
      // getter
    //   var radioVal = $('input[name="category"]:checked').val();
    //   alert(radioVal);
    // }
// });

const addBtn = document.getElementById('addBtn');
addBtn.addEventListener("click", function(){
    var categoryVal = $('input[name=category]:checked').val();
    
});