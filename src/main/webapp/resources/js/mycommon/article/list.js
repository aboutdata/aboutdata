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
            {"mData": "title"},
            {"mData": "title"},
            {"mData": "viewCount"},
            {"mData": "commentCount"},
            {"mData": "category"},
            {"mData": "preview"},
            {"mData": "created"},
            {"mData": "id"}
        ],
        "aoColumnDefs": [{
                "aTargets": [0],
                "mRender": function (title, type, row) {
                    return "<a href=profile/" + row["id"] + ">" + title + "</a>";
                }
            }, {
                "aTargets": [4],
                "mRender": function (category, type, row) {
                    return category.name + " <a href=profile/" + category["id"] + ">" + "(" + category.articleCount + ")" + "</a>";
                }
            }, {
                "aTargets": [6],
                "mRender": function (created, type, row) {
                    if (created) {//默认是/Date(794851200000)/格式，需要显示成年月日方式cellvalue(new Date(data.timeRecorded)).Format("yyyy-MM-dd hh:mm")
                        return (new Date(created)).Format("yyyy-MM-dd hh:mm:ss");
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

    //添加文章
    $('#summernote').summernote({
        height: 200
//        lang: "zh_CN",
//        onImageUpload: function (files, editor, welEditable) {
//            sendFile(files[0], editor, welEditable);
//        }
    });
    var tag_input = $('#form-field-tags');
    try {
        tag_input.tag(
                {
                    placeholder: tag_input.attr('placeholder'),
                    //enable typeahead by specifying the source array
                    //  source: ace.vars['US_STATES'], //defined in ace.js >> ace.enable_search_ahead
                    source: function (query, process) {
                        $.ajax({url: 'tags/autocomplete'})
                                .done(function (result_items) {
                                    process(result_items);
                                });
                    }
                }
        );

        //programmatically add a new
        var $tag_obj = $('#form-field-tags').data('tag');
        //添加默认标签
//        $tag_obj.add('程序');
    }
    catch (e) {
        //display a textarea for old IE, because it doesn't support this plugin or another one I tried!
        tag_input.after('<textarea id="' + tag_input.attr('id') + '" name="' + tag_input.attr('name') + '" rows="3">' + tag_input.val() + '</textarea>').remove();
        //$('#form-field-tags').autosize({append: "\n"});
    }
//    $.get('tags/autocomplete', function (data) {
//        tagsAutocomplete(JSON.parse(data));
//    });
});



