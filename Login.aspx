<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_NullPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="/Content/images/sgxt/favicon.ico">
  <title>Login</title>
  <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
  <link rel="stylesheet" href="/Content/css/sgxt/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="/Content/css/sgxt/login.css" type="text/css">

</head>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<body>
<form method="post" action="">
  <div class="main">
    <div class="login-logo text-center mb-5">
      <a class="navbar-brand" href="">
        <img class="mb-1" src="/Content/images/sgxt/logo.png" width="72" height="72"></br>
        CEEP-BIT
      </a>
    </div>
    <form class="form-signin">
      <div class="text-center mb-4 mt-2">
        <h1 class="h2 font-weight-normal">Please sign in</h1>
      </div>
      <hr>
      <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>
      </div>
      <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
      </div>
      <div class="form-group">
        <label for="RoleFormControlSelect1">Sign As</label>
        <select class="form-control" id="RoleFormControlSelect1" name="permission">
          <option value="1">Author</option>
          <option value="3">Reviewer</option>
          <option value="7">Editor</option>
        </select>
      </div>

      <div class="mt-4 mb-4">
        <button class="btn btn-lg btn-primary btn-block" name="SUBMIT" type="submit">Sign in</button>
      </div>
      <hr>
     <%-- <a href="#">I forgot my password</a><br>--%>
      <a href="./Register" class="text-center">Register a new membership</a>
    </form>
  </div>
    <script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
  <script src="/Scripts/sgxt/bootstrap.bundle.min.js"></script>
  <script src="/Scripts/sgxt/bootstrap.js"></script>
</form>
</body>

</html>
</asp:Content>
