<%-- 
    Document   : index
    Created on : 2015-8-23, 8:52:38
    Author     : youyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- release v4.2.6, copyright 2014 - 2015 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Krajee JQuery Plugins - &copy; Kartik</title>
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/js/file-input/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        
        <script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput_locale_zh.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput_locale_es.js" type="text/javascript"></script>
        
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    </head>
    <body>
        <div class="container kv-main">
            <div class="page-header">
            <h1>Bootstrap File Input Example <small><a href="https://github.com/kartik-v/bootstrap-fileinput-samples"><i class="glyphicon glyphicon-download"></i> Download Sample Files</a></small></h1>
            </div>
            <form enctype="multipart/form-data">
                <input id="file-0a" class="file" type="file" multiple data-min-file-count="1">
                <br>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
            </form>
            <hr>
            <form enctype="multipart/form-data">
                <label>Test invalid input type</label>
                <input id="file-0b" class="file" type="text" multiple data-min-file-count="1">
                <script>
                $(document).on('ready', function(){$("#file-0b").fileinput();});
                </script>
            </form>
            <hr>
            <form enctype="multipart/form-data">
                <input id="file-0a" class="file" type="file" multiple data-min-file-count="3">
                <hr>
                 <div class="form-group">
                    <input id="file-0b" class="file" type="file">
                </div>
                <hr>
                <div class="form-group">
                    <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
                </div>
                <hr>
                <div class="form-group">
                    <input id="file-2" type="file" class="file" readonly data-show-upload="false">
                </div> 
                <hr>
                <div class="form-group">
                    <label>Preview File Icon</label>
                    <input id="file-3" type="file" multiple=true>
                </div>
                <hr>
                <div class="form-group">
                    <input id="file-4" type="file" class="file" data-upload-url="#">
                </div>
                <hr>
                <div class="form-group">
                    <button class="btn btn-warning" type="button">Disable Test</button>
                    <button class="btn btn-info" type="reset">Refresh Test</button>
                    <button class="btn btn-primary">Submit</button>
                    <button class="btn btn-default" type="reset">Reset</button>
                </div>
                <hr>
                <div class="form-group">
                    <input type="file" class="file" id="test-upload" multiple>
                    <div id="errorBlock" class="help-block"></div>
                </div>
                <hr>
                <div class="form-group">
                    <input id="file-5" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#">
                </div>
            </form>
            
            
            <hr>
            <h4>Multi Language Inputs</h4>
            <form enctype="multipart/form-data">
                <label>French Input</label>
                <input id="file-fr" name="file-fr[]" type="file" multiple>
                <hr style="border: 2px dotted">
                <label>Spanish Input</label>
                <input id="file-es" name="file-es[]" type="file" multiple>
            </form>
            <hr>
            <br>
        </div>
    </body>
	<script>
    $('#file-fr').fileinput({
        language: 'zh',
        uploadUrl: '#',
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $('#file-es').fileinput({
        language: 'zh',
        uploadUrl: '#',
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $("#file-0").fileinput({
        'allowedFileExtensions' : ['jpg', 'png','gif'],
    });
    $("#file-1").fileinput({
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
	});
    /*
    $(".file").on('fileselect', function(event, n, l) {
        alert('File Selected. Name: ' + l + ', Num: ' + n);
    });
    */
	$("#file-3").fileinput({
		showUpload: false,
		showCaption: false,
		browseClass: "btn btn-primary btn-lg",
		fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
	});
	$("#file-4").fileinput({
		uploadExtraData: {kvId: '10'}
	});
    $(".btn-warning").on('click', function() {
        if ($('#file-4').attr('disabled')) {
            $('#file-4').fileinput('enable');
        } else {
            $('#file-4').fileinput('disable');
        }
    });    
    $(".btn-info").on('click', function() {
        $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
    });
    /*
    $('#file-4').on('fileselectnone', function() {
        alert('Huh! You selected no files.');
    });
    $('#file-4').on('filebrowse', function() {
        alert('File browse clicked for #file-4');
    });
    */
    $(document).ready(function() {
        $("#test-upload").fileinput({
            'showPreview' : false,
            'allowedFileExtensions' : ['jpg', 'png','gif'],
            'elErrorContainer': '#errorBlock'
        });
        /*
        $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
            alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
        });
        */
    });
	</script>
</html>
