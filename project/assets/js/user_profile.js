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
            // console.log("ajax file"+data);
            $('#main-contents').html(data);
            
        }
        });
}
function clickPhotos()
{
    $.ajax({
            type: "GET",
            url: "/user/ajax_photos/",
            // data: data,
            // cache: true,
            success: function(data){
            //    $("#resultarea").text(data);
            // alert('hello');
            // console.log("ajax file"+data);
            $('#main-contents').html(data);
            
        }
        });
}
function clickOverview()
{
    $.ajax({
            type: "GET",
            url: "/user/ajax_overview/",
            // data: data,
            // cache: true,
            success: function(data){
            //    $("#resultarea").text(data);
            // alert('hello');
            // console.log("ajax file"+data);
            $('#main-contents').html(data);
            
        }
        });
}
function clickEvents()
{
    $.ajax({
            type: "GET",
            url: "/user/ajax_events/",
            // data: data,
            // cache: true,
            success: function(data){
            //    $("#resultarea").text(data);
            // alert('hello');
            // console.log("ajax file"+data);
            $('#main-contents').html(data);
            
        }
        });
}
function clickProjects()
{
    $.ajax({
            type: "GET",
            url: "/user/ajax_projects/",
            // data: data,
            // cache: true,
            success: function(data){
            //    $("#resultarea").text(data);
            // alert('hello');
            // console.log("ajax file"+data);
            $('#main-contents').html(data);
            
        }
        });
}
function update_profile()
{
    $.ajax({
        type: "POST",
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
$(document).ajaxStart(function() {
    // alert('Ajax start');
    $('#loading').show(); // show the gif image when ajax starts
}).ajaxStop(function() {
        $('#loading').hide(); // hide the gif image when ajax completes
});