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
<form method="post" action="">
    <div class="base-form">

        <div class="table-container">
            
                <div class="form-title">
                    <h3>File Inventory</h3>
                </div>
                <div class="content mb-4">
                    <div class="warningbox text-justify font-italic">
                        <!--<span>&bull; Any submissions listed below are currently incomplete.To continue the submission process,please locate the relevant submission in the Title column.Then click 'Edit Submission'in the Action's column.You will return to the first submission step and will be able to include any missing files or data reqiured to complete the submission. </span>.</span><br>-->
                        <!--<span>&bull; If you do not to submit the article,click 'Remove Submission' in the Action's column and then click Ok.</span><br>-->
                        <span>&bull; You have selected the following people as potential Reviewers.</span>

                    </div>
                </div>
            
        </div>
    </div>
    <div class="table-container">
        <div class="base-card">
            <div class="form-title">
                <h3>Submission Files(accessed via PDF)</h3>
            </div>
            <div class="content mb-4 mainpage-card">
                <table id="baseTable" class="table table-hover table-bordered table-sm">
                    <thead class="detail-table">
                    <tr class="table-tr">
                        <th scope="col" style="width:200px">Item</th>
                        <th scope="col" style="width:200px;">Description</th>
                        <th scope="col">Item Family</th>
                        <th scope="col" style="width:300px;">File Name</th>
<%--                        <th scope="col" style="width:90px;">Size</th>
                        <th scope="col" style="width:90px;">Last Modified</th>
                        <th scope="col" style="width:90px;">QC Results</th>
                        <th scope="col" style="width:90px;">Display on Transmital Form</th>--%>
                       <%-- <th scope="col" style="width:90px;">Action</th>--%>
                        <th scope="col" style="width:150px;">Action</th>
                    </tr>
                    </thead>
                    <tbody class="table-tbody">
                    <tr>
                        <td>
                        <%:ViewData["item"]%>
                        </td>
                        <td>
                        New Submit
                        </td>
                        <td>
                        <%:ViewData["item"]%>
                        </td>
                        <td>
                        <%:ViewData["filename"]%>
                        </td>                   
                        <td align="center"><button type="submit" class="btn btn-secondary" name="download" value="download" href="#">download</button></td>

                    </tr>
                    </tbody>
                </table>
                <%--<div class="form-group row">
                    <div class="col-sm-12 text-center">
                        <!--Once you have filled in the required information, click the button below.<br>-->                   
                        <button type="submit" class="btn btn-secondary">Close</button>
                    </div>
                </div>
                <div align="center">
                <a href="#">Check All</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Clear All</a>
                </div>--%>
                <%--<button class="btn btn-primary" onclick="javascript:history.go(-1)">Return</button>--%>
            </div>

        </div>
    </div>
    <form>
</main>

    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>

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
