<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑合同协议</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">合同协议管理</li>
                        <li class="breadcrumb-item active">编辑合同协议</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">合同协议信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa xuesheng">
                                        <label>学生</label>
                                        <div>
                                            <select style="width: 450px" id="xueshengSelect" name="xueshengSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生姓名</label>
                                        <input style="width: 450px" id="xueshengName" name="xueshengName" class="form-control"
                                               placeholder="学生姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生手机号</label>
                                        <input style="width: 450px" id="xueshengPhone" name="xueshengPhone" class="form-control"
                                               placeholder="学生手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生头像</label>
                                        <img id="xueshengPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa gongsi">
                                        <label>公司</label>
                                        <div>
                                            <select style="width: 450px" id="gongsiSelect" name="gongsiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 gongsi">
                                        <label>公司名称</label>
                                        <input style="width: 450px" id="gongsiName" name="gongsiName" class="form-control"
                                               placeholder="公司名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongsi">
                                        <label>联系方式</label>
                                        <input style="width: 450px" id="gongsiPhone" name="gongsiPhone" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongsi">
                                        <label>营业执照展示</label>
                                        <img id="gongsiPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6 hetongxieyiUuidNumberDiv">
                                        <label>协议编号</label>
                                        <input style="width: 450px" id="hetongxieyiUuidNumber" name="hetongxieyiUuidNumber" class="form-control"
                                               placeholder="协议编号">
                                    </div>
                                <input id="gongsiId" name="gongsiId" type="hidden">
                                <input id="xueshengId" name="xueshengId" type="hidden">
                                    <div class="form-group col-md-6 hetongxieyiBiaotiDiv">
                                        <label>协议标题</label>
                                        <input style="width: 450px" id="hetongxieyiBiaoti" name="hetongxieyiBiaoti" class="form-control"
                                               placeholder="协议标题">
                                    </div>
                                    <div class="form-group col-md-6 hetongxieyiTypesDiv">
                                        <label>协议类型</label>
                                        <select style="width: 450px" id="hetongxieyiTypesSelect" name="hetongxieyiTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 hetongxieyiFileDiv">
                                        <label>协议文件</label>
                                        <input name="file" type="file" class="form-control-file" id="hetongxieyiFileupload">
                                        <label id="hetongxieyiFileName"></label>
                                        <input name="hetongxieyiFile" id="hetongxieyiFile-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 qiandingTimeDiv">
                                        <label>协议签订时间</label>
                                        <input style="width: 450px" id="qiandingTime-input" name="qiandingTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group  col-md-6 hetongxieyiContentDiv">
                                        <label>协议详情</label>
                                        <input id="hetongxieyiContentupload" name="file" type="file">
                                        <script id="hetongxieyiContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var hetongxieyiContentUe = UE.getEditor('hetongxieyiContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="hetongxieyiContent" id="hetongxieyiContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "hetongxieyi";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var hetongxieyiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var xueshengOptions = [];
    var gongsiOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#hetongxieyiFileupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                document.getElementById('hetongxieyiFile-input').setAttribute('value', baseUrl + 'file/download?fileName=' + data.result.file);
                document.getElementById('hetongxieyiFileName').innerHTML = "上传成功!";
            }
        });


        $('#hetongxieyiContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('hetongxieyiContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '公司'){//当前登录用户不为这个
                if($("#gongsiId") !=null){
                    var gongsiId = $("#gongsiId").val();
                    if(gongsiId == null || gongsiId =='' || gongsiId == 'null'){
                        alert("公司不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '学生'){//当前登录用户不为这个
                if($("#xueshengId") !=null){
                    var xueshengId = $("#xueshengId").val();
                    if(xueshengId == null || xueshengId =='' || xueshengId == 'null'){
                        alert("学生不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("hetongxieyi/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addhetongxieyi');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function hetongxieyiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=hetongxieyi_types", "GET", {}, (res) => {
                if(res.code == 0){
                    hetongxieyiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function xueshengSelect() {
            //填充下拉框选项
            http("xuesheng/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    xueshengOptions = res.data.list;
                }
            });
        }

        function xueshengSelectOne(id) {
            http("xuesheng/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                xueshengShowImg();
                xueshengShowVideo();
                xueshengDataBind();
            }
        });
        }
        function gongsiSelect() {
            //填充下拉框选项
            http("gongsi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    gongsiOptions = res.data.list;
                }
            });
        }

        function gongsiSelectOne(id) {
            http("gongsi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                gongsiShowImg();
                gongsiShowVideo();
                gongsiDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationHetongxieyitypesSelect(){
            var hetongxieyiTypesSelect = document.getElementById('hetongxieyiTypesSelect');
            if(hetongxieyiTypesSelect != null && hetongxieyiTypesOptions != null  && hetongxieyiTypesOptions.length > 0 ){
                for (var i = 0; i < hetongxieyiTypesOptions.length; i++) {
                    hetongxieyiTypesSelect.add(new Option(hetongxieyiTypesOptions[i].indexName,hetongxieyiTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationxueshengSelect() {
            var xueshengSelect = document.getElementById('xueshengSelect');
            if(xueshengSelect != null && xueshengOptions != null  && xueshengOptions.length > 0 ) {
                for (var i = 0; i < xueshengOptions.length; i++) {
                        xueshengSelect.add(new Option(xueshengOptions[i].xueshengName, xueshengOptions[i].id));
                }

                $("#xueshengSelect").change(function(e) {
                        xueshengSelectOne(e.target.value);
                });
            }

        }

        function initializationgongsiSelect() {
            var gongsiSelect = document.getElementById('gongsiSelect');
            if(gongsiSelect != null && gongsiOptions != null  && gongsiOptions.length > 0 ) {
                for (var i = 0; i < gongsiOptions.length; i++) {
                        gongsiSelect.add(new Option(gongsiOptions[i].gongsiName, gongsiOptions[i].id));
                }

                $("#gongsiSelect").change(function(e) {
                        gongsiSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var hetongxieyiTypesSelect = document.getElementById("hetongxieyiTypesSelect");
        if(hetongxieyiTypesSelect != null && hetongxieyiTypesOptions != null  && hetongxieyiTypesOptions.length > 0 ) {
            for (var i = 0; i < hetongxieyiTypesOptions.length; i++) {
                if (hetongxieyiTypesOptions[i].codeIndex == ruleForm.hetongxieyiTypes) {//下拉框value对比,如果一致就赋值汉字
                        hetongxieyiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var xueshengSelect = document.getElementById("xueshengSelect");
            if(xueshengSelect != null && xueshengOptions != null  && xueshengOptions.length > 0 ) {
                for (var i = 0; i < xueshengOptions.length; i++) {
                    if (xueshengOptions[i].id == ruleForm.xueshengId) {//下拉框value对比,如果一致就赋值汉字
                        xueshengSelect.options[i+1].selected = true;
                        $("#xueshengSelect" ).selectpicker('refresh');
                    }
                }
            }
            var gongsiSelect = document.getElementById("gongsiSelect");
            if(gongsiSelect != null && gongsiOptions != null  && gongsiOptions.length > 0 ) {
                for (var i = 0; i < gongsiOptions.length; i++) {
                    if (gongsiOptions[i].id == ruleForm.gongsiId) {//下拉框value对比,如果一致就赋值汉字
                        gongsiSelect.options[i+1].selected = true;
                        $("#gongsiSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.hetongxieyiContent != null && ruleForm.hetongxieyiContent != 'null' && ruleForm.hetongxieyiContent != '' && $("#hetongxieyiContentupload").length>0) {

            var hetongxieyiContentUeditor = UE.getEditor('hetongxieyiContentEditor');
            hetongxieyiContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.hetongxieyiContent != null){
                    mes = ''+ ruleForm.hetongxieyiContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                hetongxieyiContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#hetongxieyiContentupload").length>0) {
            var hetongxieyiContentEditor = UE.getEditor('hetongxieyiContentEditor');
            if (hetongxieyiContentEditor.hasContents()) {
                $('#hetongxieyiContent-input').attr('value', hetongxieyiContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addhetongxieyi');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                hetongxieyiUuidNumber: "required",
                gongsiId: "required",
                xueshengId: "required",
                hetongxieyiBiaoti: "required",
                hetongxieyiTypes: "required",
                hetongxieyiFile: "required",
                qiandingTime: "required",
                hetongxieyiContent: "required",
            },
            messages: {
                hetongxieyiUuidNumber: "协议编号不能为空",
                gongsiId: "公司不能为空",
                xueshengId: "学生不能为空",
                hetongxieyiBiaoti: "协议标题不能为空",
                hetongxieyiTypes: "协议类型不能为空",
                hetongxieyiFile: "协议文件不能为空",
                qiandingTime: "协议签订时间不能为空",
                hetongxieyiContent: "协议详情不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addhetongxieyi = window.sessionStorage.getItem("addhetongxieyi");
        if (addhetongxieyi != null && addhetongxieyi != "" && addhetongxieyi != "null") {
            //注册表单验证
            $(validform());
            $("#hetongxieyiUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("hetongxieyi/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var qiandingTime = laydate.render({
            elem: '#qiandingTime-input'
            ,type: 'datetime'
        });
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        xueshengDataBind();
        gongsiDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#hetongxieyiUuidNumber").val(ruleForm.hetongxieyiUuidNumber);
        $("#gongsiId").val(ruleForm.gongsiId);
        $("#xueshengId").val(ruleForm.xueshengId);
        $("#hetongxieyiBiaoti").val(ruleForm.hetongxieyiBiaoti);
        $("#qiandingTime-input").val(ruleForm.qiandingTime);
        $("#hetongxieyiContent").val(ruleForm.hetongxieyiContent);

    }
    <!--  级联表的数据回显  -->
    function xueshengDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#xueshengId").val(ruleForm.id);

        $("#xueshengName").val(ruleForm.xueshengName);
        $("#xueshengPhone").val(ruleForm.xueshengPhone);
        $("#xueshengIdNumber").val(ruleForm.xueshengIdNumber);
        $("#jiuyeValue").val(ruleForm.jiuyeValue);
        $("#xueyuanValue").val(ruleForm.xueyuanValue);
        $("#xueshengEmail").val(ruleForm.xueshengEmail);
    }

    function gongsiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#gongsiId").val(ruleForm.id);

        $("#gongsiName").val(ruleForm.gongsiName);
        $("#hanyeValue").val(ruleForm.hanyeValue);
        $("#gongsiPhone").val(ruleForm.gongsiPhone);
        $("#gongsiEmail").val(ruleForm.gongsiEmail);
        $("#gongsiContent").val(ruleForm.gongsiContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        xueshengShowImg();
        gongsiShowImg();
    }


    <!--  级联表的图片  -->

    function xueshengShowImg() {
        $("#xueshengPhotoImg").attr("src",ruleForm.xueshengPhoto);
    }


    function gongsiShowImg() {
        $("#gongsiPhotoImg").attr("src",ruleForm.gongsiPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        xueshengShowVideo();
        gongsiShowVideo();
    }


    <!--  级联表的视频  -->

    function xueshengShowVideo() {
        $("#xueshengPhotoV").attr("src",ruleForm.xueshengPhoto);
    }

    function gongsiShowVideo() {
        $("#gongsiPhotoV").attr("src",ruleForm.gongsiPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            hetongxieyiTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            xueshengSelect();
            gongsiSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationHetongxieyitypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationxueshengSelect();
            initializationgongsiSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addhetongxieyi');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '学生') {
            // $(".aaaaaa").remove();
            $(".xuesheng").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '公司') {
            // $(".aaaaaa").remove();
            $(".gongsi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
