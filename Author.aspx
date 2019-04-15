<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Home</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
</head>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<body>

  <!-- 顶部导航栏 -->
 

    <!-- logo信息 -->
    <!-- <div class="logoBar-default">
    <img src="./img/logoBar.png" width="30%"  class="pt-1 pb-1 ml-3">
</div> -->

    <!-- 面包屑 -->
<%--    <div class="header">
        <h5>Author Main Menue</h5>     
    </div>--%>
    <!-- 主体部分 -->
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <!--<div class="title">-->
                <!--<h3>Author Main Menue</h3>-->
            <!--</div>-->
            <div class="base-card mt-4">
                <div class="form-title">
                    <h3>New Submissions</h3>
                </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('Submit')">Submit New Manuscript</a><br>
                    <a class="btn" onclick="javascript:window.open('SubSentBack')">Submissions Sent Back to Author </a><span class="badge badge-secondary"><%: ViewData["SentBackNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('Incomplete')">Incomplete Submissions</a><span class="badge badge-secondary"><%: ViewData["IncompNum"]%></span><br>
                     <a class="btn" onclick="javascript:window.open('SubBeingProcessed')">Submissions Being Processed </a><span class="badge badge-secondary"><%: ViewData["SubBeingProNum"]%></span><br>
                </div>
                <div class="form-title">
                    <h3>Revisions</h3>
                </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn"  onclick="javascript:window.open('SubNeedingRevision')">Submissions Needing Revision</a><span class="badge badge-secondary"><%: ViewData["SubNeedReNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('RevisionSentBack')">Revisions Sent Back to Author</a><span class="badge badge-secondary"><%: ViewData["ReSentBackNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('IncompleteSubBeingRevised')">Incomplete Submissions Being Revised</a><span class="badge badge-secondary"><%: ViewData["InComReNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('RevisionBeingProcessed')">Revisions Being Processed</a><span class="badge badge-secondary"><%: ViewData["ReBeingProcessedNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('Deleted')">Declined Revision </a><span class="badge badge-secondary"><%: ViewData["DeclinedReNum"]%></span><br>
                </div>
                <div class="form-title">
                    <h3>Completed</h3>
                </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('SubWithDecision')">Submissions with a Decision</a><span class="badge badge-secondary"><%: ViewData["CompNum"]%></span><br>
                </div>
            </div> 
          </div>        
        <br><br>
 <div class=container>
<div class="progress" style=" height:25px">
    <div class="progress-bar" role="progressbar" style="width: 33.33%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">第一轮</div>
    <div class="col-md-4" align="center">第二轮
    </div>
    <div class="col-md-4" align="center">第三轮
    </div>
</div>
</div>
    </main>

    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>

</body>

</html>

</asp:Content>
