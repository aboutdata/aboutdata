/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery(function ($) {
    //editables on first profile page
    $.fn.editable.defaults.mode = 'inline';
    $.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
    $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>' +
            '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';
    //editables 
    //text editable
    $('#username').editable({
        type: 'text',
        name: 'username'
    });

    //select2 editable
    var countries = [];
    $.each({"CA": "Canada", "IN": "India", "NL": "Netherlands", "TR": "Turkey", "US": "United States"}, function (k, v) {
        countries.push({id: k, text: v});
    });

    var cities = [];
    cities["CA"] = [];
    $.each(["Toronto", "Ottawa", "Calgary", "Vancouver"], function (k, v) {
        cities["CA"].push({id: v, text: v});
    });
    cities["IN"] = [];
    $.each(["Delhi", "Mumbai", "Bangalore"], function (k, v) {
        cities["IN"].push({id: v, text: v});
    });
    cities["NL"] = [];
    $.each(["Amsterdam", "Rotterdam", "The Hague"], function (k, v) {
        cities["NL"].push({id: v, text: v});
    });
    cities["TR"] = [];
    $.each(["Ankara", "Istanbul", "Izmir"], function (k, v) {
        cities["TR"].push({id: v, text: v});
    });
    cities["US"] = [];
    $.each(["New York", "Miami", "Los Angeles", "Chicago", "Wysconsin"], function (k, v) {
        cities["US"].push({id: v, text: v});
    });

    var currentValue = "NL";
    $('#country').editable({
        type: 'select2',
        value: 'NL',
        //onblur:'ignore',
        source: countries,
        select2: {
            'width': 140
        },
        success: function (response, newValue) {
            if (currentValue == newValue)
                return;
            currentValue = newValue;
            var new_source = (!newValue || newValue == "") ? [] : cities[newValue];
            //the destroy method is causing errors in x-editable v1.4.6+
            //it worked fine in v1.4.5
            /**			
             $('#city').editable('destroy').editable({
             type: 'select2',
             source: new_source
             }).editable('setValue', null);
             */

            //so we remove it altogether and create a new element
            var city = $('#city').removeAttr('id').get(0);
            $(city).clone().attr('id', 'city').text('Select City').editable({
                type: 'select2',
                value: null,
                //onblur:'ignore',
                source: new_source,
                select2: {
                    'width': 140
                }
            }).insertAfter(city);//insert it after previous instance
            $(city).remove();//remove previous instance

        }
    });

    $('#city').editable({
        type: 'select2',
        value: 'Amsterdam',
        //onblur:'ignore',
        source: cities[currentValue],
        select2: {
            'width': 140
        }
    });
    //custom date editable
    $('#signup').editable({
        type: 'adate',
        date: {
            //datepicker plugin options
            format: 'yyyy/mm/dd',
            viewformat: 'yyyy/mm/dd',
            weekStart: 1
                    //,nativeUI: true//if true and browser support input[type=date], native browser control will be used
                    //,format: 'yyyy-mm-dd',
                    //viewformat: 'yyyy-mm-dd'
        }
    })
    $('#age').editable({
        type: 'spinner',
        name: 'age',
        spinner: {
            min: 16,
            max: 99,
            step: 1,
            on_sides: true
                    //,nativeUI: true//if true and browser support input[type=number], native browser control will be used
        }
    });
    $('#login').editable({
        type: 'slider',
        name: 'login',
        slider: {
            min: 1,
            max: 50,
            width: 100
                    //,nativeUI: true//if true and browser support input[type=range], native browser control will be used
        },
        success: function (response, newValue) {
            if (parseInt(newValue) == 1)
                $(this).html(newValue + " hour ago");
            else
                $(this).html(newValue + " hours ago");
        }
    });
    $('#about').editable({
        mode: 'inline',
        type: 'wysiwyg',
        name: 'about',
        wysiwyg: {
            //css : {'max-width':'300px'}
        },
        success: function (response, newValue) {
        }
    });

    // *** editable avatar *** //
    try {//ie8 throws some harmless exceptions, so let's catch'em

        //first let's add a fake appendChild method for Image element for browsers that have a problem with this
        //because editable plugin calls appendChild, and it causes errors on IE at unpredicted points
        try {
            document.createElement('IMG').appendChild(document.createElement('B'));
        } catch (e) {
            Image.prototype.appendChild = function (el) {
            }
        }

        var last_gritter
        $('#avatar').editable({
            type: 'image',
            name: 'avatar',
            value: null,
            image: {
                //specify ace file input plugin's options here
                btn_choose: 'Change Avatar',
                droppable: true,
                maxSize: 110000, //~100Kb

                //and a few extra ones here
                name: 'avatar', //put the field name here as well, will be used inside the custom plugin
                on_error: function (error_type) {//on_error function will be called when the selected file has a problem
                    if (last_gritter)
                        $.gritter.remove(last_gritter);
                    if (error_type == 1) {//file format error
                        last_gritter = $.gritter.add({
                            title: 'File is not an image!',
                            text: 'Please choose a jpg|gif|png image!',
                            class_name: 'gritter-error gritter-center'
                        });
                    } else if (error_type == 2) {//file size rror
                        last_gritter = $.gritter.add({
                            title: 'File too big!',
                            text: 'Image size should not exceed 100Kb!',
                            class_name: 'gritter-error gritter-center'
                        });
                    }
                    else {//other error
                    }
                },
                on_success: function () {
                    $.gritter.removeAll();
                }
            },
            url: function (params) {
                // ***UPDATE AVATAR HERE*** //
                //for a working upload example you can replace the contents of this function with 
                //examples/profile-avatar-update.js

                var deferred = new $.Deferred

                var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
                if (!value || value.length == 0) {
                    deferred.resolve();
                    return deferred.promise();
                }

                //dummy upload
                setTimeout(function () {
                    if ("FileReader" in window) {
                        //for browsers that have a thumbnail of selected image
                        var thumb = $('#avatar').next().find('img').data('thumb');
                        if (thumb)
                            $('#avatar').get(0).src = thumb;
                    }

                    deferred.resolve({'status': 'OK'});

                    if (last_gritter)
                        $.gritter.remove(last_gritter);
                    last_gritter = $.gritter.add({
                        title: 'Avatar Updated!',
                        text: 'Uploading to server can be easily implemented. A working example is included with the template.',
                        class_name: 'gritter-info gritter-center'
                    });

                }, parseInt(Math.random() * 800 + 800))

                return deferred.promise();

                // ***END OF UPDATE AVATAR HERE*** //
            },
            success: function (response, newValue) {
            }
        })
    } catch (e) {
    }
    //======================角色授权=================================          
    //异步提交保存 用户信息
    $("#admin-roles-btn").click(function () {
        $("#admin-roles-form").ajaxSubmit({
            type: "POST",
            beforeSubmit: function () {
                /// $('#modal-form-create-user').modal('hide');
            }, //提交前处理 
            complete: function (responseText, statusText) {
                $.gritter.add({
                    title: '提示信息',
                    text: '管理员授权成功',
                    class_name: 'gritter-light'
                });

            },
            dataType: 'json'
        });
    });
    //======================给管理员重置密码=================================          
    //异步提交保存 重置密码
    $("#reset-password-btn").click(function () {
        $("#reset-password-form").ajaxSubmit({
            type: "POST",
            dataType: "json", //数据类型  
            beforeSubmit: function () {


            }, //提交前处理 
            success: function (data) { //提交成功的回调函数  
                if (data.type === "SUCCESS") {
                    $.gritter.add({
                        title: '提示信息',
                        text: '管理员修改密码成功',
                        class_name: 'gritter-light'
                    });
                } else {
                    $.gritter.add({
                        title: '提示信息',
                        text: '修改密码失败',
                        class_name: 'gritter-light'
                    });
                }
            },
            complete: function (responseText, statusText) {
//                var obj = eval("("+responseText+")");
            },
            dataType: 'json'
        });
    });
    //密码修改的表单验证
    $('#reset-password-form').validate({
        errorElement: 'div',
        errorClass: 'help-block',
        focusInvalid: false,
        rules: {
            password: {
                required: true,
                minlength: 5
            },
            confirmPassword: {
                required: true,
                minlength: 5,
                equalTo: "#password"
            }
        },
        highlight: function (e) {
            $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
        },
        success: function (e) {
            $("#reset-password-btn").removeAttr("disabled")
            $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
            $(e).remove();
        },
        errorPlacement: function (error, element) {
            $("#reset-password-btn").attr("disabled", true);
            error.insertAfter(element.parent());
        },
        submitHandler: function (form) {
        },
        invalidHandler: function (form) {
        }
    });

    //是否启用管理员
    $('#isEnabled').on('click', function () {
        var data = {};
        data.id = $("#adminId").data("id");
        if (this.checked) {
            //之前是未启用状态
            data.isEnabled = false;
        } else {
            //之前是启用状态
            data.isEnabled = true;
        }
        //提交给服务器处理
        $.ajax({
            type: "post",
            url: "disable",
            data: data,
            async: false,
            success: function (data) {
                if (data.type === "SUCCESS") {
                    $.gritter.add({
                        title: '提示信息',
                        text: '管理员禁用成功',
                        class_name: 'gritter-light'
                    });
                } else {
                    $.gritter.add({
                        title: '提示信息',
                        text: '管理员禁用失败,请联系管理员!',
                        class_name: 'gritter-light'
                    });
                }
            }
        });
    });


});

