<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Search For Reviewers</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
</head>
<body>

<!-- 顶部导航栏 -->
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="">
            <img src="/Content/images/sgxt/logo_white.png" width="30" height="30" class="d-inline-block align-top" alt="">
            CEEP-BIT
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
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
                    <a class="nav-link dropdown-toggle" id="languageDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Language
                    </a>
                    <div class="dropdown-menu" aria-labelledby="languageDropdownMenuLink">
                        <a class="dropdown-item" href="#">English</a>
                        <a class="dropdown-item" href="#">简体中文</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="roleDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Switch To
                    </a>
                    <div class="dropdown-menu" aria-labelledby="roleDropdownMenuLink">
                        <a class="dropdown-item" href="#">Author</a>
                        <a class="dropdown-item" href="#">Reviewer</a>
                        <a class="dropdown-item" href="#">Editor</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        shixintian@bupt.edu.cn
                    </a>
                    <div class="dropdown-menu" aria-labelledby="userrDropdownMenuLink">
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
<main role="main" class="container">
        
    <div class="table-container">
        <div class="title">
            <h3 align="center">Search For Reviewers-Manuscript Number <span name="manuscriptnumber"> APEN-D-18-11400</span></h3>
            <h3 align="center">"Comparison of Marginal and Average Emission Factors for Passengers Transportation Modes"</h3>
        </div>
        <div align="center">
            <a href="#">View Reviewers and Comments</a>&nbsp;&nbsp;
            <a href="#">Manuscript Details</a>&nbsp;&nbsp;
            <a href="#">View Submission</a>&nbsp;&nbsp;
            <a href="#">Invite Reviewer from outside this Journal</a>
        </div><br>
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
				<button type="button" class="btn btn-outline-secondary btn-sm" onclick=>Go</button><br>
                <a href="#">Search for and find reviewers</a><br>
                <a>A tool offered by Elsevier to help you find reviewers.Want to know more?</a>&nbsp;&nbsp;<a href="#">Find out.</a>
            </div>
        </div>
            <div class="base-card">
                <div class="form-title">
                    <h3>Select Reviewers</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <div align="center">
                        <a href="#">Help with Searching</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="#">Insert Special Character</a>
                    </div>
                    <table class="table table-hover table-bordered">
                        <tbody class="table-tbody">
                          <tr>
                            <td>
                                <h4>Criterion</h4>
                             <select class="form-control" id="Select1">
                                <option value="">Last Name</option>
                                <option value="">First Name</option>
                                 <option value="">Email Address</option>
                                 <option value="">Position</option>
                                 <option value="">Department</option>
                                 <option value="">Institution</option>
                                 <option value="">City</option>
                                 <option value="">State</option>
                                 <option value="">Country</option>
                                 <option value="">Personal Classification</option>
                                 <option value="">Personal Keywords</option>
                            </select>
                            <select class="form-control" id="Select2">
                                <option value="">Last Name</option>
                                <option value="">First Name</option>
                                <option value="">Email Address</option>
                                <option value="">Position</option>
                                <option value="">Department</option>
                                <option value="">Institution</option>
                                <option value="">City</option>
                                <option value="">State</option>
                                <option value="">Country</option>
                                <option value="">Personal Classification</option>
                                <option value="">Personal Keywords</option>
                             </select>
                                <select class="form-control" id="Select3">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                              </select>
                                <select class="form-control" id="Select4">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                                </select>
                                <select class="form-control" id="Select5">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                                </select>
                                
                            </td>
                            <td>
                                <h4>Selector</h4>
                                
                                <select class="form-control" id="Control1">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control2">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control3">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control4">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control5">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                            </td>
                              <td>
                                  <h4>Value</h4>

                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                              </td>
                          </tr>

                        </tbody>
                      </table>

                </div>
                
        </div>
<div align="center">
    <button type="button" class="btn btn-outline-secondary">Clear</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" class="btn btn-outline-secondary">Search</button><br>
    <a href="#">Invite Reviewer from outside this Journal</a><br>
    <a href="#">Reviewer Selection Summary</a><br>
    <a href="#">Editor Main Menu</a>
</div><br><br><br>
    </div>
</main>

<!-- 底部 -->
<footer class="footer mt-auto py-3 bg-dark fixed-bottom">
    <div class="container text-muted text-center"> 
        <sapn class="">
            <a class="text-muted" href="http://www.bit.edu.cn/">北京理工大学</a> | <a class="text-muted" href="http://sme.bit.edu.cn/">北京理工大学管理与经济学院</a> | <a class="text-muted" href="http://www.ceep.net.cn/" target="_blank">北京理工大学能源与环境政策研究中心</a>
        </span></br>
        <span class="text-muted">版权所有©2019 北京理工大学能源与环境政策研究中心 京ICP备10019879 京公网安备110402430044</span></br>

        <sapn class="text-muted">Copyright @2019 Center for Energy and Environmental Policy Research. All Rights Reserved</span>
    </div>
</footer>
      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js" ></script>
<script src="/Scripts/sgxt/bootstrap.js" ></script>

</body>
</html>

</asp:Content>
