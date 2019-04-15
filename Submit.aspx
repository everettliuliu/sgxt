<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SGXT_NullPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submission</title>
    <link rel="icon" href="/Content/images/sgxt/favicon.ico">
    <link rel="stylesheet" href="/Content/css/sgxt/submission.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/bootstrap.s.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/sgxt/index.css" type="text/css">
    <style>
        #cover, #manuscript {
            display: none;
        }
    </style>
</head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>

<div class="container">
    <div class="row">
        <div class="col-3">
            <div class="navigationDIV sticky1" data-offset-bottom="360" data-offset-top="170" data-spy="affix">
                <ul class="nav nav-list">
                    <li class="nav-header">Submission</li>
                    <li class="nav-submenu active">
                        <a href="#aaa">Step 1: Type & Title</a>
                    </li>
                    <li class="nav-submenu" >
                        <a href="#bbb">Step 2: Authors</a>
                    </li>
                    <li class="nav-submenu" >
                        <a href="#ccc">Step 3: Abstract, Keywords& Classification</a>
                    </li>
                    <li class="nav-submenu">
                        <a href="#ddd">Step 4: Information & Comments</a>
                    </li>
                    <li class="nav-submenu">
                        <a href="#eee">Step 5: Suggest Reviewers</a>
                    </li>
                    <li class="nav-submenu">
                        <a href="#fff">Step 6: Attach Files</a>
                    </li>
                </ul>
				
            </div>
			
        </div>
		
        <div class="col-9">
            <!--step1 type& title-->
            <div class="base-form">
                <form method="post" action="" id="submitForm" >
                    <div class="form-title" >
                        <h3 id="aaa">Type & Title</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox font-italic">
                            <b>Type:</b><br>
							Selecting an Article Type is Required for Submission.
                        </div>
                        <div class="row">
                            <lable class="col-sm-3 col-form-label " >Article Type</lable>
                            <div class="col-sm-4">
                                <select class="custom-select custom-select-sm " name="articleType" required>
                                    <option value="0">none</option>
                                    <option value="气候变化第四次评估报告" selected>气候变化第四次评估报告</option>
                                </select>
                            </div>
                        </div>
                    
                        <div class="warningbox">
                            <b>Title:</b><br>
							Entering a Full Title is Required for Submission.<br>
                            Please enter the title of your manuscript. You cannot submit a manuscript without a title.
                        </div>
                        <div class="row">
                            <lable class="col-sm-12 col-form-label text-left" style="font-weight: 500">Full Title</lable>
                            <div class="col-sm-12">
                                <textarea class="text" name="title" id="fulltitle" required></textarea>
                            </div>
                        </div>
                    </div>
                    <!--<div class="content">-->
                        
                    <!--</div>-->
                
                <!--</div>-->
						
                    <div class="form-title" >
                        <h3 id="bbb">Authors</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox text-justify font-italic">
                            <span>&bull; Please add the author below, the default required is the corresponding author.</span><br>
                            <span>&bull; Upper limit 5 reviwer(5) is Required Submission</span><br>
                           <%-- <span>&bull; Please enter the details of all authors (other than you) who contributed to the work reported in your manuscript. After entering each author's details, click <span class="text-danger">Add Author</span>.</span><br>
                            <span>&bull; By beginning the manuscript submission process, <span class="text-danger">You</span> are automatically identified as the Corresponding Author.</span><br>
                            <span>&bull; If you change the Corresponding Author, the manuscript will be removed from your account and added to the new Corresponding Author's account when you leave or complete the submission process.</span>
