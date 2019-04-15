<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Send Ad Hoc Email</title>
    <link href="/Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="/Content/css/sgxt/style.css" rel="stylesheet">
</head>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
    .color{background:#f8f8f8}
    .mile{margin-right:32px}
    .pos{float:right}
    .btn3{height:38px;margin-left:22px}
    .mile2{margin-bottom:22px}
    .mile3{margin-bottom:12px}
</style>
<body>
<main role="main" class="flex-shrink-0">
<div class="container color">
    <div class="card mile3">
        <div align="center">
            <h2>Send E-mail</h2>
        </div>
        <div align="center">
            <p>The journal has pre-configured one or more letters which you may use as a starting point.<br>
            Select a letter,then click Customize Letter to open the letter,insert your comments ,and send the letter.</p>
        </div>
    </div>
</div>
<div class="container color">
    <div align="center">
        <h3>Customize Letter</h3>
    </div>
    <form method="post" action="" enctype="multipart/form-data">
        <div class="content mb-4 mainpage-card">
            <table class="table table-hover table-bordered">
                <tbody class="table-tbody">
                <tr>
                    <td style="width:140px;border-color:white;background:#f8f8f8">From:</td>
                    <td  style="border-color:white;background:#f8f8f8">CeepNews1@inems.org</td>
                </tr>
                <tr>
                    <td style="width:140px;border-color:white;background:#f8f8f8">To:</td>
                    <td style="border-color:white;background:#f8f8f8">
                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="toemail">
                    </td>
                </tr>
                <tr>
                    <td style="width:140px;border-color:white;background:#f8f8f8">Letter Subject:</td>
                    <td style="border-color:white;background:#f8f8f8">
                        <div class="input-group mb-3">
                            <!--<div class="input-group-prepend">-->
                                <!--<span class="input-group-text" id="inputGroup-sizing-default">Default</span>-->
                            <!--</div>-->
                            <input type="text" class="form-control" aria-label="Default" name="Subject" aria-describedby="inputGroup-sizing-default">
                        </div></td>
                </tr>
                </tbody>
            </table>
            <div class="card">
                <div class="card-header">
                    Letter Body：
                </div>
            <textarea class="form-control" name="body" id="exampleFormControlTextarea1" rows="10"></textarea>
        </div>
        </div>

        <div align="center">
            <div class="btn-group" role="group" aria-label="Basic example" align="center">
                <input type="submit" class="btn btn-outline-secondary" onclick="rec();return false;" name="submit_1" value="Send" />
            </div>
        </div>
    </form>
</div>
</main>


</body>
<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.min.js"></script>
<script src="/Scripts/sgxt/Scripts/sgxt.js"></script>
<script type="text/javascript">

    function rec() {
        var mymessage = confirm("确认发送邮件？");
        if (mymessage == true) {
            method = "post";
            action = "modifyParam.action";
            submit();
        }
    }
</script>
</html>

</asp:Content>
