<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">


 <html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>History</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
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
        <div class="container">
            <div class="title">
                <h3>History for Manuscript APEN-D-18-11400</h3>
            </div>
            <div class="base-card">
                <div class="form-title">
                    <h3>Staus History</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <table id="statusHistoryTable" class="table table-hover table-bordered table-sm">
                        <thead>
                            <tr class="table-tr">
                                <th scope="col">Status Date</th>
                                <th scope="col">Document Status</th>
                                <th scope="col">Status Days</th>
                                <th scope="col">Role Family</th>
                                <th scope="col">Revision</th>
                                <th scope="col">Operator</th>
                            </tr>
                        </thead>
                        <tbody class="table-tbody">
                            <tr>
                                <td>Nov 30,2019</td>
                                <td>Reviewer Invited</td>
                                <td>……</td>
                                <td>Editor</td>
                                <td>0</td>
                                <td>Y-Ming Wei, Ph.D</td>
                            </tr>
                            <tr>
                                <td>Nov 30,2019</td>
                                <td>Reviewer Invited</td>
                                <td>……</td>
                                <td>Editor</td>
                                <td>0</td>
                                <td>Y-Ming Wei, Ph.D</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="form-title">
                    <h3>Correspondence History</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <table id="corHistoryTable" class="table table-hover table-bordered table-sm">
                        <thead>
                            <tr class="table-tr">
                                <th scope="col">Correspondence Date</th>
                                <th scope="col">Letter</th>
                                <th scope="col">Recipient</th>
                                <th scope="col">Status</th>
                                <th scope="col">Revision</th>
                                <th scope="col">Operator</th>
                            </tr>
                        </thead>
                        <tbody class="table-tbody">
                            <tr>
                                <td>Nov 30,2019</td>
                                <td>Reviewer Invitation</td>
                                <td>Arijit Bagchi, Ph.D</td>
                                <td>Reviewer Invited</td>
                                <td>0</td>
                                <td>Y-Ming Wei, Ph.D</td>
                            </tr>
                            <tr>
                                <td>Nov 30,2019</td>
                                <td>Reviewer Invited</td>
                                <td>……</td>
                                <td>Editor</td>
                                <td>0</td>
                                <td>Y-Ming Wei, Ph.D</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <button class="btn btn-primary" onclick="javascript:history.go(-1)">Return</button>
            </div>
        </div>
    </main>


    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="./Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="./Scripts/sgxt/bootstrap.js"></script>
    <script src="/Scripts/sgxt/datatables.min.js"></script>
    <script>
        $(function () {
            $('#corHistoryTable').DataTable()
            $('#statusHistoryTable').DataTable()
        })
    </script>
</body>

</html>

</asp:Content>
