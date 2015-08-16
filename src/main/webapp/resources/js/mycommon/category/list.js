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
            {"mData": "name"},
            {"mData": "articleCount"},
            {"mData": "articleCount"},
            {"mData": "id"}
        ],
        "aoColumnDefs": [{
                "aTargets": [0],
                "mRender": function (name, type, row) {
                    return name;
                }
            }, {
                "aTargets": [1],
                "mRender": function (articleCount, type, row) {
                    return "<a href=profile/" + row["id"] + ">" + articleCount + "</a>";
                }
            }, {
                "aTargets": [2],
                "mRender": function (order, type, row) {//预留排序实现
                    return "<a href=profile/" + row["id"] + ">" + order + "</a>";
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

