<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Editor submit recommendation</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <link href="/Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="/Content/css/sgxt/style.css" rel="stylesheet">
</head>
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
    .color{background:#f8f8f8}
    .color2{color:red}
    .btnn2{height:30px;borber:1px solid white}

</style>
<body>
<div class="container color">
    <form method="post" action="">
    <div align="center">
        <h2><%: ViewData["title"]%></h2>
        <a align="center"><b>Recommendation</b></a>
        <select name="decide">
               
            <option value="Accept">Accept</option>
            <option value="Reject">Reject</option>
            <option value="MajorRevise">MajorRevise</option>     
            <option value="MinorRevise">MinorRevise</option> 
        </select>
    </div>
    <br>
      <div class="form-group">
        <div class="card">
            <div class="card-header">
                <b>Reviewer's Comments to Author：</b><br><span><%: ViewData["ToAuthor"]%></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="card">
            <div class="card-header">
                <b>Reviewer's Comments to Editor：</b><br><span><%: ViewData["ToEditor"]%></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="card">
            <div class="card-header">
                <b>Editor's Comments to Author：</b>
            </div>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="8" name="ToAuthor"></textarea>
        </div>
    </div>
    <%--<div class="input-group mb-3">
        <div class="input-group-prepend">
            <button class="btn" type="button">Decription</button>
        </div>
        <input type="text" class="form-control " placeholder="" aria-label="" aria-describedby="basic-addon1">
        <a href="#">Insert Special Character</a>
    </div>

    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <button class="btn" type="button">File &nbsp;name</button>
        </div>
        <div class="custom-file">
        <input type="file" class="custom-file-input" id="exampleInputFile" >
            <label class="custom-file-label" for="exampleInputFile" >Choose file</label>
        <!--<button type="button" class="btn btn-secondary">Attach this file</button>-->
        </div>
    </div>--%>
    <div align="center">
        <div class="btn-group" role="group" aria-label="Basic example" align="center">
            <button type="submit" class="btn btn-outline-secondary" name="submit_1" value="Cancel">Cancel</button>
          
            <button type="submit" class="btn btn-outline-secondary" name="submit_1" value="Proceed" onclick="rec();return false;">Proceed</button>
        </div>
    </div>
    </form>
</div>
<br><br><br><br><br>

<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.js"></script>
<!-- DataTables -->
<script src="/Scripts/sgxt/datatables.min.js"></script>
<script src="/Scripts/sgxt/jquery-1.4.1.js"></script>
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
        var mymessage = confirm("确定提交您的意见？");
        if (mymessage == true) {
            method = "post";
            action = "modifyParam.action";
            submit();
        }
    }
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
        url: "/sgxt/LateReview",
        contentType : "application/x-www-form-urlencoded",
        success:function(data)
        {   
           $.each(data,function(i,item){
                console.log()
                $("#baseTable").append(`<tr>
                                <td>CC-19-${item.id}</td>
                                <td>${item.articleType}</td>
                                <td>${item.title}</td>
                                <td>Amir Abolhassani</td>
                                <td>Aug 24, 2018</td>
                                <td>Nov 14, 2019</td>
                                <td>Under Review</td>
                                <td>Accept</td>
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
                                            <div style="position: relative;text-indent:1em">
                                                <div >Details</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="Details${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                            <div style="position: relative;text-indent:1em">
                                                <div >History</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="History${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                            <div style="position: relative;text-indent:1em">
                                                <div >File inventory</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="File inventory${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                            <div style="position: relative;text-indent:1em">
                                                <div >Invite Reviewers</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="Invite Reviewers${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                            <div style="position: relative;text-indent:1em">
                                                <div >Submit Comments</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="Submit Comments${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                            <div style="position: relative;text-indent:1em">
                                                <div >Send Email</div>
                                                <input style="position: absolute;opacity: 0;left: 0; top:0" type="submit" value="Send Email${item.id}" data-paperid="${item.id}" name="submit_1" class="dropdown-item" href="#" ></a>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>`)
                            });
             
        },
        error: function (result) {
			alert("请求失败，请稍后重试");
            //console.log("error_change");
        },
    });
});
</script>
</body>
</html>

</asp:Content>
