<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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

<body>

    <!-- 顶部导航栏 -->
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <a class="navbar-brand" href="">
                <img src="/Content/images/sgxt/logo_white.png" width="30" height="30" class="d-inline-block align-top" alt="">
                CEEP-BIT
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Submit Paper</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Guide</a>
                    </li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="languageDropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Language
                        </a>
                        <div class="dropdown-menu-right dropdown-menu" aria-labelledby="languageDropdownMenuLink">
                            <a class="dropdown-item" href="#">English</a>
                            <a class="dropdown-item" href="#">简体中文</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="roleDropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Switch To
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="roleDropdownMenuLink">
                            <a class="dropdown-item" href="#">Author</a>
                            <a class="dropdown-item" href="#">Reviewer</a>
                            <a class="dropdown-item" href="#">Editor</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="userDropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            shixintian@bupt.edu.cn
                        </a>
                        <div class="dropdown-menu-right dropdown-menu" aria-labelledby="userrDropdownMenuLink">
                            <a class="dropdown-item" href="#">Change Details</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Log Out</a>
                            <!-- <a class="dropdown-item" href="#">Something</a> -->
                        </div>
                    </li>
                </ul>
            </div>
            <a class="btn btn-outline-light" href="">Sign up</a>

        </nav>
    </header>

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
    </main>

    <!-- 底部 -->
    <footer class="footer mt-auto py-3 bg-dark fixed-bottom">
        <div class="container text-muted text-center">
            <sapn class="">
                <a class="text-muted" href="http://www.bit.edu.cn/">北京理工大学</a> | <a class="text-muted" href="http://sme.bit.edu.cn/">北京理工大学管理与经济学院</a>
                | <a class="text-muted" href="http://www.ceep.net.cn/" target="_blank">北京理工大学能源与环境政策研究中心</a>
                </span></br>
                <span class="text-muted">版权所有©2019 北京理工大学能源与环境政策研究中心 京ICP备10019879 京公网安备110402430044</span></br>

                <sapn class="text-muted">Copyright @2019 Center for Energy and Environmental Policy Research. All
                    Rights Reserved</span>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
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
