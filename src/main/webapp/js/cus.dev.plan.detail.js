$(function () {
    var devresult = $("#devResult").val();

    if(devresult==2||devresult==3){
        $("#toolbar").remove();
    }
    $("#dg").edatagrid({
        url:ctx+"/cus_dev_plan/queryCusDevPlans?saleChanceId="+$("#saleChanceId").val(),
        saveUrl:ctx+"/cus_dev_plan/insert?saleChanceId="+$("#saleChanceId").val(),
        updateUrl:ctx+"/cus_dev_plan/update?saleChanceId="+$("#saleChanceId").val()
    })
})

function saveCusDevPlan() {
    $("#dg").edatagrid("saveRow");
    $("#dg").edatagrid("load");
}
//修改客户开发计划
function updateCusDevPlan() {
    $("#dg").edatagrid("saveRow");
    $("#dg").edatagrid("load");
}
//删除客户开发计划
function delCusDevPlan() {
   var row= $("#dg").datagrid("getSelected");

    console.log(row);
    $.messager.confirm("来自Crm","你确定要删除这一行数据嘛？",function (r) {
        if(r){
            $.ajax({
                type:'post',
                data:"id="+row.id,
                dataType:'json',
                url:ctx+"/cus_dev_plan/delete",
                success:function (data) {
                    if (data.code==200){
                        $.messager.alert("来自Crm",data.msg,"info");
                        $("#dg").edatagrid("load");
                    }else {
                        $.messager.alert("来自Crm",data.msg,"error");
                    }
                }
            })
        }
    })
}
//修改客户开发状态
function updateSaleChanceDevResult(dev) {
    $.messager.confirm("来自crm","确定执行该操作？",function (r) {
        if(r){
            $.ajax({
                type:"post",
                data:"devResult="+dev+"&saleChanceId="+$("#saleChanceId").val(),
                url:ctx+"/sale_chance/updateSaleChanceDevResult",
                dataType:"json",
                success:function (data) {
                        $.messager.alert("来自crm",data.msg,"info")
                        if(data.code==200) {
                            $("#toolbar").remove();
                        }
                }
            })
        }
    })
}