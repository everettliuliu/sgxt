<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_NullPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
 <html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Send Invite Email</title>
    <link href="/Content/css/sgxt/bootstrap.min.css" rel="stylesheet">
    <link href="/Content/css/sgxt/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">

</head>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
    .color{background:#f8f8f8}
    .mile{margin-right:32px}
    .pos{float:right}
    .btn3{height:38px;margin-left:22px}
    .mile2{margin-bottom:22px}
    .mile3{margin-bottom:12px;margin-top:150px}
</style>
<body>
<main role="main" class="flex-shrink-0r">
<div class="container ">
    <div class="card mile3">
        <div align="center">
            <h2>Send Invite Reviewer E-mail</h2>
        </div>
        <div align="center">
            <p>Please Invite Unregisted Reviewer<br>
            Please insert the reviewer's name and Email.</p>
        </div>
    </div>
    <div class="card">
        <div align="center">
            <h3>Edit Letter</h3>
        </div>
        <form method="post" action="" enctype="multipart/form-data" id="defaultForm">
            <div class="content mb-4 mainpage-card" >
                <div class="row form-group has-feedback">
                    <label  class="col-sm-3 col-form-label " >From:</label>

                    <div class="col-sm-4">
                        <label class="col-form-label">CeepNews1@inems.org</label>
                                
                    </div>
                </div>
                <div class="row form-group has-feedback">
                    <label for="invitename" class="col-sm-3 col-form-label " >Name</label>

                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="invitename" name="invitename" required>
                                
                    </div>
                    <small class="form-text text-danger" id="Small1">
                        *req
                    </small>
                </div>
                 <div class="row form-group has-feedback">
                    <label for="toemail" class="col-sm-3 col-form-label " >To:</label>

                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="toemail" name="toemail" required>
                                
                    </div>
                    <small class="form-text text-danger" id="Small2">
                        *req
                    </small>
                </div>
                <div class="row form-group has-feedback">
                    <label for="Subject" class="col-sm-3 col-form-label " >Letter Subject:</label>

                    <div class="col-sm-4">
                        <input type="text" class="form-control" aria-label="Default" value="Reviewer Invite" name="Subject">
                                
                    </div>
                    <small class="form-text text-danger" id="Small3">
                        *req
                    </small>
                </div>


    <%--            <div class="card">
                    <div class="card-header">
                        Letter Body：
                    </div>--%>
    <%--            <label class="form-control" name="body" id="exampleFormControlTextarea1" rows="10">
                编辑邀请您成为网站审稿人，请点击链接登陆。<br>
                网址：<br>
                用户名为该邮件地址<br>
                初始密码为：<br>

                </label>--%>
    <%--        </div>--%>
            </div>

            <div align="center">
                <div class="btn-group" role="group" aria-label="Basic example" align="center">
                    <input type="submit" class="btn btn-outline-secondary" name="submit_1" value="Send" />
                </div>
            </div>
        </form>
    </div>
</div>
</main>


</body>
<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.min.js"></script>
<script src="/Scripts/sgxt/Scripts/sgxt.js"></script>
	<script src="/Scripts/sgxt/bootstrapValidator.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                toemail: {
                    validators: {
                        notEmpty:{
                            message: 'The E-mail Address is required and cannot be empty'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                },
                invitename: {
                    validators: {
                        notEmpty:{
                            message:'The  name is required and cannot be empty'
                        },
                    }
                },
                
            }
        });
        $('#validateBtn').click(function() {
            $('#defaultForm').bootstrapValidator('validate');
        });

        $('#resetBtn').click(function() {
            $('#defaultForm').data('bootstrapValidator').resetForm(true);
        });
	    
		
		
    });
    </script>
</html>

</asp:Content>
