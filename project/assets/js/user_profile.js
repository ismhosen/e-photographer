function clickEdit()
{
    $.ajax({
            type: "GET",
            url: "/user/ajax_edit/",
            // data: data,
            // cache: true,
            success: function(data){
            //    $("#resultarea").text(data);
            // alert('hello');
            console.log("ajax file"+data);
            $('#main-contents').html(data);
        }
        });
}
function update_profile()
{
    $.ajax({
        type: "GET",
        url: "/user/ajax_update/",
        // data: data,
        // cache: true,
        success: function(data){
        //    $("#resultarea").text(data);
        // alert('hello');
        console.log("ajax file"+data);
        // $('#main-contents').html(data);
    }
    });
}