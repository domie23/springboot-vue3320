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
                    <h3 class="block-title">编辑邀请面试</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">邀请面试管理</li>
                        <li class="breadcrumb-item active">编辑邀请面试</li>
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
                        <h3 class="widget-title">邀请面试信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa jianli">
                                        <label>简历</label>
                                        <div>
                                            <select style="width: 450px" id="jianliSelect" name="jianliSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 jianli">
                                        <label>简历唯一编号</label>
                                        <input style="width: 450px" id="jianliUuidNumber" name="jianliUuidNumber" class="form-control"
                                               placeholder="简历唯一编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 jianli">
                                        <label>简历名称</label>
                                        <input style="width: 450px" id="jianliName" name="jianliName" class="form-control"
                                               placeholder="简历名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 jianli">
                                        <label>手机号</label>
                                        <input style="width: 450px" id="jianliPhone" name="jianliPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 jianli">
                                        <label>照片</label>
                                        <img id="jianliPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa zhaopin">
                                        <label>招聘信息</label>
                                        <div>
                                            <select style="width: 450px" id="zhaopinSelect" name="zhaopinSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 zhaopin">
                                        <label>招聘信息名称</label>
                                        <input style="width: 450px" id="zhaopinName" name="zhaopinName" class="form-control"
                                               placeholder="招聘信息名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 zhaopin">
                                        <label>招聘信息照片</label>
                                        <img id="zhaopinPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 zhaopin">
                                        <label>招聘电话</label>
                                        <input style="width: 450px" id="zhaopinPhone" name="zhaopinPhone" class="form-control"
                                               placeholder="招聘电话" readonly>
                                    </div>
                                    <div class="form-group col-md-6 zhaopin">
                                        <label>招聘岗位</label>
                                        <input style="width: 450px" id="zhaopinValue" name="zhaopinValue" class="form-control"
                                               placeholder="招聘岗位" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="jianliId" name="jianliId" type="hidden">
                                <input id="zhaopinId" name="zhaopinId" type="hidden">
                                    <div class="form-group col-md-6 mianshiTimeDiv">
                                        <label>面试时间</label>
                                        <input style="width: 450px" id="mianshiTime-input" name="mianshiTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6 mianshiAddressDiv">
                                        <label>面试地点</label>
                                        <input style="width: 450px" id="mianshiAddress" name="mianshiAddress" class="form-control"
                                               placeholder="面试地点">
                                    </div>
                                    <div class="form-group col-md-6 mianshiTextDiv">
                                        <label>面试需知</label>
                                        <textarea style="width: 450px"  id="mianshiText" name="mianshiText" class="form-control"placeholder="面试需知"></textarea>
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

    var tableName = "yaoqing";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var jianliOptions = [];
    var zhaopinOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '简历'){//当前登录用户不为这个
                if($("#jianliId") !=null){
                    var jianliId = $("#jianliId").val();
                    if(jianliId == null || jianliId =='' || jianliId == 'null'){
                        alert("简历不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '招聘信息'){//当前登录用户不为这个
                if($("#zhaopinId") !=null){
                    var zhaopinId = $("#zhaopinId").val();
                    if(zhaopinId == null || zhaopinId =='' || zhaopinId == 'null'){
                        alert("招聘不能为空");
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
            httpJson("yaoqing/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addyaoqing');
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
        <!-- 查询级联表的所有列表 -->
        function jianliSelect() {
            //填充下拉框选项
            http("jianli/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jianliOptions = res.data.list;
                }
            });
        }

        function jianliSelectOne(id) {
            http("jianli/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jianliShowImg();
                jianliShowVideo();
                jianliDataBind();
            }
        });
        }
        function zhaopinSelect() {
            //填充下拉框选项
            http("zhaopin/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    zhaopinOptions = res.data.list;
                }
            });
        }

        function zhaopinSelectOne(id) {
            http("zhaopin/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                zhaopinShowImg();
                zhaopinShowVideo();
                zhaopinDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationjianliSelect() {
            var jianliSelect = document.getElementById('jianliSelect');
            if(jianliSelect != null && jianliOptions != null  && jianliOptions.length > 0 ) {
                for (var i = 0; i < jianliOptions.length; i++) {
                        jianliSelect.add(new Option(jianliOptions[i].jianliName, jianliOptions[i].id));
                }

                $("#jianliSelect").change(function(e) {
                        jianliSelectOne(e.target.value);
                });
            }

        }

        function initializationzhaopinSelect() {
            var zhaopinSelect = document.getElementById('zhaopinSelect');
            if(zhaopinSelect != null && zhaopinOptions != null  && zhaopinOptions.length > 0 ) {
                for (var i = 0; i < zhaopinOptions.length; i++) {
                        zhaopinSelect.add(new Option(zhaopinOptions[i].zhaopinName, zhaopinOptions[i].id));
                }

                $("#zhaopinSelect").change(function(e) {
                        zhaopinSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var jianliSelect = document.getElementById("jianliSelect");
            if(jianliSelect != null && jianliOptions != null  && jianliOptions.length > 0 ) {
                for (var i = 0; i < jianliOptions.length; i++) {
                    if (jianliOptions[i].id == ruleForm.jianliId) {//下拉框value对比,如果一致就赋值汉字
                        jianliSelect.options[i+1].selected = true;
                        $("#jianliSelect" ).selectpicker('refresh');
                    }
                }
            }
            var zhaopinSelect = document.getElementById("zhaopinSelect");
            if(zhaopinSelect != null && zhaopinOptions != null  && zhaopinOptions.length > 0 ) {
                for (var i = 0; i < zhaopinOptions.length; i++) {
                    if (zhaopinOptions[i].id == ruleForm.zhaopinId) {//下拉框value对比,如果一致就赋值汉字
                        zhaopinSelect.options[i+1].selected = true;
                        $("#zhaopinSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addyaoqing');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                jianliId: "required",
                zhaopinId: "required",
                mianshiTime: "required",
                mianshiAddress: "required",
                mianshiText: "required",
            },
            messages: {
                jianliId: "简历不能为空",
                zhaopinId: "招聘不能为空",
                mianshiTime: "面试时间不能为空",
                mianshiAddress: "面试地点不能为空",
                mianshiText: "面试需知不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addyaoqing = window.sessionStorage.getItem("addyaoqing");
        if (addyaoqing != null && addyaoqing != "" && addyaoqing != "null") {
            //注册表单验证
            $(validform());

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
            http("yaoqing/info/" + updateId, "GET", {}, (res) => {
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
        var mianshiTime = laydate.render({
            elem: '#mianshiTime-input'
            ,type: 'datetime'
        });
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        jianliDataBind();
        zhaopinDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#jianliId").val(ruleForm.jianliId);
        $("#zhaopinId").val(ruleForm.zhaopinId);
        $("#mianshiTime-input").val(ruleForm.mianshiTime);
        $("#mianshiAddress").val(ruleForm.mianshiAddress);
        $("#mianshiText").val(ruleForm.mianshiText);

    }
    <!--  级联表的数据回显  -->
    function jianliDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jianliId").val(ruleForm.id);

        $("#xueshengId").val(ruleForm.xueshengId);
        $("#jianliUuidNumber").val(ruleForm.jianliUuidNumber);
        $("#jianliName").val(ruleForm.jianliName);
        $("#jianliXingming").val(ruleForm.jianliXingming);
        $("#jianliSexValue").val(ruleForm.jianliSexValue);
        $("#jianliPhone").val(ruleForm.jianliPhone);
        $("#yuanxiValue").val(ruleForm.yuanxiValue);
        $("#jiaoyuText").val(ruleForm.jiaoyuText);
        $("#shixiText").val(ruleForm.shixiText);
        $("#gerenText").val(ruleForm.gerenText);
    }

    function zhaopinDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#zhaopinId").val(ruleForm.id);

        $("#gongsiId").val(ruleForm.gongsiId);
        $("#zhaopinName").val(ruleForm.zhaopinName);
        $("#zhaopinDaiyu").val(ruleForm.zhaopinDaiyu);
        $("#zhaopinAddress").val(ruleForm.zhaopinAddress);
        $("#lianxirenName").val(ruleForm.lianxirenName);
        $("#zhaopinPhone").val(ruleForm.zhaopinPhone);
        $("#zhaopinValue").val(ruleForm.zhaopinValue);
        $("#zhaopinRenshuNumber").val(ruleForm.zhaopinRenshuNumber);
        $("#shangxiaValue").val(ruleForm.shangxiaValue);
        $("#zhaopinContent").val(ruleForm.zhaopinContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        jianliShowImg();
        zhaopinShowImg();
    }


    <!--  级联表的图片  -->

    function jianliShowImg() {
        $("#jianliPhotoImg").attr("src",ruleForm.jianliPhoto);
    }


    function zhaopinShowImg() {
        $("#zhaopinPhotoImg").attr("src",ruleForm.zhaopinPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        jianliShowVideo();
        zhaopinShowVideo();
    }


    <!--  级联表的视频  -->

    function jianliShowVideo() {
        $("#jianliPhotoV").attr("src",ruleForm.jianliPhoto);
    }

    function zhaopinShowVideo() {
        $("#zhaopinPhotoV").attr("src",ruleForm.zhaopinPhoto);
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
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            jianliSelect();
            zhaopinSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationjianliSelect();
            initializationzhaopinSelect();

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
        window.sessionStorage.removeItem('addyaoqing');
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
