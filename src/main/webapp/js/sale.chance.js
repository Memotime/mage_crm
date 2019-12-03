function formatterState(val) {
    if (val==0){
        return "未分配";
    }else if(val==1){
        return "已分配";
    }else {
        return "未定义";
    }
}
function searchSaleChances(){
    $("#dg").datagrid("load",{
        createMan:$("#createMan").val(),
        customerName:$("#customerName").val(),
        createDate:$("#createDate").datebox("getValue"),
        state:$("#state").combobox("getValue")
    })
}
/*增加营销机会信息*/
function openAddAccountDialog() {
    $("#dlg").dialog("open").datagrid("setTitle","添加营销机会记录");

}
function closeDialog() {
    $("#dlg").dialog("close");
}
function saveAccount(){
    //根据传过来的id判断是增加还是修改
    var id=$("#id").val();
    var url=ctx+"/sale_chance/insert";
    console.log(id);
    if(!isEmpty(id)){
        url=ctx+"/sale_chance/update";
    }
    $("#fm").form("submit",{
        url:url,
        onsubmit:function (parmas) {
            params.createMan=$.cookie("trueName");
            return $("#fm").form("validate");
        },
        success:function (data) {
            data=JSON.parse(data);
            if (data.code==200){
                $.messager.alert("来自Crm项目",data.msg,"info");
                $("#dg").datagrid("reload");
                closeDialog();
            }else {
                $.messager.alert("来自Crm项目",data.msg,"error");
            }
        }
    })
}
/*修改营销机会信息*/
function openModifyAccountDialog() {
    var rows=$("#dg").datagrid("getSelections");
    if(rows.length==0){
        $.messager.alert("来自Crm","请选择一条记录！","error");
        return;
    }
    if (rows.length>1){
        $.messager.alert("来自crm","最多选中一条记录","error");
        return;
    }
    $("#fm").form('load',rows[0]);
    $("#dlg").dialog("open").dialog("setTitle","修改营销机会记录");
}
function deleteAccount() {
    var rows=$("#dg").datagrid("getSelections");
    if(rows.length==0){
        $.messager.alert("来自Crm","请选择一条记录！","error");
        return;
    }
    console.log(rows);
    var ids="id=";
    for (var i=0;i<rows.length;i++){
        if(i<rows.length-1){
            ids=ids+rows[i].id+"&id=";
        }else {
            ids=ids+rows[i].id;
        }
    }
    console.log("12345")
    console.log(ids);
    $.messager.confirm("来自crm","你确定要删除所选的记录嘛？",function (r) {
        if(r){
            $.ajax({
                type:'post',
                url:ctx+"/sale_chance/delete",
                data:ids,
                dataType:'json',
                success:function (data) {
                    if(data.code==200){
                        $.messager.alert("来自crm",data.msg,"info")
                        $("#dg").datagrid("reload");
                    }else {
                        $.messager.alert("来自crm",data.msg,"info");
                    }
                }
            });
        }
    })
}
