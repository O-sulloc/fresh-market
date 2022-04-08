const sum = document.getElementsByName("sum");
const price = document.getElementsByName("price");

function init(){
    price = price.val;
    sum=price;
}

//증가
$('.input-number-increment').click(function () {
    var $input = $(this)
        .parents('.input-number-group')
        .find('.input-number');
    var val = parseInt($input.val(), 10);
    $input.val(val + 1);
    sum = input.val * price;
});

//감소
$('.input-number-decrement').click(function () {
    var $input = $(this)
        .parents('.input-number-group')
        .find('.input-number');
    var val = parseInt($input.val(), 10);
        $input.val(val - 1);
});

