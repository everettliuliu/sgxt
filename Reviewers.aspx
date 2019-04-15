<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Reviewer Main Menu</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
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
    <!-- 主体部分 -->
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <!--<div class="title">-->
                <!--<h3>Author Main Menue</h3>-->
            <!--</div>-->
            <div class="base-card mt-4">
                <div class="form-title">
                    <h3>Review Assignments</h3>
                </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('NewReviewerInvitations')">New Reviewer Invitations</a><span class="badge badge-secondary"><%: ViewData["NewInvitNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('PendingAssignments')">Pending Assignments</a><span class="badge badge-secondary"><%: ViewData["PendNum"]%></span><br>
					<a class="btn" onclick="javascript:window.open('CompletedAssignments')">Completed Assignments</a><span class="badge badge-secondary"><%: ViewData["CompNum"]%></span><br>
                </div>

                

            </div>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
