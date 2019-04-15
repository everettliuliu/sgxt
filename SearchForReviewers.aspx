<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="../static/favicon.ico">
    <title>Search For Reviewers</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/table.css" type="text/css">
</head>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<body>


<main role="main" class="container">
        
    <div class="table-container">
        <div class="title">
            <h3 align="center">Search For Reviewers-Manuscript Number <span name="manuscriptnumber"> APEN-D-18-11400</span></h3>
            <h3 align="center">"Comparison of Marginal and Average Emission Factors for Passengers Transportation Modes"</h3>
        </div>
        <div align="center">
            <a href="#">View Reviewers and Comments</a>&nbsp;&nbsp;
            <a href="#">Manuscript Details</a>&nbsp;&nbsp;
            <a href="#">View Submission</a>&nbsp;&nbsp;
            <a href="#">Invite Reviewer from outside this Journal</a>
        </div><br>
        <div class="base-card">
                <div class="form-title">
                    <h3>Reviewer Search</h3>
                </div>
             <div class="content mb-4 mainpage-card">
                 &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                <label class="form-check-label" for="exampleRadios1">
                    Search My Publication
                </label>&nbsp;&nbsp;
                <select>
                    <option value="volvo">Search For Reviewers</option>
                    <option value="saab">Search By Classification</option>
                </select>&nbsp;&nbsp;
                <a>From</a>
                <select>
                    <option value="volvo">All Users</option>
                    <option value="saab">All Reviewers</option>
                </select>
				<button type="button" class="btn btn-outline-secondary btn-sm" onclick=>Go</button><br>
                <a href="#">Search for and find reviewers</a><br>
                <a>A tool offered by Elsevier to help you find reviewers.Want to know more?</a>&nbsp;&nbsp;<a href="#">Find out.</a>
            </div>
        </div>
            <div class="base-card">
                <div class="form-title">
                    <h3>Select Reviewers</h3>
                </div>
                <div class="content mb-4 mainpage-card">
                    <div align="center">
                        <a href="#">Help with Searching</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="#">Insert Special Character</a>
                    </div>
                    <table class="table table-hover table-bordered">
                        <tbody class="table-tbody">
                          <tr>
                            <td>
                                <h4>Criterion</h4>
                             <select class="form-control" id="Select1">
                                <option value="">Last Name</option>
                                <option value="">First Name</option>
                                 <option value="">Email Address</option>
                                 <option value="">Position</option>
                                 <option value="">Department</option>
                                 <option value="">Institution</option>
                                 <option value="">City</option>
                                 <option value="">State</option>
                                 <option value="">Country</option>
                                 <option value="">Personal Classification</option>
                                 <option value="">Personal Keywords</option>
                            </select>
                            <select class="form-control" id="Select2">
                                <option value="">Last Name</option>
                                <option value="">First Name</option>
                                <option value="">Email Address</option>
                                <option value="">Position</option>
                                <option value="">Department</option>
                                <option value="">Institution</option>
                                <option value="">City</option>
                                <option value="">State</option>
                                <option value="">Country</option>
                                <option value="">Personal Classification</option>
                                <option value="">Personal Keywords</option>
                             </select>
                                <select class="form-control" id="Select3">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                              </select>
                                <select class="form-control" id="Select4">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                                </select>
                                <select class="form-control" id="Select5">
                                    <option value="">Last Name</option>
                                    <option value="">First Name</option>
                                    <option value="">Email Address</option>
                                    <option value="">Position</option>
                                    <option value="">Department</option>
                                    <option value="">Institution</option>
                                    <option value="">City</option>
                                    <option value="">State</option>
                                    <option value="">Country</option>
                                    <option value="">Personal Classification</option>
                                    <option value="">Personal Keywords</option>
                                </select>
                                
                            </td>
                            <td>
                                <h4>Selector</h4>
                                
                                <select class="form-control" id="Control1">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control2">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control3">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control4">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                                <select class="form-control" id="Control5">
                                    <option value="">Begin With</option>
                                    <option value="">Is Equal To</option>
                                    <option value="">Is Not Equal To</option>
                                    <option value="">Contains</option>
                                    <option value="">Ends With</option>
                                </select>
                            </td>
                              <td>
                                  <h4>Value</h4>

                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                                      <input class="form-control" type="value"  aria-describedby="emailHelp" placeholder="">
                              </td>
                          </tr>

                        </tbody>
                      </table>

                </div>
                
        </div>
<div align="center">
    <button type="button" class="btn btn-outline-secondary">Clear</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" class="btn btn-outline-secondary">Search</button><br>
    <a href="#">Invite Reviewer from outside this Journal</a><br>
    <a href="#">Reviewer Selection Summary</a><br>
    <a href="#">Editor Main Menu</a>
</div><br><br><br>
    </div>
</main>
<script src="/Scripts/sgxt/jquery-3.3.1.slim.min.js"></script>
<script src="/Scripts/sgxt/bootstrap.bundle.min.js" ></script>
<script src="/Scripts/sgxt/bootstrap.js" ></script>

</body>
</html>

</asp:Content>
