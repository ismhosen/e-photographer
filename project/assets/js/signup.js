function checkunique(str)
{
    // alert(str);
    $.ajax({
        type: "GET",
        url: "/signup/updated_signup/"+str,
        // data: data,
        // cache: true,
        success: function(data){
        //    $("#resultarea").text(data);
        // alert('hello');
        // console.log(data);
        if(data==0)
        {
            $('.error').css('display','none');
        }else{
            $('.error').html("Exist");
            $('.error').css('display','block');
        }
        
        }
        });
}