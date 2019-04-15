<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_NullPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
<html>	

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <title>Index</title>
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/registration.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">

</head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>
<form method="post" action="">
    <!-- 顶部导航栏 -->
    <header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
       
            <a class="navbar-brand" href="">
                <img src="/Content/images/sgxt/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                CEEP-BIT
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                    </li>

                  
                </ul>
            </div>
            <div class="pull-right nav" id="navbarCollapse">
            <form  method="post" enctype="multipart/form-data"  action="" >
                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="languageDropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Language
                        </a>
                        <div class="dropdown-menu-right dropdown-menu" aria-labelledby="languageDropdownMenuLink">
                            <label  class="btn btn1" value="English" name="action">English</label>
                            <label  class="btn btn1" value="Chinese" name="action">简体中文</label>
                        </div>
                    </li>
              
                  
                  
                </ul>
                
                </form>
            </div>
            

        </nav>
        
</header>

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
                <h3>Registration Page</h3>
            </div>
            <div class="alert" role="alert">
                <p class="text-justify">&bull; To register to use the Elsevier Editorial System, please enter the
                    requested information. Upon successful
                    registration, you will be sent an e-mail with instructions to verify your registration. </p>
                <p class="text-justify">&bull; To register to use the Elsevier Editorial System, please enter the
                    requested information. Required fields
                    have a <span class="text-danger">*</span> next to the label.</p>
                <p class="text-justify">&bull; Please note that we respect your privacy and do not disclose, rent or
                    sell your personal information to any
                    non-affiliated third parties without your consent, except as may be stated in our Privacy Policy.</p>
            </div>
            <div class="base-form">
                 <form method="post" action="" id="defaultForm">
                    <!--基本信息-->
                    <div class="form-title">
                        <h3>Login Information</h3>
                    </div>
                    <div class="content mb-4 mainpage-card">
                        <div class="row form-group has-feedback">
                            <label for="inputEmail" class="col-sm-3 col-form-label " >E-mail Address</label>

                            <div class="col-sm-4">
                                <input type="email" class="form-control form-control-sm" id="inputEmail" name="email"
                                    aria-describedby="emailHelp" required>
                                
                            </div>
                            <small class="form-text text-danger" id="emailHelp">
                                *req
                            </small>
                        </div>
                        <!--<div class="row">-->
                        <!--<label for="inputEmail3" class="col-sm-3 col-form-label ">Confirm E-mail Address</label>-->
                        <!--<div class="col-sm-4">-->
                        <!--<input type="email" class="form-control form-control-sm" id="inputEmail3" aria-describedby="emailHelp1" required>-->
                        <!--</div>-->
                        <!--<small class="form-text text-danger" id="emailHelp1">-->
                        <!--*req-->
                        <!--</small>-->
                        <!--</div>-->
                        <div class="row form-group has-feedback">
                            <label for="inputPassword" class="col-sm-3 col-form-label  ">Password</label>
                            <div class="col-sm-4">
                                <input type="password" class="form-control form-control-sm" id="inputPassword" name="password" required>
                            </div>
                            <small class="form-text text-danger">
                                *req
                            </small>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="inputPassword1" class="col-sm-3 col-form-label  ">Confirm Password</label>
                            <div class="col-sm-4">
                                <input type="password" class="form-control form-control-sm" id="inputPassword1" name="confirm_password" required>
                            </div>
                            <small class="form-text text-danger">
                                *req
                            </small>
                        </div>
                    </div>
                    <!--个人信息-->
                    <div class="form-title">
                        <h3>Personal Information</h3>
                    </div>
                    <div class="content mb-4 mainpage-card">
                        <div class="row form-group has-feedback">
                            <label for="title" class="col-sm-3 col-form-label ">Title</label>
                            <div class="col-sm-4">
                                <select class="custom-select custom-select-sm " id="title" name="title">
                                    <option value="0" selected>Please choose a title</option>
                                    <option value="dr">Dr.</option>
                                    <option value="miss">Miss</option>
                                    <option value="mr">Mr.</option>
                                    <option value="mrs">Mrs.</option>
                                    <option value="ms">Ms.</option>
                                    <option value="professor">Professor</option>
                                </select>
                            </div>
                            <small class="form-text text-danger">
                                *req
                            </small>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="firstname" class="col-sm-3 col-form-label ">Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="firstname" name="firstname"
                                    aria-describedby="firstnameHelp" required>
                            </div>
                            <small class="form-text text-danger" id="firstnameHelp">
                                *req
                            </small>
                        </div>
                       <%-- <div class="row">
                            <label for="middlename" class="col-sm-3 col-form-label ">Middle Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="middlename" name="middlename">
                            </div>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="lastname" class="col-sm-3 col-form-label ">Last Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="lastname" name="lastname"
                                    aria-describedby="lastnameHelp" required>
                            </div>
                            <small class="form-text text-danger" id="lastnameHelp">
                                *req
                            </small>
                        </div>--%>
                        <div class="row">
                            <label for="degree" class="col-sm-3 col-form-label ">Degree</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="degree" name="degree">
                            </div>
                            <small class="form-text">
                                (Ph.D., M.D., Jr., etc.)
                            </small>
                        </div>
                        <div class="row">
                            <label for="preferredName" class="col-sm-3 col-form-label ">Preferred Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="preferredName" name="preferredName">
                            </div>
                            <small class="form-text">
                                (nickname)
                            </small>
                        </div>
                        <div class="row">
                            <label for="telephoneNumber" class="col-sm-3 col-form-label ">Telephone Number</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="telephoneNumber" name="telephoneNumber">
                            </div>
                        </div>
                        <div class="row">
                            <label for="faxNumber" class="col-sm-3 col-form-label ">Fax Number</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="faxNumber" name="faxNumber">
                            </div>
                        </div>
                        <div class="row">
                            <label for="secondaryEmail" class="col-sm-3 col-form-label ">Secondary E-mail</label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control form-control-sm" id="secondaryEmail" name="secondaryEmail"
                                    maxlength="191" multiple>
                            </div>
                            <small style="width:41%;">
                                (Multiple e-mail addresses should be separated by a comma. A maximum of 191 characters
                                is
                                allowed)
                            </small>
                        </div>
                    </div>
                    <!--机构信息Institution Related Information-->
                    <div class="form-title">
                        <h3>Institution Related Information</h3>
                    </div>
                    <div class="content mb-4 mainpage-card">
                        <div class="row">
                            <label for="position" class="col-sm-3 col-form-label ">Telephone Number</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="position" name="position">
                            </div>
                        </div>
                        <div class="row">
                            <label for="institution" class="col-sm-3 col-form-label ">Institution</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="institution" name="institution">
                            </div>
                        </div>
                        <div class="row">
                            <label for="department" class="col-sm-3 col-form-label ">Department</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="department" name="department">
                            </div>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="streetAdress" class="col-sm-3 col-form-label ">Street Adress</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="streetAdress" name="streetAdress"
                                    aria-describedby="streetAdressHelp" required>
                            </div>
                            <small class="form-text text-danger" id="streetAdressHelp">
                                *req
                            </small>
                        </div>
           
                        <div class="row form-group has-feedback">
                            <label for="city" class="col-sm-3 col-form-label ">City</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="city" name="city" required>
                            </div>
                            <small class="form-text text-danger">
                                *req
                            </small>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="country" class="col-sm-3 col-form-label ">Country</label>
                            <div class="col-sm-6">
                                <select class="custom-select custom-select-sm " id="country" name="country" required>
                                    <option value="0" selected>Please choose a country</option>
                                    <option value="4">Afghanistan
                                    </option>

                                    <option value="296">Åland Islands
                                    </option>

                                    <option value="5">Albania
                                    </option>

                                    <option value="6">Algeria
                                    </option>

                                    <option value="7">American Samoa
                                    </option>

                                    <option value="8">Andorra
                                    </option>

                                    <option value="9">Angola
                                    </option>

                                    <option value="10">Anguilla
                                    </option>

                                    <option value="11">Antarctica
                                    </option>

                                    <option value="12">Antigua and Barbuda
                                    </option>

                                    <option value="13">Argentina
                                    </option>

                                    <option value="14">Armenia
                                    </option>

                                    <option value="15">Aruba
                                    </option>

                                    <option value="3">Australia
                                    </option>

                                    <option value="16">Austria
                                    </option>

                                    <option value="17">Azerbaijan
                                    </option>

                                    <option value="18">Bahamas
                                    </option>

                                    <option value="19">Bahrain
                                    </option>

                                    <option value="20">Bangladesh
                                    </option>

                                    <option value="21">Barbados
                                    </option>

                                    <option value="22">Belarus
                                    </option>

                                    <option value="23">Belgium
                                    </option>

                                    <option value="24">Belize
                                    </option>

                                    <option value="25">Benin
                                    </option>

                                    <option value="26">Bermuda
                                    </option>

                                    <option value="27">Bhutan
                                    </option>

                                    <option value="287">Bolivia, Plurinational State of
                                    </option>

                                    <option value="292">Bonaire, Sint Eustatius and Saba
                                    </option>

                                    <option value="29">Bosnia and Herzegovina
                                    </option>

                                    <option value="30">Botswana
                                    </option>

                                    <option value="31">Bouvet Island
                                    </option>

                                    <option value="32">Brazil
                                    </option>

                                    <option value="236">British Indian Ocean Territory
                                    </option>

                                    <option value="33">Brunei Darussalam
                                    </option>

                                    <option value="34">Bulgaria
                                    </option>

                                    <option value="35">Burkina Faso
                                    </option>

                                    <option value="36">Burundi
                                    </option>

                                    <option value="306">Cabo Verde
                                    </option>

                                    <option value="37">Cambodia
                                    </option>

                                    <option value="38">Cameroon
                                    </option>

                                    <option value="2">Canada
                                    </option>

                                    <option value="40">Cayman Islands
                                    </option>

                                    <option value="41">Central African Republic
                                    </option>

                                    <option value="42">Chad
                                    </option>

                                    <option value="43">Chile
                                    </option>

                                    <option value="44">China
                                    </option>

                                    <option value="45">Christmas Island
                                    </option>

                                    <option value="46">Cocos (Keeling) Islands
                                    </option>
                                </select>
                            </div>
                            <small class="form-text text-danger">
                                *req
                            </small>
                        </div>
                        <div class="row">
                            <label for="state" class="col-sm-3 col-form-label ">State or Province</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="state" name="state">
                            </div>
                        </div>
                        <div class="row">
                            <label for="zip" class="col-sm-3 col-form-label ">Zip or Postal Code</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="zip" name="zip">
                            </div>
                        </div>

                    </div>
                    <div class="form-title">
                        <h3>Areas of Interest or Expertise</h3>
                    </div>
                    <div class="content mainpage-card">
                        <div class="alert alert-danger" role="alert">
                            Please indicate your areas of expertise by clicking the button(s) below and entering the
                            requested information on the following screen.
                        </div>
                        <div align="center">
                            <b>Classifications:</b><br>
                            <select style="width:300px" size="3" multiple="MULTIPLE" id="myresult">
							</select><br><br>
							<input type="button" class="btn btn-primary" onclick="sclass()" value="Select Classifications">		
                        </div>
							<div  class="base-card" id="showclass" style="display:none" >
								<div  class="warningbox" style="text-align:center">		
									<h3>Select Personal Classifications</h3>
									<span>Please identify your areas of interest and specialization by selecting one or more classifications from the list below.	
									</br>To save changes you must click "Submit" before you leave this window. </span>
								</div>
								<table align="center" >
									<tr>
										<td>
										<select style="width:300px" id="myselect" multiple="MULTIPLE" size="10" onchange="selectChange()"name="classfications">  
											<option value="主报告1第一章">主报告1第一章</option>
                                            <option value="主报告1第二章">主报告1第二章</option>
                                            <option value="主报告1第三章">主报告1第三章</option>
                                            <option value="主报告1第四章">主报告1第四章</option>
                                            <option value="主报告1第五章">主报告1第五章</option>
                                            <option value="主报告1第六章">主报告1第六章</option>
                                            <option value="主报告1第七章">主报告1第七章</option>
                                            <option value="主报告1第八章">主报告1第八章</option>
                                            <option value="主报告1第九章">主报告1第九章</option>
                                            <option value="主报告1第十章">主报告1第十章</option>
                                            <option value="主报告1第十一章">主报告1第十一章</option>
                                            <option value="主报告1第十二章">主报告1第十二章</option>

                                            <option value="主报告2第一章">主报告2第一章</option>
                                            <option value="主报告2第二章">主报告2第二章</option>
                                            <option value="主报告2第三章">主报告2第三章</option>
                                            <option value="主报告2第四章">主报告2第四章</option>
                                            <option value="主报告2第五章">主报告2第五章</option>
                                            <option value="主报告2第六章">主报告2第六章</option>
                                            <option value="主报告2第七章">主报告2第七章</option>
                                            <option value="主报告2第八章">主报告2第八章</option>
                                            <option value="主报告2第九章">主报告2第九章</option>
                                            <option value="主报告2第十章">主报告2第十章</option>

                                            <option value="主报告3第一章">主报告3第一章</option>
                                            <option value="主报告3第二章">主报告3第二章</option>
                                            <option value="主报告3第三章">主报告3第三章</option>
                                            <option value="主报告3第四章">主报告3第四章</option>
                                            <option value="主报告3第五章">主报告3第五章</option>
                                            <option value="主报告3第六章">主报告3第六章</option>
                                            <option value="主报告3第七章">主报告3第七章</option>
                                            <option value="主报告3第八章">主报告3第八章</option>
                                            <option value="主报告3第九章">主报告3第九章</option>
                                            <option value="主报告3第十章">主报告3第十章</option>

                                            <option value="主报告4第一章">主报告4第一章</option>
                                            <option value="主报告4第二章">主报告4第二章</option>
                                            <option value="主报告4第三章">主报告4第三章</option>
                                            <option value="主报告4第四章">主报告4第四章</option>
                                            <option value="主报告4第五章">主报告4第五章</option>
                                            <option value="主报告4第六章">主报告4第六章</option>
                                            <option value="主报告4第七章">主报告4第七章</option>
                                            <option value="主报告4第八章">主报告4第八章</option>
                                            <option value="主报告4第九章">主报告4第九章</option>

                                            <option value="专题报告1第一章">专题报告1第一章</option>
                                            <option value="专题报告1第二章">专题报告1第二章</option>
                                            <option value="专题报告1第三章">专题报告1第三章</option>
                                            <option value="专题报告1第四章">专题报告1第四章</option>
                                            <option value="专题报告1第五章">专题报告1第五章</option>
                                            <option value="专题报告1第六章">专题报告1第六章</option>
                                            <option value="专题报告1第七章">专题报告1第七章</option>
                                            <option value="专题报告1第八章">专题报告1第八章</option>
                                            <option value="专题报告1第九章">专题报告1第九章</option>
                                            <option value="专题报告1第十章">专题报告1第十章</option>
                                            <option value="专题报告1第十一章">专题报告1第十一章</option>
                                            <option value="专题报告1第十二章">专题报告1第十二章</option>
                                            <option value="专题报告1第十三章">专题报告1第十三章</option>
                                            <option value="专题报告1第十四章">专题报告1第十四章</option>
                                            <option value="专题报告1第十五章">专题报告1第十五章</option>
                                            <option value="专题报告1第十六章">专题报告1第十六章</option>
                                            <option value="专题报告1第十七章">专题报告1第十七章</option>
                                            <option value="专题报告1第十八章">专题报告1第十八章</option>
                                            <option value="专题报告1第十九章">专题报告1第十九章</option>
                                            <option value="专题报告1第二十章">专题报告1第二十章</option>
                                            <option value="专题报告1第二十一章">专题报告1第二十一章</option>
                                            <option value="专题报告1第二十二章">专题报告1第二十二章</option>
                                            <option value="专题报告1第二十三章">专题报告1第二十三章</option>
                                            <option value="专题报告1第二十四章">专题报告1第二十四章</option>
                                            <option value="专题报告1第二十五章">专题报告1第二十五章</option>
                                            <option value="专题报告1第二十六章">专题报告1第二十六章</option>
                                            <option value="专题报告1第二十七章">专题报告1第二十七章</option>
                                            <option value="专题报告1第二十八章">专题报告1第二十八章</option>
                                            <option value="专题报告1第二十九章">专题报告1第二十九章</option>
                                            <option value="专题报告1第三十章">专题报告1第三十章</option>

                                            <option value="专题报告2第一章">专题报告2第一章</option>
                                            <option value="专题报告2第二章">专题报告2第二章</option>
                                            <option value="专题报告2第三章">专题报告2第三章</option>
                                            <option value="专题报告2第四章">专题报告2第四章</option>

                                            <option value="专题报告3第一章">专题报告3第一章</option>
                                            <option value="专题报告3第二章">专题报告3第二章</option>
                                            <option value="专题报告3第三章">专题报告3第三章</option>

                                            <option value="专题报告4第一章">专题报告4第一章</option>
                                            <option value="专题报告4第二章">专题报告4第二章</option>
                                            <option value="专题报告4第三章">专题报告4第三章</option>
                                            <option value="专题报告4第四章">专题报告4第四章</option>
                                            <option value="专题报告4第五章">专题报告4第五章</option>
                                            <option value="专题报告4第六章">专题报告4第六章</option>
                                            <option value="专题报告4第七章">专题报告4第七章</option>
                                            <option value="专题报告4第八章">专题报告4第八章</option>

                                            <option value="专题报告5第一章">专题报告5第一章</option>
                                            <option value="专题报告5第二章">专题报告5第二章</option>
                                            <option value="专题报告5第三章">专题报告5第三章</option>
                                            <option value="专题报告5第四章">专题报告5第四章</option>

                                            <option value="专题报告6第一章">专题报告6第一章</option>
                                            <option value="专题报告6第二章">专题报告6第二章</option>
                                            <option value="专题报告6第三章">专题报告6第三章</option>
                                            <option value="专题报告6第四章">专题报告6第四章</option>
                                            <option value="专题报告6第五章">专题报告6第五章</option>
                                            <option value="专题报告6第六章">专题报告6第六章</option>
                                            <option value="专题报告6第七章">专题报告6第七章</option>

                                            <option value="专题报告7第一章">专题报告7第一章</option>
                                            <option value="专题报告7第二章">专题报告7第二章</option>
                                            <option value="专题报告7第三章">专题报告7第三章</option>
                                            <option value="专题报告7第四章">专题报告7第四章</option>
                                            <option value="专题报告7第五章">专题报告7第五章</option>
                                            <option value="专题报告7第六章">专题报告7第六章</option>

                                            <option value="专题报告8第一章">专题报告8第一章</option>
                                            <option value="专题报告8第二章">专题报告8第二章</option>
                                            <option value="专题报告8第三章">专题报告8第三章</option>
                                            <option value="专题报告8第四章">专题报告8第四章</option>
                                            <option value="专题报告8第五章">专题报告8第五章</option>
                                            <option value="专题报告8第六章">专题报告8第六章</option>

                                            <option value="专题报告9第一章">专题报告9第一章</option>
                                            <option value="专题报告9第二章">专题报告9第二章</option>
                                            <option value="专题报告9第三章">专题报告9第三章</option>
                                            <option value="专题报告9第四章">专题报告9第四章</option>
                                            <option value="专题报告9第五章">专题报告9第五章</option>
                                            <option value="专题报告9第六章">专题报告9第六章</option>
                                            <option value="专题报告9第七章">专题报告9第七章</option>
                                            <option value="专题报告9第八章">专题报告9第八章</option>
                                            <option value="专题报告9第九章">专题报告9第九章</option>
                                            <option value="专题报告9第十章">专题报告9第十章</option>
                                            <option value="专题报告9第十一章">专题报告9第十一章</option>

                                            <option value="专题报告10第一章">专题报告10第一章</option>
                                            <option value="专题报告10第二章">专题报告10第二章</option>
                                            <option value="专题报告10第三章">专题报告10第三章</option>
                                            <option value="专题报告10第四章">专题报告10第四章</option>
                                            <option value="专题报告10第五章">专题报告10第五章</option>

                                            <option value="专题报告11第一章">专题报告11第一章</option>
                                            <option value="专题报告11第二章">专题报告11第二章</option>
                                            <option value="专题报告11第三章">专题报告11第三章</option>
                                            <option value="专题报告11第四章">专题报告11第四章</option>

                                            <option value="专题报告12第一章">专题报告12第一章</option>
                                            <option value="专题报告12第二章">专题报告12第二章</option>
                                            <option value="专题报告12第三章">专题报告12第三章</option>

                                            <option value="专题报告13第一章">专题报告13第一章</option>
                                            <option value="专题报告13第二章">专题报告13第二章</option>
                                            <option value="专题报告13第三章">专题报告13第三章</option>
                                            <option value="专题报告13第四章">专题报告13第四章</option>

                                            <option value="专题报告14第一章">专题报告14第一章</option>
                                            <option value="专题报告14第二章">专题报告14第二章</option>
                                            <option value="专题报告14第三章">专题报告14第三章</option>
                                            <option value="专题报告14第四章">专题报告14第四章</option>

                                            <option value="专题报告15第一章">专题报告15第一章</option>
                                            <option value="专题报告15第二章">专题报告15第二章</option>
                                            <option value="专题报告15第三章">专题报告15第三章</option>  
										</select>
										</td>
										
										<td style="width:200px" align="center">
										<input  id="addBT" style="width:100px" class="btn btn-primary"name="addBT" type="button" value="select" onclick="toAdd()"/><br><br>  
										<input  id="rmBT" style="width:100px"  class="btn btn-primary" name="rmBT" type="button" value="remove" onclick="toRemove()"/><br><br>  
										
										<input type="button" style="width:100px"  class="btn btn-primary" value="close" onclick="hclass()">
										</td> 	
									</tr>
								</table><br>	
							</div>
                        
	
                        
                        <div class="row form-group has-feedback">
           
                            <label class="col-sm-3 col-form-label">Personal Keywords</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" name="keywords">
                            </div>
                            <small class="form-text text-danger">*req</small>
                        </div>
                        <div class="row">
                            <div class="col-sm-3" style="height:38px"></div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" name="keywords">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3" style="height:38px"></div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" name="keywords">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3" style="height:38px"></div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" name="keywords">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3" style="height:38px"></div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" name="keywords">
                            </div>
                        </div>
                    </div>
                        <div class="row">
                            <label class="col-sm-3 col-form-label">Available as a Reviewer?</label>
                            <div class="col-sm-4" style="padding-top:calc(0.375rem + 1px) " required>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="permission" id="inlineRadio1"
                                        value="3">
                                    <label class="form-check-label" for="inlineRadio1">Yes</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="permission" id="inlineRadio2"
                                        value="1" checked>
                                    <label class="form-check-label" for="inlineRadio2">No</label>
                                </div>
                            </div>
                        </div>
                        <!--提交按钮-->
                        <div class="content mt-3">
                            <div class="form-group row">
                                <div class="col-sm-12" style="text-align: center">
                                    <!--Once you have filled in the required information, click the button below.<br>-->
                                    <button type="submit" name="Create" class="btn btn-primary">Sign in</button>
                                </div>
                            </div>
                        </div>
                    </div>
