<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

  <html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Details</title>
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
                <h3>Details for Ppaer Number: CC-19-<%:ViewData["ID"]%></h3>
            </div>
            <div class="base-card">
                <div class="form-title">
                    <h3>Details</h3>
                </div>
                <!-- detail table -->
                <div class="content mb-4 mainpage-card">
                    <table class="table table-hover table-bordered table-sm mb-0">
                        <tbody class="table-tbody detail-table">
                            <tr>
                                <th>Corresponding Author:</th>
                                <td>
                                    <%:ViewData["firstname"]%>
                                    <a href="#" class="text-secondary">
                                        <i class="fa fa-envelope"></i>
                                    </a>
                                </td>

                            </tr>
                            <tr>
                                <th>Author Comments:</th>
                                <td><%:ViewData["comments"]%></td>
                            </tr>
                            <tr>
                                <th>Other Author:</th>
                                <td><%:ViewData["firstname1"]%> <%:ViewData["firstname2"]%> <%:ViewData["firstname3"]%> <%:ViewData["firstname4"]%></td>
                            </tr>
                            <tr>
                                <th>Short Title:</th>
                                <td><%:ViewData["title"]%></td>
                            </tr>
                            <tr>
                                <th>Article Type:</th>
                                <td><%:ViewData["articleType"]%></td>
                            </tr>
                            <tr>
                                <th>Section/Category:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Keywords:</th>
                                <td><%:ViewData["keyword"]%></td>
                            </tr>
                            <tr>
                                <th>Classifications:</th>
                                <td><%:ViewData["classfications"]%></td>
                            </tr>
                            <tr>
                                <th>Requested Editor:</th>
                                <td><%:ViewData["rfirstname"]%> <%:ViewData["rfirstname1"]%> <%:ViewData["rfirstname2"]%></td>
                            </tr>
                            <tr>
                                <th>Initial Date Submitted:</th>
                                <td><%:ViewData["submittime"]%></td>
                            </tr>
                         <%--   <tr>
                                <th>Editotial Status Date:</th>
                                <td><%:ViewData["submittime"]%></td>
                            </tr>--%>
                         <%--   <tr>
                                <th>Current Editorial Status:</th>
                                <td>Reviewer Invited</td>
                            </tr>--%>
                           <%-- <tr>
                                <th>Author Days To Revise:</th>
                                <td>20</td>
                            </tr>--%>
                         <%--   <tr>
                                <th>Fianl Deiposition Term:</th>
                                <td>None</td>
                            </tr>
                            <tr>
                                <th>Corresponding Editor:</th>
                                <td>J.Yan</td>
                            </tr>--%>
                            <tr>
                            
                                <th colspan="2">Abstract:</th>
                                <%--<td><%: ViewData["abstracts"]%></td>--%>
                              
                            </tr>

                        </tbody>

                    </table>
                     <div class="bd-example" style="border:1px #ccc solid;border-top: none">
                        <pre class="pre-scrollable" style="max-height:80px"><code><%--&lt;p&gt;Sample text here...&lt;/p&gt;
                        &lt;p&gt;--%><%:ViewData["abstracts"]%><%--&lt;/p&gt;--%>
                        </code></pre>
                    </div>
                </div>
                <!-- detail table end -->

               <%-- <div class="form-title">
                    <h3>Editors</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <!-- editor table 1 -->
                    <table class="table table-hover table-bordered table-sm">
                        <tbody class="table-tbody detail-table">
                            <tr>
                                <th>Name:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Role:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Assigned:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Completed:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Elapsed Days:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Recommendation:</th>
                                <td></td>
                            </tr>
                        </tbody>

                    </table>
                    <!-- editor table 1 end -->                  
                </div>

                <div class="form-title">
                    <h3>Reviewers</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <!-- review table -->
                    <table class="table table-hover table-bordered table-sm">
                        <tbody class="table-tbody detail-table">
                            <tr>
                                <th>Name:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Review Status:</th>
                                <td class="text-danger"></td>
                            </tr>
                            <tr>
                                <th>Date Reviewer Invited:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Review Due:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Elapsed Days:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Inviation Reminders:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Last Reminder Sent:</th>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                    <table class="table table-hover table-bordered table-sm">
                        <tbody class="table-tbody detail-table">
                            <tr>
                                <th>Name:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Review Status:</th>
                                <td class="text-danger"></td>
                            </tr>
                            <tr>
                                <th>Date Reviewer Invited:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Review Due:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Elapsed Days:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Inviation Reminders:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Last Reminder Sent:</th>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                    <table class="table table-hover table-bordered table-sm">
                        <tbody class="table-tbody detail-table">
                            <tr>
                                <th>Name:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Review Status:</th>
                                <td class="text-danger"></td>
                            </tr>
                            <tr>
                                <th>Date Reviewer Invited:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Review Due:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Elapsed Days:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Inviation Reminders:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Date Last Reminder Sent:</th>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- review table end -->
                </div>--%>
                <button class="btn btn-primary" onclick="javascript:history.go(-1)">Return</button>
            </div>
        </div>
    </main>

    <!-- 底部 -->
   

    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.js"></script>
    <%--<script src="/Scripts/sgxt/bootstrap-datepicker-1.8.0-dist/js/bootstrap-datepicker.min.js"></script>--%>
    <script>
        $('.input-group.date.datepick').datepicker()
    </script>

</body>

</html>

</asp:Content>
