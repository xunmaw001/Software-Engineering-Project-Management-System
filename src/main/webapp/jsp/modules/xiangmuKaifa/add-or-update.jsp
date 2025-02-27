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
                    <h3 class="block-title">编辑项目开发人员</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">项目开发人员管理</li>
                        <li class="breadcrumb-item active">编辑项目开发人员</li>
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
                        <h3 class="widget-title">项目开发人员信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa kaifa">
                                        <label>开发人员</label>
                                        <div>
                                            <select id="kaifaSelect" name="kaifaSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 kaifa">
                                        <label>开发人员姓名</label>
                                        <input id="kaifaName" name="kaifaName" class="form-control"
                                               placeholder="开发人员姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kaifa">
                                        <label>开发人员手机号</label>
                                        <input id="kaifaPhone" name="kaifaPhone" class="form-control"
                                               placeholder="开发人员手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kaifa">
                                        <label>开发人员身份证号</label>
                                        <input id="kaifaIdNumber" name="kaifaIdNumber" class="form-control"
                                               placeholder="开发人员身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kaifa">
                                        <label>开发人员照片</label>
                                        <img id="kaifaPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa xiangmu">
                                        <label>项目</label>
                                        <div>
                                            <select id="xiangmuSelect" name="xiangmuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 xiangmu">
                                        <label>项目名称</label>
                                        <input id="xiangmuName" name="xiangmuName" class="form-control"
                                               placeholder="项目名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xiangmu">
                                        <label>项目类型</label>
                                        <input id="xiangmuValue" name="xiangmuValue" class="form-control"
                                               placeholder="项目类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xiangmu">
                                        <label>项目状态</label>
                                        <input id="xiangmuZhuangtaiValue" name="xiangmuZhuangtaiValue" class="form-control"
                                               placeholder="项目状态" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="xiangmuId" name="xiangmuId" type="hidden">
                                <input id="kaifaId" name="kaifaId" type="hidden">
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

    var tableName = "xiangmuKaifa";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var kaifaOptions = [];
    var xiangmuOptions = [];

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
            if(window.sessionStorage.getItem('role') != '项目'){//当前登录用户不为这个
                if($("#xiangmuId") !=null){
                    var xiangmuId = $("#xiangmuId").val();
                    if(xiangmuId == null || xiangmuId =='' || xiangmuId == 'null'){
                        alert("项目不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '开发人员'){//当前登录用户不为这个
                if($("#kaifaId") !=null){
                    var kaifaId = $("#kaifaId").val();
                    if(kaifaId == null || kaifaId =='' || kaifaId == 'null'){
                        alert("开发人员不能为空");
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
            httpJson("xiangmuKaifa/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addxiangmuKaifa');
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
        function kaifaSelect() {
            //填充下拉框选项
            http("kaifa/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    kaifaOptions = res.data.list;
                }
            });
        }

        function kaifaSelectOne(id) {
            http("kaifa/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                kaifaShowImg();
                kaifaShowVideo();
                kaifaDataBind();
            }
        });
        }
        function xiangmuSelect() {
            //填充下拉框选项
            http("xiangmu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    xiangmuOptions = res.data.list;
                }
            });
        }

        function xiangmuSelectOne(id) {
            http("xiangmu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                xiangmuShowImg();
                xiangmuShowVideo();
                xiangmuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationkaifaSelect() {
            var kaifaSelect = document.getElementById('kaifaSelect');
            if(kaifaSelect != null && kaifaOptions != null  && kaifaOptions.length > 0 ) {
                for (var i = 0; i < kaifaOptions.length; i++) {
                        kaifaSelect.add(new Option(kaifaOptions[i].kaifaName, kaifaOptions[i].id));
                }

                $("#kaifaSelect").change(function(e) {
                        kaifaSelectOne(e.target.value);
                });
            }

        }

        function initializationxiangmuSelect() {
            var xiangmuSelect = document.getElementById('xiangmuSelect');
            if(xiangmuSelect != null && xiangmuOptions != null  && xiangmuOptions.length > 0 ) {
                for (var i = 0; i < xiangmuOptions.length; i++) {
                        xiangmuSelect.add(new Option(xiangmuOptions[i].xiangmuName, xiangmuOptions[i].id));
                }

                $("#xiangmuSelect").change(function(e) {
                        xiangmuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var kaifaSelect = document.getElementById("kaifaSelect");
            if(kaifaSelect != null && kaifaOptions != null  && kaifaOptions.length > 0 ) {
                for (var i = 0; i < kaifaOptions.length; i++) {
                    if (kaifaOptions[i].id == ruleForm.kaifaId) {//下拉框value对比,如果一致就赋值汉字
                        kaifaSelect.options[i+1].selected = true;
                        $("#kaifaSelect" ).selectpicker('refresh');
                    }
                }
            }
            var xiangmuSelect = document.getElementById("xiangmuSelect");
            if(xiangmuSelect != null && xiangmuOptions != null  && xiangmuOptions.length > 0 ) {
                for (var i = 0; i < xiangmuOptions.length; i++) {
                    if (xiangmuOptions[i].id == ruleForm.xiangmuId) {//下拉框value对比,如果一致就赋值汉字
                        xiangmuSelect.options[i+1].selected = true;
                        $("#xiangmuSelect" ).selectpicker('refresh');
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
        window.sessionStorage.removeItem('addxiangmuKaifa');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                xiangmuId: "required",
                kaifaId: "required",
                insertTime: "required",
            },
            messages: {
                xiangmuId: "项目不能为空",
                kaifaId: "开发人员不能为空",
                insertTime: "添加时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addxiangmuKaifa = window.sessionStorage.getItem("addxiangmuKaifa");
        if (addxiangmuKaifa != null && addxiangmuKaifa != "" && addxiangmuKaifa != "null") {
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
            http("xiangmuKaifa/info/" + updateId, "GET", {}, (res) => {
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
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        kaifaDataBind();
        xiangmuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#xiangmuId").val(ruleForm.xiangmuId);
        $("#kaifaId").val(ruleForm.kaifaId);
        $("#insertTime-input").val(ruleForm.insertTime);

    }
    <!--  级联表的数据回显  -->
    function kaifaDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#kaifaId").val(ruleForm.id);

        $("#kaifaName").val(ruleForm.kaifaName);
        $("#kaifaPhone").val(ruleForm.kaifaPhone);
        $("#kaifaIdNumber").val(ruleForm.kaifaIdNumber);
    }

    function xiangmuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#xiangmuId").val(ruleForm.id);

        $("#xiangmuguanliyuanId").val(ruleForm.xiangmuguanliyuanId);
        $("#xuqiuId").val(ruleForm.xuqiuId);
        $("#xiangmuName").val(ruleForm.xiangmuName);
        $("#xiangmuValue").val(ruleForm.xiangmuValue);
        $("#xiangmuContent").val(ruleForm.xiangmuContent);
        $("#insertTime").val(ruleForm.insertTime);
        $("#xiangmuZhuangtaiValue").val(ruleForm.xiangmuZhuangtaiValue);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        kaifaShowImg();
        xiangmuShowImg();
    }


    <!--  级联表的图片  -->

    function kaifaShowImg() {
        $("#kaifaPhotoImg").attr("src",ruleForm.kaifaPhoto);
    }


    function xiangmuShowImg() {
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        kaifaShowVideo();
        xiangmuShowVideo();
    }


    <!--  级联表的视频  -->

    function kaifaShowVideo() {
        $("#kaifaPhotoV").attr("src",ruleForm.kaifaPhoto);
    }

    function xiangmuShowVideo() {
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
            kaifaSelect();
            xiangmuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationkaifaSelect();
            initializationxiangmuSelect();

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
        window.sessionStorage.removeItem('addxiangmuKaifa');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '项目管理员') {
            // $(".aaaaaa").remove();
            $(".xiangmuguanliyuan").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '产品经理') {
            // $(".aaaaaa").remove();
            $(".chanpinjingli").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '开发人员') {
            // $(".aaaaaa").remove();
            $(".kaifa").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '测试人员') {
            // $(".aaaaaa").remove();
            $(".ceshi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyContentUeditor = UE.getEditor('replyContentEditor');
            // replyContentUeditor.ready(function () {
            //     replyContentUeditor.setDisabled('fullscreen');
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