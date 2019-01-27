var App = function () {


    var handlerTreeTable = function () {
        $("#treeTable").treeTable({
            expandLevel: 2,
            column: 2,
        });
    }

    var handlercheckAllInit = function () {
        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        })
        _checkboxMaster = $(".checkbox-master");
        _checkbox = $("tbody").find("[type='checkbox']").not("[disabled]");
        _checkboxMaster.on("ifClicked", function (e) {
            // 当前状态已选中，点击后应取消选择
            if (e.target.checked) {
                _checkbox.iCheck("uncheck");
            }
            // 当前状态未选中，点击后应全选
            else {
                _checkbox.iCheck("check");
            }
        });
    }

    var handlerDeleteItems = function (url) {
        var _idArray = new Array();
        _checkbox.each(function () {
            // 判断是否选中
            var delFlag = $(this).is(":checked");
            if (delFlag) {
                _idArray.push($(this).attr("id"));
            }
        });
        if (_idArray.length == 0) {//弹出莫泰框
            $("#model-message").html("请至少选中一个");
            //弹出
            $("#modal-default").modal("show");
        } else {
            //ajax
            if (confirm("确定删除吗？") == true) {
                $.ajax({
                    "url": url,
                    "type": "GET",
                    "data": {"ids": _idArray.toString()},
                    "dataType": "JSON",
                    "success": function (data) {
                        //BaseResult  : status   message
                        //更新页面
                        window.location.reload();
                        alert(data.message);

                    }
                });
            }
        }
    }

    var HandlerBtnModalClick = function () {
        //隐藏
        $("#modal-default").modal("hide");
    }

    var handlerCheckdatitl = function (id) {
        var test = window.location.pathname;
        var path = test.substring(0, test.lastIndexOf("/"))
        $.ajax({
            "url": path + "/checkDatitl?id=" + id,
            "type": "get",
            "dataType": "HTML",
            "success": function (data) {
                $("#model-message").html(data);
                //弹出
                $("#modal-default").modal("show");
            }
        })
    }
    var handlecheckdelet = function (id) {
        if (confirm("是否删除") == true) {
            $.ajax({
                "url": path + "/deleteById?id=" + id,
                "type": "get",
                "dataType": "json",
                "success": function (data) {
                    //BaseResult  : status   message
                    //更新页面
                    window.location.reload();
                    alert(data.message);

                }
            })
        }
    }

    var handleDataTable = function (columns) {
        var test = window.location.pathname;
        var path = test.substring(0, test.lastIndexOf("/"))
        var myDataTable = $('#myDataTable').DataTable({
            "autoWidth": true,
            "info": true,
            "lengthChange": false,
            "ordering": false,
            "paging": true,
            "searching": false,
            "serverSide": true,
            "ajax": {
                "url": path + "/page"
            },
            "columns": columns,
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            "drawCallback": function (settings) {
                //初始化后的回调函数
                App.checkAllInit()
            }
        });
        return myDataTable;
    }
    var handlersearch = function (dt, param) {
        dt.settings()[0].ajax.data = param;
        dt.ajax.reload();
    }

    return {
        deleteItems: function (url) {
            handlerDeleteItems(url);
        },
        checkAllInit: function () {
            handlercheckAllInit()
        },
        treeTable: function () {
            handlerTreeTable();
        },
        checkdatitl: function (id) {
            handlerCheckdatitl(id);
        },
        btnModalClick: function () {
            HandlerBtnModalClick();
        },
        myDataTable: function (columns) {
            return handleDataTable(columns)
        },
        search: function (dt, param) {
            handlersearch(dt, param)
        },
        checkdelet: function (id) {
            handlecheckdelet(id)
        }

    }
}()
