<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site4.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Editor submit recommendation</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="../Content/css/sgxt/style.css" rel="stylesheet">
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
    <h4>Spatial and temporal variations of embodied carbon emissions in China's infrastructure</h4>
    <a>Original Submisson</a><br>
    <a>Gff bu</a>
    <a href="#" class="color2">(reviewer 1)</a><br>

    
    <a align="center"><b>Recommendation</b></a>
    <select name="decide">

        <option  href="#">Revision</option>        
        <option href="#">Accept</option>
        <option  href="#">Reject</option>
        

    </select>
</div>





    <br>
    
        <div class="form-group">
            <div class="card">
                <div class="card-header">
                    <b>Reviewer's Comments to Author：</b><br>
                    <span><%:  ViewData["ReviewerDecition"] %></span>
                </div>
        </div>
        </div>
        <div class="form-group">
            <div class="card">
                <div class="card-header">
                    <b>Reviewer Cofidential Comments to Author：</b><br>
                    <span><%:ViewData["EditorDecition"]%></span>
                </div>
            </div>
        </div>
       
    
</form>
    </div>
<br><br><br><br><br>
<!-- 底部 -->


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="../Scripts/sgxt/bootstrap.bundle.min.js"></script>
<script src="../Scripts/sgxt/bootstrap.js"></script>
<!-- DataTables -->
<script src="../Scripts/sgxt/datatables.min.js"></script>


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
<script src="../Scripts/sgxt/jquery.min.js"></script>
<script src="../Scripts/sgxt/bootstrap.min.js"></script>
<script src="../Scripts/sgxt/Scripts/sgxt.js"></script>
<script src="../Scripts/sgxt/jquery-1.4.1.js"></script>
<script src="../Scripts/sgxt/SOMLR.js"></script>
</html>

</asp:Content>
