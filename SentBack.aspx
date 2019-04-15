<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Editor submit recommendation</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <link href="/Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="/Content/css/sgxt/style.css" rel="stylesheet">
</head>
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
    .color{background:#f8f8f8}
    .color2{color:red}
    .btnn2{height:30px;borber:1px solid white}

</style>
<body>
<div class="container color">
    <form method="post" action="">
     <br>
    <div align="center">
        <h2><%: ViewData["title"]%></h2>
    </div>
    <br>
    <div class="form-group">
        <div class="card">
            <div class="card-header">
                <b>Editor's Comments to Author：</b>
            </div>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="8" name="ToAuthor" value=" "></textarea>
        </div>
    </div>
    <div align="center">
        <div class="btn-group" role="group" aria-label="Basic example" align="center">        
            <button type="submit" class="btn btn-outline-secondary" name="submit_1" value="Proceed" onclick="rec();return false;">Proceed</button>
        </div>
    </div>
    </form>
</div>
<br><br><br><br><br>

<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.js"></script>
<!-- DataTables -->
<script src="/Scripts/sgxt/datatables.min.js"></script>
<script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
<script>
    $(function () {
        $('#baseTable').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'autoWidth': true
        })
    })
</script>
<script type="text/javascript">

    function rec() {
        var mymessage = confirm("确定提交您的意见？");
        if (mymessage == true) {
            method = "post";
            action = "modifyParam.action";
            submit();
        }
    }
</script>
</body>
</html>

</asp:Content>
