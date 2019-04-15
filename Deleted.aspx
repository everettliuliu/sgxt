<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Declined Revisions</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/Content/css/sgxt/datatables.min.css" type="text/css">
</head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">







<!-- 顶部导航栏 -->


<!-- logo信息 -->
<!-- <div class="logoBar-default">
<img src="./img/logoBar.png" width="30%"  class="pt-1 pb-1 ml-3">
</div> -->

<!-- 面包屑 -->
<!-- <nav aria-label="breadcrumb">
<ol class="breadcrumb" style="padding: 0.3rem 1rem; border-radius: 0%">
  <li class="breadcrumb-item"><a href="#">Home</a></li>
  <li class="breadcrumb-item active" aria-current="page">Registration</li>
</ol>
</nav> -->

<!-- 主体部分 -->
<body>
<main role="main" class="flex-shrink-0">
    
        <div class="table-container">
             <div class="title">
                <h3>Author Main Menue</h3>
            </div>
        <div class="base-card">
            <form method="post" enctype="multipart/form-data"  action="">
            <div class="form-title">
                <h3>Deleted Submissions</h3>
            </div>
            <div class="content mb-4 mainpage-card">
                <table id="baseTable" class="table table-hover table-bordered table-sm">
                    <thead class="detail-table">
                    <tr class="table-tr">
                        <th scope="col" style="width:100px">Action</th>
                        <th scope="col" style="width:100px">Manuscript<br>Number</th>
                        <th scope="col" style="width:100px">Title</th>
                        <th scope="col" style="width:100px">Initial Date Submitted</th>
                        <th scope="col" style="width:100px">Status Date</th>
                        <th scope="col" style="width:100px">Current Status</th>
                        <!--<th scope="col" style="width:90px;">Status</br>Date</th>-->
                        <!--<th scope="col" style="width:60px;">Current</br>Status</th>-->
                        <!--<th scope="col" style="width:50px;">Editor</br>Decision</th>-->
                        <!--<th scope="col" style="width:80px;">Action</th>-->
                    </tr>
                    </thead>
                    <tbody class="table-tbody">
                   
                    </tbody>
                </table>               
            </div>
            </form>
        </div>
        </div>
    
</main>


    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <!-- DataTables -->
    <script src="/Scripts/sgxt/datatables.min.js"></script>
       <script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
    <script src="/Scripts/sgxt/deleted.js"></script>

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
