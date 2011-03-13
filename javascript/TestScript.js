$(function () {

    $("#container").html("Hello");
    getData();
});


function getData()
{
    $.ajax({
        type: "POST",
        url: "TestWebService.asmx/GetProducts",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {

            var products = msg.d;

            var target = $('#productContainer');

            target.html('Testing');
            $('#productTemplate').tmpl(products).appendTo(target);

//            $.each(products, function (index, product) {

//                alert(product.ProductId);

//                $.each(product.ProductDetails, function (index, detail) {
//                    alert(detail.DetailId)
//                }); 
//                    });
        },
        error: function (msg) {
            alert("ERRROR" + msg);
        }
    });
}



