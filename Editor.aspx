<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">


   <html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Editor Main Menu</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <!-- font-awesome -->
    
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">

    <!-- datepick -->
   
</head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>

    <!-- 顶部导航栏 -->
    <!-- 主体部分 -->
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <div class="base-card mt-4">
			<div class="form-title">
                <h3>Reviews Complete:</h3>
            </div>
           <div class="content pl-5 mb-4 mainpage-card">
			    <a class="btn" onclick="javascript:window.open('ReviewsComplete')">0 Reviews Complete</a><span class="badge badge-secondary"><%: ViewData["zero"]%></span><br>
			    <a class="btn" onclick="javascript:window.open('OneReviews')">1 Reviews Complete</a><span class="badge badge-secondary"><%: ViewData["one"]%></span><br>
				<a class="btn" onclick="javascript:window.open('TwoReviews')">2 Reviews Complete</a><span class="badge badge-secondary"><%: ViewData["two"]%></span><br>
				<a class="btn" onclick="javascript:window.open('ThreeReviews')">3 Reviews Complete</a><span class="badge badge-secondary"><%: ViewData["three"]%></span><br>
				<a class="btn" onclick="javascript:window.open('FourReviews')">4+ Reviews Complete</a><span class="badge badge-secondary"><%: ViewData["four"]%></span><br>
			</div>
           <%-- <div class="form-title">
                <h3>Search</h3>
            </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('SearchSubmissions')">Search Submissions</a><br> 
					<a class="btn" onclick="javascript:window.open('SearchPeople')">Search People</a><br>     
			    </div>--%>
            <div class="form-title">
                <h3>Editor "To Do" List</h3>
            </div>
		    
                    <!-- editor -->
                <div class="content pl-5 mb-4 mainpage-card">
<%--				    <a class="btn" onclick="javascript:window.open('Pending')">My Pending Assignments</a><span class="badge badge-secondary"><%:ViewData["pendingNum"]%></span><br>
--%>					<a class="btn" onclick="javascript:window.open('NewAssignments')">New Assignments</a><span class="badge badge-secondary"><%:ViewData["newAsmntNum"]%></span><br>
                    <a class="btn" onclick="javascript:window.open('LateReviews')">Submissions with One or More Late Reviews</a><span class="badge badge-secondary"><%:ViewData["delayNum"]%></span><br>
				</div>
            <div class="form-title">
                <h3>Submissions with Decisions</h3>
            </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('Revise')">My Assignments with Decisions</a><span class="badge badge-secondary"><%:ViewData["reviseNum"]%></span><br>
                    <a class="btn"onclick="javascript:window.open('Decide')">My Assignments with Final Disposition</a><span class="badge badge-secondary"><%:ViewData["decideNum"]%></span>
                </div>
            <div class="form-title">
                <h3>Administrative Functions</h3>
            </div>
                <div class="content pl-5 mb-4 mainpage-card">
                    <a class="btn" onclick="javascript:window.open('SendEmail')">Send Reminder Letters</a>
                        
                </div>
			</div>	
        </div><br>
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

    <!-- 底部 -->


    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <!-- datepick -->
    <script src="/Scripts/sgxt/bootstrap-datepicker.min.js"></script>
    <script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
   
    <script>
        $('.input-group.date.datepick').datepicker()
    </script>

</body>

</html>

</asp:Content>