--%>
                        </div>
                        <div class="row">
                            <label for="aname" class="col-sm-3 col-form-label ">Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="aname" name="aname" aria-describedby="firstnameHelp" >
                            </div>
                            <small class="form-text text-danger" id="Small2">
                                *req
                            </small>
                        </div>

                        <div class="row">
                            <label for="ainstitution" class="col-sm-3 col-form-label ">Institution</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="ainstitution" name="ainstitution">
                            </div>
                        </div>
                        <div class="row form-group has-feedback">
                            <label for="aemail" class="col-sm-3 col-form-label">E-mail Address</label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control form-control-sm" id="aemail" name="aemail"  >
                            </div>
                            <small class="form-text text-danger" id="Small3">
                                *req
                            </small>
                        </div>
                        <div class="text-center mt-3">
                            Please select if this is the corresponding author <input type="checkbox" name="correspondingAuthor" id="correspondingAuthor">
                        </div>
                        <div class="col-sm-12 text-center mt-3">
                            <input type="button" class="btn btn-primary" onclick="add()" value="Add Author">
                        </div>

                        <br>
						<div class="content mb-4 mainpage-card" id="authortable" style="display:none">
							<table  class="table table-hover table-bordered table-sm" >
								<thead class="detail-table">
									<tr class="table-tr">
										<th scope="col" style="width:11%;"> </th>
										<th scope="col" style="width:17%;">Action</th>
										<th scope="col" style="width:17%;">Name</th>									
										<th scope="col" style="width:20%;">Institution</th>
										<th scope="col" style="width:20%;">E-mail Address</th>
										<th scope="col" style="width:15%;"> </th>
									</tr>
								</thead>
								<tbody class="table-tbody" id="atable">
								</tbody>

							</table>
						</div>

                    </div>

                    
                
                <!--</div>-->
           
                    <div class="form-title">
                        <h3 id="ccc">Abstract, Keywords & Classification</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox text-justify font-italic">
                            <b>Abstract:</b><br>
							<span class="text-danger">&#8901 Submitting an Abstract is Required for Submission.</span><br>
                            <span>&#8901 Enter the Abstract of your manuscript into the text box below.</span><br>
                            <span>&#8901 If you edit your Abstract in the text box (for example to make it shorter), please copy and paste this version of your Abstract into your manuscript file.</span><br>
                            <span>&#8901 The Abstract may be copied and pasted from a word processing program; however, some of the formatting will be lost.</span>
                        </div>
                        <textarea class="text" name="abstracts" id="abstract" required></textarea>
                    
                        <div class="warningbox text-justify font-italic">
                            <b>Keywords:</b><br>
							<span class="text-danger">&bull; Entering one or more Keywords is Required for Submission.</span><br>
                            <span>&bull; Entering keywords will help Editors select appropriate referees to review your submission.</span><br>
                            <span>&bull; Keywords should be separated by semicolons, e.g. moulds; yeasts; pathogenesis.</span><br>
                            <span>&bull; <span class="text-danger">NOTE</span> Keywords should also be present within the manuscript text file for typesetting purposes.</span>
                        </div>
                        <lable class="col-form-label text-left font-italic ml-3">Limit 6 Keywords</lable>
                        <textarea class="text" name="keyword" id="keywords" required></textarea>
                    
                        <div class="warningbox text-justify">
                            <b>Classification:</b><br>
							<span class="text-danger">&bull; Submitting an Abstract is Required for Submission.</span><br>
                            <span>&bull; Selecting classifications will help Editors find referees to review your submission.</span><br>
                            <span>&bull; Click "Select Manuscript Classifications" to open a window containing a list of the Classifications. </span>
                        </div>
                        <div class="row mt-4" >
                            <b class="col-sm-3 col-form-label">Classifications:</b>
                                
                            <div class="col-sm-9">
                                <div class="col-sm-3" >
                                    <select class="custom-select custom-select-sm "style="width:300px;"height="500px" size="2" multiple="MULTIPLE" id="myresult">
									</select>
                                </div>
                                		
                            </div>
							<div class="col-sm-9 text-center">
							<br><input type="button" class="btn btn-primary" onclick="sclass()" value="Select Classifications">
                            </div>
								<div  class="base-card" id="showclass" style="display:none" >
									<div  class="warningbox" style="text-align:center">		
										<h3>Select Personal Classifications</h3>
										<span>
                                        Please identify your areas of interest and specialization by selecting one or more classifications from the list below.	
										</span>
									</div>
									<table align="center" >
										<tr>
											<td>
											<select  class="custom-select custom-select-sm "style="width:300px" id="myselect" multiple="MULTIPLE" size="10" onchange="selectChange()" name="classfications">  
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
											
											<input type="button" style="width:100px"  class="btn btn-primary"value="close" onclick="hclass()">
											</td> 	
										</tr>
									</table>
									
								</div>
	
                        </div>
                    </div>
                  
                
                    <div class="form-title">
                        <h3 id="ddd">Information</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox text-justify font-italic">
                            <b>Information:</b><br>
							<span class="text-danger">&#8901 Additional Information is Required for Submission.</span><br>
                            <span>&#8901 Please respond to the questions/statements below.</span><br>
                        </div>
                        <div class="subBox">
                            <span class="subContent">Please confirm that you have mentioned all organizations that funded your research in the Acknowledgements section of your submission, including grant numbers where appropriate.</span>
                            <div class="mt-3">
                                <!--<div class="col-sm-3"></div>-->
                                <!--<div class="col-sm-6">-->
                                <!--<select class="custom-select custom-select-sm" name="confirm" required>-->
                                <!--<option style="width:120px">Please select a response</option>-->
                                <!--<option value="1" style="width:120px">I confirm that I have mentioned all organizations that funded my research in the Acknowledgements section of my submission, including grant numbers where appropriate.</option>-->
                                <!--</select>-->
                                <!--</div>-->
                                <!--<div class="col-sm-3"></div>-->
                                <!--<div class="text-center">-->
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-4">
                                    <input type="radio" name="confirm1" value="1" required> Yes, I confirm.
                                    <span class="text-danger text-right">*req</span></div>
                                </div>
                                <!--<p><input type="radio" name="confirm" value="1" required> Yes, I confirm.<span-->
                                <!--class="text-danger text-right">*req</span></p>-->
                                <!--</div>-->
                            </div>
                        </div>
                        <div class="subBox">
                            <div class="row">
                                <label class="col-sm-3 col-form-label" for="count">What is the word count:</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control form-control-sm" id="count" name="count"  required>
                                </div>
                                <small class="form-text text-danger">*req</small>
                            </div>
                        </div>
                        <div class="subBox">
                            <span class="subContent">In submitting this paper I confirm, as corresponding author, that the final submitted manuscript has been shared with all authors listed on the manuscript and that all authors have confirmed their agreement to the manuscript.</span>
                            <div class="row mt-3">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-4"><input type="radio" name="confirm2" value="2" required> Yes, I confirm.
                                <span class="text-danger text-right">*req</span></div>
                            </div>
                            <!--<p class="mt-3 text-center"><input type="radio" name="confirm1" value="1" required> Yes, I confirm. <span class="text-danger">*req</span></p>-->
                        </div>
                                  
                        <div class="warningbox text-justify font-italic">
                            <b>Comments:</b><br>
							<span>&bull; Please enter any comments you would like to send to the Journal Office.</span><br>
                            <span>&bull; These comments do not appear in your manuscript.</span><br>
                        </div>
                        <div class="mt-3">
                            <textarea class="text" name="comments" id="comments"></textarea>
                        </div>
                    </div>

                    <div class="form-title">
                        <h3 id="eee">Suggest Reviewers</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox text-justify font-italic">
                            <span class="colorOfInfo">&bull; Suggesting 3 reviwer(3) is Required Submission</span><br>
                            <span>&bull; Please suggest potential Reviewers for this submission</span><br>
                            <span>&bull;Use the fields below to give us contact information for each suggested reviwer,and please provided specific reasons for your suggestion in the comments box for each person.Maximum of 1 potential reviewer from author's Country can be included.Please note that the Editor retains the sole right to decided whether or not the suggestion reviwers are used.</span><br>
                            <span>&bull; A * indicates a required field.</span><br>
                            <span>&bull; For further help with this submission step,please visit our <a href="blank">online support site.</a></span>

                        </div>
                        <div class="row">
                            <label for="rtname" class="col-sm-3 col-form-label ">Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="rname" name="rname" aria-describedby="rfirstnameHelp" >
                            </div>
                            <small class="form-text text-danger" id="rfirstnameHelp1">
                                *req
                            </small>
                        </div>
                        <%--<div class="row">
                            <label for="rdegree" class="col-sm-3 col-form-label">Academic Degrees</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="rdegree" name="rdegree">
                            </div>
                        </div>
                        <div class="row">
                            <label for="rposition" class="col-sm-3 col-form-label ">Position</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="rposition" name="rposition">
                            </div>
                        </div>
                        <div class="row">
                            <label for="rdepartment" class="col-sm-3 col-form-label ">Department</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="rdepartment" name="rdepartment">
                            </div>
                        </div>
                        <div class="row">
                            <label for="rinstitution" class="col-sm-3 col-form-label ">Institution</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="rinstitution" name="rinstitution">
                            </div>
                        </div>--%>
                        <div class="row">
                            <label for="rEmail" class="col-sm-3 col-form-label has-feedback">E-mail Address</label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control form-control-sm" id="rEmail" name="rEmail" >
                            </div>
                            <small class="form-text text-danger" id="emailHelp1">
                                *req
                            </small>
                        </div>
                        <div class="row">
                            <label for="reason" class="col-sm-3 col-form-label ">Reason</label>
                            <div class="col-sm-4">
                                <textarea class="form-control" id="reason" name="reason"></textarea>
                            </div>
                            <small class="form-text text-danger" id="Small1">
                                *req
                            </small>
                        </div>
                        <div class="col-sm-12 text-center mt-3">
                            <input type="button"  class="btn btn-primary" onclick="Radd()" value="Add Reviewer">
                        </div>
                        <br>
                        <div class="content mb-4 mainpage-card" id="reviewertable" style="display:none">
                            <table  class="table table-hover table-bordered table-sm" >
                                <thead class="detail-table">
                                <tr class="table-tr">
                                    <th scope="col" style="width:20%;">Name</th>
                                    <th scope="col" style="width:30%;">E-mail Address</th>
                                    <th scope="col" style="width:30%;">Reason</th>
                                    <th scope="col" style="width:20%;">Action</th>
                                </tr>
                                </thead>
                                <tbody class="table-tbody" id="rtable">
                                </tbody>

                            </table>
                        </div>
                    </div>

                    
                
                    <div class="form-title">
                        <h3 id="fff">Attach Files</h3>
                    </div>
                    <div class="content mb-4">
                        <div class="warningbox text-justify font-italic">
                            <span>&bull; IMPT NOTE: Please upload the supplementary files in the item "E component" option.</span>
                        </div>
                        <div class="row">
                            <label class="col-sm-3 col-form-label ">Item</label>
                            <div class="col-sm-4">
                                <select class="custom-select custom-select-sm" name="item" id="custom-selec" >
                                    <option value="Highlights(for review)" selected="selected">*Highlights (for review)</option>
                                    <option value="Manuscript">*Manuscript</option>
                                    <option value="Cover Letter">Cover Letter</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <label for="description" class="col-sm-3 col-form-label ">Description</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="Description"
                                       name="Description">
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-sm-3 col-form-label ">File Name</label>
                            <div class="col-sm-6">
                                <%--<div class="custom-file">
                                    <input type="file" class="custom-file-input" id="customFile" name="file">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                </div>--%>
                                <div class="custom-file" id="highlights">
                                    <input type="file" class="custom-file-input" id="highlightsFile" onchange="addFile(this)">
                                    <label class="custom-file-label" for="highlightsFile">Choose file</label>
                                </div>
                                <div class="custom-file" id="manuscript">
                                    <input type="file" class="custom-file-input" id="manuscriptFile" onchange="addFile(this)">
                                    <label class="custom-file-label" for="manuscriptFile">Choose file</label>
                                </div>
                                <div class="custom-file" id="cover">
                                    <input type="file" class="custom-file-input" id="coverFile" onchange="addFile(this)">
                                    <label class="custom-file-label" for="coverFile">Choose file</label>
                                </div>
                            </div>
                            <!--<div class=" col-sm-6">-->
                            <!--<div class="custom-file mt-2">-->
                            <!--<input type="file" class="file_input" accept="application/pdf">-->
                            <!--</div>-->
                            <!--</div>-->
                        </div>
