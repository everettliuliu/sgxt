<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Search Reveiwers </title>
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
            
            
			<div class="base-card">
                <div class="form-title">
                    <h3 align="center ">Reveiwers Candidates<h3>
				</div>
                <div class="content mb-4 mainpage-card">   
                    <form method="post" enctype="multipart/form-data"  action="">
                    <input name = "searchpeople" id ="searchpeople" type="text" placeholder="输入搜索内容" >
                    <button name ="action" id="action" value="search" >search</button><br><br>
                    <p>Select a checkbox by each person you wish to select as a Reviewer.</p>
                    </form>
                    <form method="post" enctype="multipart/form-data"  action="">
					<table id="baseTable" class="table table-hover table-bordered table-sm">
                        <thead class="detail-table">
                            <tr class="table-tr">
                                <th scope="col" style="width:150px">Select</th>
                                <th scope="col" style="width:300px">Reviewer Name</th>                               
								<th scope="col" style="width:300px">Classifications</th>
<%--								<th scope="col" tyle="width:150px">Reviewer Statiscatics<br>Agreed Invitations</th>
								<th scope="col" tyle="width:150px">Invitation Statiscatics</th>--%>
                          
                            </tr>
                        </thead>
                        <tbody class="table-tbody">
                     
                        </tbody>
                    </table>                
                    <div align="center">
                        <button type="submit" value="Proceed" name="action" onclick="rec();return false;">Proceed</button><br>
						<%--<a href="#" onclick="javascript:history.go(-1)">Reviewer Selection Summary</a><br>--%>
						<a href="Editor">Editor Main Menu</a>
					</div>
                    </form>
                </div>
            </div>
        </div><br><br>
       
    </main>
    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <!-- DataTables -->
    <script src="/Scripts/sgxt/datatables.min.js"></script>
    <script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
    <script src="/Scripts/sgxt/selectreviewer.js"></script>
 

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
    <script type="text/javascript">

        function rec() {
            var mymessage = confirm("确定邀请所选审稿人？");
            if (mymessage == true) {
                method = "post";
                action = "modifyParam.action";
                submit();
            }
        }
</script>
</body>

</html>

</asp:Content>
