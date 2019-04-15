<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Editor submit recommendation</title>
    <link href="/Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="/Content/css/sgxt/style.css" rel="stylesheet">
</head>
<!-- 顶部导航栏 -->
<style>
    .color{background:#f8f8f8}
    .color2{color:red}
    .btnn2{height:30px;borber:1px solid white}

</style>
<body>
<div class="container color">
    <form method="post" action="">
    <div align="center">
        <h2><%: ViewData["title"]%></h2>   
    </div>
    <br>

        </div>
        <div class="form-group">
            <div class="card">
                <div class="card-header">
                    <b>Editor's Comments to Author：</b></b><br><span><%: ViewData["EdToAuthor"]%></span>
                </div>
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
</body>
</html>

</asp:Content>
