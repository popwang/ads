<!DOCTYPE html>
<html>
<head>
    <base href=" ${basepath}">
    <meta name="viewport" content="width=device-width" />
    <title>设备总览</title>
<#include "/public_css.ftl" >
</head>
<body style="background-color:#fafafa">
<div class="filtrate-wrapper" style="padding-bottom:0px;">
    <table id="tb_departments"></table>
</div>
</body>
<#include "/public_js.ftl" >
<script type="text/javascript">
    var queryParams={
    };
    // 得到查询的参数
     var queryParamsfunction = function(params) {
         queryParams.limit=params.limit;
         queryParams.offset=params.offset;
         var temp = queryParams;
         return temp;
    };
    $(function ($) {
        //初始化日期组件
        $("#tb_departments").bootstrapTable({
            classes:'table table-hover table-no-bordered',//设置表头的样式
            method : 'get', // 请求方式（*）
            striped : true, // 是否显示行间隔色
            cache : false, // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination : true, // 是否显示分页（*）
            sortable : true, // 是否启用排序
            sortOrder : "asc", // 排序方式
            queryParams :queryParamsfunction,// 传递参数（*）
            sidePagination : "server", // 分页方式：client客户端分页，server服务端分页（*）
            pageNumber : 1, // 初始化加载第一页，默认第一页
            pageSize : 100, // 每页的记录行数（*）
            pageList : [ 10, 25, 50, 100 ], // 可供选择的每页的行数（*）
            //search : true, // 是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            showColumns : true, // 是否显示所有的列
            showColumnsStyle:true,//是否使用列展示查看选择按钮 下移改变样式  默认false 源码扩展开发
            showLoadSuccessAlert:true,//是否表格查询后 输出查询结果的提示框  默认true  源码扩展开发
            showRefresh : false, // 是否显示刷新按钮
            minimumCountColumns : 2, // 最少允许的列数
            clickToSelect : true, // 是否启用点击选中行
            uniqueId : "vEquipmentName", // 每一行的唯一标识，一般为主键列
            //detailView : true, // 是否显示父子表
            detailFormatter:function(index, row){//展开详情的重写排序事件
                //return index+" "+row.v_qy_num;
            },
            //fixedColumns: true,//冻结列 开启
            //fixedNumber:4, //冻结几列数据 隐藏数据也包括
            // striped:true,隔行变色
            columns : [{
                field : 'vEquipmentName',
                title : '设备编号'
            }, {
                field : 'vAddress',
                title : '工地名称'
            }, {
                field : 'isOnLine',
                title : '在线状态'
            }, {
                field : 'p002',
                title : 'PM2.5'
            }, {
                field : 'p003',
                title : 'PM10'
            }, {
                field : 'p004',
                title : '风速'
            }, {
                field : 'p005name',
                title : '风向'
            }, {
                field : 'p006',
                title : '温度'
            }, {
                field : 'p007',
                title : '湿度'
            }, {
                field : 'p008',
                title : '噪音'
            }, {
                field : 'p009',
                title : 'PM100'
            }, {
                field : 'p010',
                title : '气压'
            }, {
                field : 'dtmCreate',
                title : '数据插入时间'
            }]
        });
        var aj = function(){
            //查询加载表格
            $('#tb_departments').bootstrapTable('refresh', {
                url: 'Equipment_info2/getEquipmentinfo2ForTable.htm',
                silent: true,
                query: queryParams
            });
        }
        aj();
    });
</script>
</html>