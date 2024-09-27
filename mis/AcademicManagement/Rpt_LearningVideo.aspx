<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_LearningVideo.aspx.cs" Inherits="mis_AcademicManagement_Rpt_LearningVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />

    <style>

         .radius-defalt {
     border-radius: var(--vz-card-border-radius) !important;
 }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Learning Resource Repository</span></a>
                        </li>
                        <li class="breadcrumb-item">Learning Video Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary radius-defalt"">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            Learning Video Report

                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                लर्निंग वीडियो रिपोर्ट 
	
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Learning Video Report / लर्निंग वीडियो रिपोर्ट 
                </legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Class
                        <br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class">
                                <option value="0">-Select-</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>
                            <span id="ddl_classError" class="error text-danger"></span>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Medium<br />
                                माध्यम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Hindi</option>
                                <option>English</option>
                                <option>Urdu</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Content Name<br />
                                कंटेंट का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Educational</option>
                                <option>Motivational</option>
                            </select>
                        </div>
                    </div>

                </div>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" class="btn btn-success w-lg btn-border" onclick="document.getElementById('tbl_class').style.display ='block'">Search</button>
                        <a href="Rpt_LearningVideo.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tbl_class" style="display: none">
                <legend>Videos</legend>
              
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-sm-12 col-md-12">
                            <div class="row justify-content-center">
                                <div class="col-lg-4">
                                    <div class="card-wrap">
                                        <div class="card-content">
                                            <img src="../../img/Educational.jpg" width="280" height="160" />
                                        </div>
                                        <%-- <div class="card-header card-header1 two">
                                            <h4 class="">Motivational Video</h4>
                                        </div>--%>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card-wrap">
                                        <div class="card-content">
                                            <div class="card-content">
                                                <img src="../../img/Educational.jpg" width="280" height="160" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card-wrap">
                                        <div class="card-content">
                                            <div class="card-content">
                                                <img src="../../img/Educational.jpg" width="280" height="160" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
            </fieldset>
        </div>
    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

