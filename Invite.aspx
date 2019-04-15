<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">


    <html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Reviewer Selection</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <!-- font-awesome -->
    <link href="/Content/css/sgxt/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <!-- datepick -->
    <link href="/Content/css/sgxt/bootstrap-datepicker.min.css" rel="stylesheet">
</head>
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>



    <!-- 主体部分 -->
    <main role="main" class="flex-shrink-0">
  <%--  <form method="post" action="">--%>
        <div class="container">

            <div class="base-card">          
                <div class="form-title">
                    <h3><span name="manuscriptnumber">Suggest Reviewers</span></h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <table class="table table-hover table-bordered table-sm mb-0" id="suggestreviewers">
                        <tbody class="table-tbody detail-table">
                        <tr>
                            <td>name:<%:ViewData["rname"]%><br>Email:<%:ViewData["remail"]%><br>Reason:<%:ViewData["reason"]%><br></td>
                        </tr>
                        <tr>
                            <td>name:<%:ViewData["rname1"]%><br>Email:<%:ViewData["remail1"]%><br>Reason:<%:ViewData["reason1"]%><br></td>
                        </tr>
                        <tr>
                            <td>name:<%:ViewData["rname2"]%><br>Email:<%:ViewData["remail2"]%><br>Reason:<%:ViewData["reason2"]%><br></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="base-card">
            <form method="post" action="">
                <div class="form-title">
                    <h3>Reviewer Search</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                   <br>
                    <a>Search My Publication</a>
                    <select name="xx">
                        <option value="volvo">Search For Reviewers</option>
                        <option value="saab">Search By Classification</option>
                    </select>
                    <a>From</a>
                    <select >
                        <option value="user">All Users</option>
                        <option value="reviews">All Reviewers</option>
                    </select>
                    <button  type="submit" class="btn btn-outline-secondary btn-sm" name="Go" value="Go" onclick=>Go</button><br><br>

                </div>
               </form>
            </div>
            <div class="table-container">
            <div class="base-card">
     
                <div class="form-title">
                    <h3>Select Reviewers</h3>
                </div>
                <div class="content mb-4 mainpage-card">              
                    <p>Invited Reviewers and Linked Alternate Reviewers</p>
                    <table class="table table-hover table-bordered table-sm mb-0" id="invitedreviewer">
                      <thead class="detail-table">
                            <tr class="table-tr">
                                <th scope="col" >Reviewer</br>Id</th>
                                <th scope="col">Reviewer</br>Name</th>
                                <th scope="col" >Current</br>Status</th>                                                
                            </tr>
                        </thead>
                        <tbody class="table-tbody">                           
                        </tbody>
                    </table>
                    <div align="center">
                        <a href="InviteEmail">Request Unregistered Reviewer</a><br>
                        <a href="Editor">Return to Main Menu</a>
                    </div><br><br><br>
               </div>
             
               </div>
                
          </div>
<%--        </form>--%>
    </main>
    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <script src="/Scripts/sgxt/bootstrap-datepicker.min.js"></script>
            <script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
    <script>
        $('.input-group.date.datepick').datepicker()
    </script>
    <script >
    
    $(function () {
	//console.log()
    $.ajax({
        async: true,
        cache: false,
        timeout: 60 * 60 * 1000,
        data:  null,
        type: "post",
        datatype: "JSON",
        url: "/sgxt/InviteJS",
        contentType : "application/x-www-form-urlencoded",
        success:function(data)
        {   
           $.each(data,function(i,item){
                console.log()
                $("#invitedreviewer").append(`<tr>
                                <td>${item.id}</td>
                                <td>${item.firstname}</td>
                                <td>${item.state}</td>
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
</body>

</html>

</asp:Content>