<%--                        <div class="col-sm-12 text-center mt-3">
                            <button type="submit" class="btn btn-primary">Attach This File</button>
                        </div>--%>
                    </div>
					<div class="form-group row" >
						<div class="col-sm-12 text-right" >
                            <!--Once you have filled in the required information, click the button below.<br>-->
							<button type="submit" class="btn btn-primary" value="save" name="action" onclick="recsave();return false;">Save</button>
							<!--<button type="submit" class="btn btn-primary" value="submit" name="action">Submit</button>-->
                            <button type="submit" class="btn btn1 btn-primary" value="submit" name="action" <%--onclick="recsub();return false;"--%> id="submit-btn" >Submit</button>
						</div>
					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</form>
                <!--</div>-->
            </div>
        </div>
    </div>
 <script src="/Scripts/sgxt/jquery-2.1.0.js"></script>
    <script src="/Scripts/sgxt/bootstrap.min.js"></script>
    <script src="/Scripts/sgxt/bootstrap.bundle.s.js"></script>

<%--    <script type="text/javascript">
        function recsub() {
            var mymessage = confirm("确定提交您的稿件？");
            if (mymessage == true) {
                method = "post";
                action = "modifyParam.action";
                submit();
            }
        }
</script>--%>
    <script type="text/javascript">
        function recsav() {
            var mymessage = confirm("确定保存您的稿件？");
            if (mymessage == true) {
                method = "post";
                action = "modifyParam.action";
                submit();
            }
        }
