<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Search Reveiwers By Classification</title>
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
        <div class="table-container">
            <div class="title">
                <h3 align="center">Search Reveiwers By Classification-Manuscript Number <span name="manuscriptnumber"> APEN-D-18-11400</span><br>
				"Comparison of Marginal and Average Emission Factor For Passenger Transportation Modes"</h3>	
            </div>
            <div class="base-card">
                <div class="form-title">
                    <h3>Reviewer Search</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                    <label class="form-check-label" for="exampleRadios1">
                        Search My Publication
                    </label>&nbsp;&nbsp;
                    <select>
                        <option value="volvo">Search For Reviewers</option>
                        <option value="saab">Search By Classification</option>
                    </select>&nbsp;&nbsp;
                    <a>From</a>
                    <select>
                        <option value="volvo">All Users</option>
                        <option value="saab">All Reviewers</option>
                    </select>
                    &nbsp;&nbsp;<button href="#" type="button" class="btn btn-outline-secondary btn-sm">Go</button><br>
                    <a href="#">Search for and find reviewers</a><br>
                    <a>A tool offered by Elsevier to help you find reviewers.Want to know more?</a>&nbsp;&nbsp;<a href="#">Find out.</a>
                </div>
            </div>
			<div class="base-card">
                
                <div class="content mb-4 mainpage-card">
                    <p align="center">The number next to each Classification term below indicates the number of Reveiwers with a Classification match.<br>
					 By selecting the Classification terms you will be able to view a list of those Reveiwers.</p>
					<table id="baseTable" class="table table-hover table-bordered table-sm">
                        <thead class="detail-table">
                            <tr class="table-tr">
                                <th scope="col" style="width:150px">Chapters Number</th>
                                <th scope="col" style="width:150px">Classification</th>
                                <th scope="col" tyle="width:150px">Number of Reveiwers</th>
                                
                            </tr>
                        </thead>
                        <tbody class="table-tbody">
                            <tr>
                                <td><input type="checkbox" name="chapter" value="2.3"> 2.3</td>
                                <td>Transport</td>
                                <td>808</td>
                               
                            </tr>
                            
                        </tbody>
                    </table>

                </div>
            </div>
        </div><br><br>
        </form>
    </main>

    <!-- 底部 -->
    

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
