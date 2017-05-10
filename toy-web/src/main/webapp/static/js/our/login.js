/**
 * Created by fu on 2017/4/3.
 */
(function () {
    $("#submit").click(function () {
        var account=$("#account").val();
        var password=$("#password").val();
        var params={
            url:"/customer/userLogin",
            method:"GET",
            data:{
                account:account,
                password:password
            }
        };
        ajax(params,function (data) {
            if(data.power=="1"){
                window.location.href=place+'/toy/admin_toyList';
            }else{
                window.location.href='/';
            }
        })
    })
})();
