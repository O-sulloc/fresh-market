//product update.js

const category = document.getElementsByName("category");

//https://living-only-today.tistory.com/107
var categoryVal = $('input[name=category]:checked').val();
//체크된 라디오 버튼의 값을 가져올 수 있음.

if(categoryVal)

var categoryChecked= $('input:radio[name=category]').is(":checked");
//라디오 버튼의 체크 여부를 확인할 수 있음.

const updateBtn = document.getElementById("updateBtn");