</form>
                
            </div>
            <!--<div class="col-sm-12" style="text-align: center">-->
            <!--&lt;!&ndash;Once you have filled in the required information, click the button below.<br>&ndash;&gt;-->
            <!--<button type="submit" class="btn btn-primary">Sign in</button>-->
            <!--</div>-->
        </div><br><br>
    </main>

    <!-- 底部 -->

</form>
<footer class="footer mt-auto py-3 bg-dark fixed-bottom">
        <div class="container text-muted text-center">
            <sapn class="">
                <a class="text-muted" href=" ">北京理工大学</a> | <a class="text-muted" href="http://sme.bit.edu.cn/">北京理工大学管理与经济学院</a>
                | <a class="text-muted" href="http://www.ceep.net.cn/" >北京理工大学能源与环境政策研究中心</a>
                </span></br>
                <span class="text-muted">版权所有2019 北京理工大学能源与环境政策研究中心 京ICP备10019879 京公网安备110402430044</span></br>
                <span class="text-muted">Copyright @2019 Center for Energy and Environmental Policy Research. All
                    Rights Reserved</span>
        </div>
    </footer>
    <script src="/Scripts/sgxt/jquery-2.1.0.js"></script>
    <script src="/Scripts/sgxt/bootstrap.min.js"></script>
    
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
                email: {
                    validators: {
                        notEmpty:{
                            message: 'The E-mail Address is required and cannot be empty'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: 'The password is required and cannot be empty'
                        },
                        identical: {
                            field: 'confirm_password',
                            message: 'The password and its confirm are not the same'
                        },
                        // different: {
                        //     field: 'username',
                        //     message: 'The password cannot be the same as username'
                        // }
                    }
                },
                confirm_password: {
                    validators: {
                        notEmpty: {
                            message: 'The confirm password is required and cannot be empty'
                        },
                        identical: {
                            field: 'password',
                            message: 'The password and its confirm are not the same'
                        },
                        // different: {
                        //     field: 'username',
                        //     message: 'The password cannot be the same as username'
                        // }
                    }
                },
                title: {
                    validators: {
                       
                        callback: {
                            message: 'Please choose the title',
                            callback:function(value){
                                if (value==0){
                                    return false;
                                }else{
                                    return true;
                                }
                            }
                        }
                    },
                },
                first_name: {
                    validators: {
                        notEmpty:{
                            message:'The first name is required and cannot be empty'
                        },
                    }
                },
                last_name: {
                    validators: {
                        notEmpty:{
                            message:'The last name is required and cannot be empty'
                        },
                    }
                },
                street: {
                    validators: {
                        notEmpty:{
                            message: 'The street address is required and cannot be empty'
                        },
                    }
                },
                city: {
                    validators: {
                        notEmpty:{
                            message:'The city is required and cannot be empty'
                        },
                    }
                },
                keywords1: {
                    validators: {
                        notEmpty:{
                            message:'The personal keyword is required and cannot be empty'
                        },
                    }
                },
                country: {
                    validators: {
                        
                        callback: {
                            message: 'Please choose the country',
                            callback:function(value){
                                if (value=="0"){
                                    return false;
                                }else{
                                    return true;
                                }
                            }
                        }
                    },
                },
                is_reviewer:{
                    validators: {
                        notEmpty: {
                            message: 'The answer is required'
                        }
                    }
                }
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
    
    <script language="javascript">
        // select 中的 onchange()事件  
        function selectChange() {
            $("#addBT").attr("disabled", false); // 首先将添加按钮设为可用  
            var selectObject = $("#myselect").val(); // 取得左侧所选取的值  
            $("#myresult").find("option").each(function () { // 以 option 为参数 查询 右侧所有的可选项并逐一遍历  
                if ($(this).val() == selectObject) { // 判断左侧中选择的项在右侧中是否已经存在  
                    //alert("I got you!");  
                    $("#addBT").attr("disabled", true); // 如果上面的判断存在则将添加按钮设为不可用, 禁止重复添加  
                }
            });
        }

        // 左侧增加到右侧  
        function toAdd() {

            var selectObject = $("#myselect").val(); // 取得左侧所选取的值  
            if (null == selectObject) {
                alert("Tip: You did not select anything to add!");
                return;
            }
            var content = "<option value='" + selectObject + "'>" + selectObject + "</option>"; // 填充右侧的值  
            $("#myresult").append(content);
            selectChange(); // 最后调用 selectChange()模拟onChange()事件, 主要是为了能够及时地将禁用的添加按钮重新激活(如果有必要)  

        }

        // 右侧移除  
        function toRemove() {
            var removeObject = $("#myresult option:selected").val(); // 取得右侧要移除的内容, 注意可多选  
            if (null == removeObject) {
                alert("Tip: You did not select anything to delete！");
                return;
            }
            $("#myresult option:selected").remove();
            selectChange(); // 与toAdd()中调用原理一致  
        }  

	</script>
	<script type="text/javascript">
	    function hclass() {
	        $("#showclass").hide();
	    }

	    function sclass() {
	        $("#showclass").show();
	    }
	</script> 

</body>


</html>
</asp:Content>
