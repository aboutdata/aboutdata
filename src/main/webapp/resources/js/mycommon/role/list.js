/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *  角色管理中使用到的js
 */
jQuery(function ($) {
    var myDataTable = $('#role-table').dataTable({
        "bProcessing": true,
        "bJQueryUI": false, //开关，是否启用JQueryUI风格
        "bInfo": true, //开关，是否显示表格的一些信息 
        "bLengthChange": true, //开关，是否显示每页大小的下拉框
        "bServerSide": true,
        "bFilter": false, //过滤功能
        "bSort": false, //排序功能
        "iDisplayLength": 25,
        "bAutoWidth": true, //自动宽度
        "sAjaxSource": "getListData",
        "aoColumns": [
            {"mData": "name"},
            {"mData": "isSystem"},
            {"mData": "description"},
            {"mData": "createDate"},
            {"mData": "id"}
        ],
        "aoColumnDefs": [{
                "aTargets": [0],
                "mRender": function (name, type, row) {
                    return "<a href='edit/"+row["id"]+"'>" + name + "</a>";
                }
            }, {
                "aTargets": [1],
                "mRender": function (isSystem, type, row) {
                    if (isSystem) {
                        return '<span class="label label-sm label-success">是</span>';
                    } else {
                        return '<span class="label label-sm label-warning">否</span>';
                    }
                }
            }, {
                "aTargets": [2],
                "mRender": function (description, type, row) {
                    return description;
                }
            }, {
                "aTargets": [3],
                "mRender": function (createDate, type, row) {
                    if (createDate) {
                        return (new Date(createDate)).Format("yyyy-MM-dd hh:mm:ss");
                    }
                    return "";
                }
            }, {
                "aTargets": [4],
                "mRender": function (id, type, row) {
                    return '<span class="label label-success arrowed">启用中</span>';
                }
            }]
    });//datatables END

});

