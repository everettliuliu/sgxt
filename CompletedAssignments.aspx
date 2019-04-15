<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Pending Assignments</title>
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
    <div class="table-container">
        <div class="title">
            <h3>Reviewer Main Menue</h3>
        </div>
        <div class="base-card">
            <form method="post" enctype="multipart/form-data"  action="">
            <div class="form-title">
                <h3>Completed Assignments</h3>
            </div>
            <div class="content mb-4 mainpage-card">
                <table id="baseTable" class="table table-hover table-bordered table-sm">
                    <thead class="detail-table">
                    <tr class="table-tr">
                        <th scope="col" style="width:90px">Action</th>
                        <th scope="col" style="width:90px;">My<br>Reviewer<br>Number</th>
                        <th scope="col" style="width:90px;">Manuscript<br>Number</th>
                        <th scope="col">Article<br>Type</th>
                        <th scope="col">Article<br>Title</th>
                        <th scope="col" style="width:90px;">Status<br>Date</th>
                        <th scope="col" style="width:90px;">Current</br>Status</th>
                        <th scope="col" style="width:90px;">Date<br>Reviewer<br>Invited</th>
                        
                      <%--  <th scope="col" style="width:90px;">Date</br>Review<br>Due</th>--%>
                        <th scope="col" style="width:90px;">Date</br>Review<br>Completed</th>
                    
                        <th scope="col" style="width:90px;">Editor's</br>Name</th>
                        <th scope="col" style="width:90px;">Corr-</br>Author</th>
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

<!-- 底部 -->

    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <script src="/Scripts/sgxt/datatables.min.js"></script>
    <script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
    <script>
    $(function () {
	//console.log()
    $.ajax({
        async: true,
        cache: false,
        timeout: 60 * 60 * 1000,
        data:  null,
        type: "post",
        datatype: "JSON",
        url: "/sgxt/CompletedAssignment",
        contentType : "application/x-www-form-urlencoded",
        success:function(data)
        {   
           $.each(data,function(i,item){
                console.log(data)
                $("#baseTable").append(`<tr>
								<td>
                                    <div class="dropdown show">
                                        <a class="btn btn-secondary dropdown-toggle action-btn" href="#" role="button"
                                            id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Action
                                        </a>
                                           
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                            <div style="position: relative;text-indent:1em" >
                                                <div >View Submission</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="View Submission${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                             <div style="position: relative;text-indent:1em" >
                                                <div >File inventory</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="File inventory${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                           <div style="position: relative;text-indent:1em" >
                                                <div >View Decision</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="ViewReviewerSubmission${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                        </div>
                                    </div>
                                </td>
								<td>${item.reviewnumber}</td>
                                <td>CC-19-${item.id}</td>
                                <td>${item.articleType}</td>
                                <td>${item.title}</td>
								<td>${item.submitreviewdate}</td>
                                <td>Completed</td>
								<td>${item.inviteddate}</td>
								<td>${item.submitreviewdate}</td>								
								<td>${item.editorname}</td>
								<td>${item.authorname}</td>
                            </tr>`)
                            });
             
        },
        error: function (result) {
			alert("WRONG");
            //console.log("error_change");
        },
    });
});
</script>


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
