/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 管理员列表js
 */
jQuery(function ($) {
    var myDataTable = $('#sample-table-2').dataTable({
        "bProcessing": true,
        "bServerSide": true,
        "bJQueryUI": false, //开关，是否启用JQueryUI风格
        "bInfo": true, //开关，是否显示表格的一些信息 
        "bLengthChange": true, //开关，是否显示每页大小的下拉框
        "bFilter": false, //过滤功能
        "bSort": false, //排序功能
        "iDisplayLength": 25,
        "bAutoWidth": true, //自动宽度
        "sAjaxSource": "getListData",
        "aoColumns": [
            {"mData": "username"},
            {"mData": "email"},
            {"mData": "name"},
            {"mData": "loginDate"},
            {"mData": "loginIp"},
            {"mData": "isEnabled"},
            {"mData": "createDate"},
            {"mData": "id"}
        ],
        "aoColumnDefs": [{
                "aTargets": [0],
                "mRender": function (username, type, row) {
                    return "<a href=profile/" + row["id"] + ">" + username + "</a>";
                }
            }, {
                "aTargets": [3],
                "mRender": function (loginDate, type, row) {
                    if (loginDate) {//默认是/Date(794851200000)/格式，需要显示成年月日方式cellvalue(new Date(data.timeRecorded)).Format("yyyy-MM-dd hh:mm")
                        return (new Date(loginDate)).Format("yyyy-MM-dd hh:mm:ss");
                    }
                    return "";
                }
            }, {
                "aTargets": [5],
                "mRender": function (isEnabled, type, row) {
                    if (isEnabled) {
                        return '<span class="label label-sm label-success">启用</span>';
                    } else {
                        return '<span class="label label-sm label-warning">未启用</span>';
                    }
                }
            }, {"aTargets": [6],
                "mRender": function (createDate, type, row) {
                    if (createDate) {//默认是/Date(794851200000)/格式，需要显示成年月日方式cellvalue(new Date(data.timeRecorded)).Format("yyyy-MM-dd hh:mm")
                        return (new Date(createDate)).Format("yyyy-MM-dd hh:mm:ss");
                    }
                    return "";
                }
            }, {
                "aTargets": [7],
                "mRender": function (id, type, row) {
                    return "";
                }
            }]
    });
    function enableTooltips(table) {
        $('.navtable .ui-pg-button').tooltip({container: 'body'});
        $(table).find('.ui-pg-div').tooltip({container: 'body'});
    }
    //异步提交保存 用户信息
    $("#create-user-btn").click(function () {
        $("#form-create-user").ajaxSubmit({
            type: "POST",
            beforeSubmit: function () {
                /// $('#modal-form-create-user').modal('hide');
            }, //提交前处理 
            complete: function (responseText, statusText) {
                $('#modal-form-create-user').modal('hide');
                myDataTable.fnPageChange('first');
                $.gritter.add({
                    title: '提示信息',
                    text: '创建新用户成功',
                    class_name: 'gritter-light'
                });

            },
            dataType: 'json'
        });
    });
});

