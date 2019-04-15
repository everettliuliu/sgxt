<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

 <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Submit Recommendation</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/Content/css/sgxt/datatables.min.css" type="text/css">
</head>
<!-- 顶部导航栏 -->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
    .color{background:#f8f8f8}
    .color2{color:red}
    .btnn2{height:30px;borber:1px solid white}
</style>
<body>

<div class="container color">
    <div align="center">
        <h2>
        <br>
        <%:ViewData["title"] %>
        </h2>
    </div>
    <form method="post" action="">
    <div class="dropdown" align="center">
        <div class="btn-group">
            <p align="center">Recommendation</p>
            <select id="revrecommendation"name="revrecommendation"">
                <option value="MinorVision">Minor Revision</option>
                <option value="MajorVision">Major Revision</option>
                <option value="ReViewerPass">Accept</option>
                <option value="ReViewerRefuse">Reject</option>
            </select>
        </div>
    </div>
    <br>
        <div class="form-group">
            <div class="card">
                <div class="card-header">
                    Reviewer Blind Comments to Author：
                </div>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="ToAuthor" rows="6"></textarea>
            </div>
            <div class="card">
                <div class="card-header">
                    Reviewer Confidential Comments to Editor：
                </div>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="ToEditor" rows="6"></textarea>
            </div>
        </div>
        <%--<div class="input-group mb-3">
                <div class="input-group-prepend">
                    <a>Decription:</a>
                </div>
                <input type="text" class="form-control " placeholder="" aria-label="" aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">       
            <p>File &nbsp;name:</p>
            
            <div class="custom-file">
            <input type="file" class="custom-file-input" id="exampleInputFile" >
                <label class="custom-file-label" for="exampleInputFile" >Choose file</label>
            <!--<button type="button" class="btn btn-secondary">Attach this file</button>-->
            </div>
        </div>--%>
        <div align="center">
            <div class="btn-group" role="group" aria-label="Basic example" align="center">                  
            <input type="submit" class="btn btn-outline-secondary" onclick="rec();return false;" name="submit_1" value="Proceed">
            </div>
        </div>
    </form>
</div>
<br>
<br>
<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.js"></script>
<!-- DataTables -->
<script src="/Scripts/sgxt/datatables.min.js"></script>
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
</form>
</body>
</html>

</asp:Content>
