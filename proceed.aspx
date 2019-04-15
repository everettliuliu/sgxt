<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Date review due</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/Content/css/sgxt/datatables.min.css" type="text/css">
</head>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<body>

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
<main role="main" class="flex-shrink-0">
    <div class="base-form">

    </div>
    <div class="table-container">
        <div class="base-card">
            
            <div class="form-title">
                <h3>Reviewers to Invited</h3>
            </div>
            <div class="content mb-4 mainpage-card">
                <form method="post" enctype="multipart/form-data"  action="">
                <table id="baseTable" class="table table-hover table-bordered table-sm">
                    <thead class="detail-table">
                    <tr class="table-tr">
                        <th scope="col" style="width:33%">Name</th>
                        <th scope="col" style="width:33%">Letter</th>
                        <th scope="col" style="width:33%">Due Date</th>
                        
                    </tr>
                    </thead>
                    <tbody class="table-tbody">
                    <tr>
                        <td>
                            <a name="firstname"><%: ViewData["Name"] %>   </a>

                        </td>
                        <td> <div class="dropdown show"> 
                           <%--<a href="#">Send Email</a>--%>
                            <input type="submit" class="btn btn-secondary" name="submit_1" value="Send Email">
                        </div>
                        </td>
                        <td><input type="datetime-local"  name="duedate" value="2019-01-01T00:00"/></td>
                        
                       
                    </tr>
                    </tbody>
                </table>
               
                <div class="form-group row">
                    <div class="col-sm-12 text-center">
                        <!--Once you have filled in the required information, click the button below.<br>-->
                        <input type="submit" class="btn btn-secondary" name="submit_1" value="Confirm Selections and proceed">
                    </div>
                </div>
                </form>
            </div>

        </div>
    </div>
</main>

<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.js"></script>
<!-- DataTables -->
<script src="/Scripts/sgxt/datatables.min.js"></script>


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