</script>

    <script>
    var ids = {
        'Highlights(for review)': 'highlights',
        'Manuscript': 'manuscript',
        'Cover Letter': 'cover',
    }
    var Files = {
        highlights: [],
        manuscript: [],
        cover: [],
    }

    $('#submit-btn').on('click', function (event) {
//        $('#submitForm').validate({
//        rules: {
//            confirm2: {
//                required: true,
//            }
//        }
//            
//        })
        // console.log(event)
        event.preventDefault();
//        var oriForm = $('#submitForm').serializeArray();
//        console.log(oriForm);

        var form = new FormData($('#submitForm')[0]);
        // form.append('name', 'value');
        // oriForm.forEach(function (item, index) {
        //     form.append(item.name, item.value);
        // });
        for (var fileKey in Files){
            Files[fileKey].forEach(function (item) {
                form.append(fileKey, item, item.name);
            })
            // form.append(fileKey, Files[fileKey], );
        }
        form.append('action', 'submit');
        console.log(form.get('highlights'))
        $.ajax({
            type: 'POST',
            url: 'Submit',
            data: form,
            dataType: 'text',
            contentType: false,
            processData: false,
            success: function (res) {
                document.write(res);
            },
            error: function (res) {
                console.log("失败")
                console.log(res);
            }
        });
    });

    var currentSelected = 'highlights';

    function addFile(fileInput) {
        console.log(currentSelected);
        const file = $(fileInput);
        if (!file[0].files || !file[0].files[0]) {
            return;
        }
        var existIndx = Files[currentSelected].findIndex(function (item) {
            return item.name === file[0].files[0].name
        });
        console.log(existIndx);
        if (existIndx > -1) {
            alert('文件已添加');
        } else {
            Files[currentSelected].push(file[0].files[0]);
        }
        console.log(Files[currentSelected]);
    }
    window.onload = function () {
        $('#custom-selec').on('change', function(){
            console.log($(this).val()) ;
            var val = $(this).val();
            if (ids[val]) {
                console.log(ids[val])
                $('#'+ids[val]).show().siblings().hide();
                currentSelected = ids[val];
            }
        });
        $('#table-item-selecte').on('change', function () {
            console.log($(this).val());
        })
    }

    $(document).ready(function (){
        $(".custom-file").on("change","input[type='file']",function () {
            var filePath=$(this).val();
            if(filePath.indexOf("pdf")!==-1){
                var arr=filePath.split("\\");
                var fileName=arr[arr.length-1];
                $(this).siblings().html(fileName);
            }else{
                $(this).siblings().html("File format error.")
            }
        })
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
		<script type="text/javascript">
            
		    var i = 0;
		    function add() {
		        var str;
		        var a = document.getElementById('aname').value;
		        var b = document.getElementById('ainstitution').value;
		        var c = document.getElementById('aemail').value;
		        var d = document.getElementById('correspondingAuthor').checked;
		        var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
		        var h = "corr-Author";
		        if (a == "") {
		            alert("名字不能为空！");
		        }
		        else if (reg.test(c) == false) {
		            alert("邮箱格式不正确！");
		        }
		        else {
		            switch (d) {
		                case true:
		                    str = '<tr id="addauthor' + i + '"><td>' + h + '</td>';
		                    break;
		                case false:
		                    str = '<tr id="addauthor' + i + '"><td>' + '</td>';
		                    break;
		            }
		            str = str + '<td><a href="javascript:void(0)" onclick="moveUp(this)">Up </a><a href="javascript:void(0)" onclick="moveDown(this)">Down</a></td><td><input type="text" style="border-width: 0;width:100px" name="aname' + i + '" value="' + a + '"  id="aname" readonly></td><td><input type="text" style="border-width: 0;width:100px" name="ainstitution' + i + '" value="' + b + '" readonly></td><td><input type="email" style="border-width: 0;width:100px" id="Email" name="aemail' + i + '" value="' + c + '"  readonly></td><td> <a href="javascript:void(0)" onclick="deleteCell(this)">remove</a></td></tr>';
		            i = i + 1;
		            $("#atable").append(str);
		            $("#authortable").show();
		            document.getElementById('aname').value = null;
		            document.getElementById('ainstitution').value = null;
		            document.getElementById('aemail').value = null;
		        }
		    }
		    function deleteCell(obj) {
		        var tr = obj.parentNode.parentNode;
		        tr.parentNode.removeChild(tr);
		    }
	</script>
    <script type="text/javascript">
        var v = 0;
        function Radd() {
            var str2;
            var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            var m = document.getElementById('rname').value;
            var o = document.getElementById('reason').value;
            var n = document.getElementById('rEmail').value;
            if (m == "") {
                alert("名字不能为空！");
            }
            else if (reg.test(n) == false) {
                alert("邮箱格式不正确！");
            }
            else if (o == "") {
                alert("原因不能为空！");
            }
            else {
                str2 = str2 + '<tr><td><input type="text" style="border-width: 0;width:100px;" name="rname' + v + '" value="' + m + '"  readonly></td><td><input type="email"  style="border-width: 0;width:100px" id="Email" name="remail' + v + '" value="' + n + '"  readonly></td><td><input type="text" style="border-width: 0;width:100px" name="reason' + v + '" value="' + o + '" readonly></td><td><a href="javascript:void(0)" id="remove" onclick="deleteCell(this)">remove</a></td></tr>';
                v = v + 1;
                $("#rtable").append(str2);
                $("#reviewertable").show();
                document.getElementById('rname').value = null;
                document.getElementById('reason').value = null;
                document.getElementById('rEmail').value = null;
            }
        }
    </script>
	<script type="text/javascript">
    <!--
	    function moveUp(_a) {
	        var _row = _a.parentNode.parentNode;
	        //如果不是第一行，则与上一行交换顺序
	        var _node = _row.previousSibling;
	        while (_node && _node.nodeType != 1) {
	            _node = _node.previousSibling;
	        }
	        if (_node) {
	            swapNode(_row, _node);
	        }
	    }
	    function moveDown(_a) {
	        var _row = _a.parentNode.parentNode;
	        //如果不是最后一行，则与下一行交换顺序
	        var _node = _row.nextSibling;
	        while (_node && _node.nodeType != 1) {
	            _node = _node.nextSibling;
	        }
	        if (_node) {
	            swapNode(_row, _node);
	        }
	    }
	    function swapNode(node1, node2) {
	        //获取父结点
	        var _parent = node1.parentNode;
	        //获取两个结点的相对位置
	        var _t1 = node1.nextSibling;
	        var _t2 = node2.nextSibling;
	        //将node2插入到原来node1的位置
	        if (_t1) _parent.insertBefore(node2, _t1);
	        else _parent.appendChild(node2);
	        //将node1插入到原来node2的位置
	        if (_t2) _parent.insertBefore(node1, _t2);
	        else _parent.appendChild(node1);
	    }
	
    //-->
</script>



<script>
    $(".nav-list").on("click","li",function(){
        let num=$(this).index()-1;
       $(this).addClass("active")
            .siblings().removeClass("active");	
    });
    /* $(document).ready(function (){
        $(".custom-file").on("change","input[type='file']",function () {
            var filePath=$(this).val();
            if(filePath.indexOf("pdf")!==-1){
                var arr=filePath.split("\\");
                var fileName=arr[arr.length-1];
                $(".custom-file-label").html(fileName);
            }else{
                $(".custom-file-label").html("File format error.")
            }
        })

    })*/
	

	
</script>
<script>    var $navs = $('.nav-submenu'),         // 导航

  $sections = $('.form-title'),       // 模块

  $window = $(window),

  navLength = $navs.length - 1;



    $window.on('scroll', function () {

        var scrollTop = $window.scrollTop(),

    len = navLength;



        for (; len > -1; len--) {

            var that = $sections.eq(len);

            if (scrollTop >= that.offset().top) {

                $navs.removeClass('active').eq(len).addClass('active');

                break;

            }

        }

    });

	
</script>
</body>
</html>

</asp:Content>
