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
            alert(msg);
        },
        error: function (msg) {
            alert("ERRROR" + msg);
        }
    });
}



