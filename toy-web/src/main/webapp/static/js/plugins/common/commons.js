/**
 * Created by fu on 2017/4/3.
 */
//** utils
var ajax = function (params, fn) {

    var succ = function (ret) {
        console.log(ret)
        if (ret.status === 'success') {
            if (fn) fn(ret.data)
        } else {
            layer.alert(ret.errorMsg)
        }
    }
    $.ajax({
        url: params.url,
        type: params.method,
        data: params.data,
        cache: false,
        dataType:'json',
        success: succ,
        error: function (xhr) {
        }
        //,finally: function () {}
    })
}
