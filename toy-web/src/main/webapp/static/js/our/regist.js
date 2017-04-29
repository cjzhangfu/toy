/**
 * Created by fu on 2017/4/3.
 */
(function () {
    $("#submit").click(function () {
        var name=$("#name").val();
        var password=$("#password").val();
        var password2=$("#password2").val();
        var email=$("#email").val();
        if(name==null){
            layer.alert("账号为空！")
        }else if(password==null){
            layer.alert("密码为空！")
        }else if(password2==null){
            layer.alert("重新输入密码为空！")
        }else if(password!=password2){
            layer.alert("两次输入密码不一致！")
        }else if(email==null){
            layer.alert("邮箱为空！")
        }else if(email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1){
            layer.alert("邮箱格式不对！")
        }else{
            var params={
                url:'/customer/userRegist',
                method:'GET',
                data:{
                    account:name,
                    password:password,
                    email:email
                }
            };
            ajax(params,function (data) {
                console.log(data)
                window.location.href='/customer/login'
            })
        }
    });
})();
