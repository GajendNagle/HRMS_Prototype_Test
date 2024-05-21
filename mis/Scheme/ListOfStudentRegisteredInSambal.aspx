<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ListOfStudentRegisteredInSambal.aspx.cs" Inherits="mis_Scheme_ListOfStudentRegisteredInSambal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">संबल योजना के अंतर्गत शुल्क लिए गए छात्रों की सूची
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="AdmissionOfOutOfStateEdit.aspx" title="click to go on">संबल योजना के अंतर्गत शुल्क लिए गए छात्रों की सूची</a></li>

                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg navbar-dark topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold">Report</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ListOfStudentRegisteredInSambal.aspx">संबल योजना के अंतर्गत शुल्क लिए गए छात्रों की सूची</a></li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="mt-3">
                <fieldset>
                    <legend>संबल योजना के अंतर्गत शुल्क लिए गए छात्रों की सूची</legend>
                    <div class="row justify-content-center mt-2">
                        <div class="col-md-3">
                            <label class="font-bold">Academic Year :-<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Bhopal">2023-24</option>
                                <option value="Raisen">2022-23</option>
                                <option value="Rajgarh">2021-22</option>


                            </select>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <label class="font-bold">DISE Code :- <span style="color: red">*</span></label>
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <hr />
                    <div class="row justify-content-center mt-3">
                        <div class="col-md-3">
                            <label class="font-bold">Class :-<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">1 st </option>
                                <option value="2">2 nd</option>
                                <option value="3">3 rd</option>
                                <option value="4">4 th</option>
                                <option value="5">5 th</option>
                                <option value="6">6 th</option>
                                <option value="7">7 th</option>
                                <option value="8">8 th</option>
                                <option value="9">9 th</option>
                                <option value="10">10 th</option>
                                <option value="11">11 th</option>
                                <option value="12">12 th</option>
                                <option value="13">Nursery</option>
                                <option value="14">KG-I</option>
                                <option value="15">KG-II</option>



                            </select>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Category :-</label>
                                <select class="form-control">
                                    <option value="">--Select--</option>
                                    <option value="General">General</option>
                                    <option value="OBC">OBC</option>
                                    <option value="SC">SC</option>
                                    <option value="ST">ST</option>
                                </select>
                            </div>
                        </div>
                    </div>
                        <hr />
                    <div class="row justify-content-center ">
                        <div class="col-lg-12 mt-2">
                            <div class="row justify-content-center">
                                <div class="col-lg-3 text-center">
                                    <img src="../../img/captcha.png" width="150" />
                                </div>
                                <div class="col-lg-12"></div>
                                <div class="col-lg-4 text-center">
                                    <label class="font-bold">Please enter the code shown above</label>
                                </div>
                                <div class="col-lg-12"></div>

                                <div class="col-lg-1 ">
                                    <div class="form-group">
                                        <input type="text" class="form-control text-center" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 text-center">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded">संबल योजना के अंतर्गत शुल्क लिए गए छात्रों की सूची</button>
                            </div>
                        </div>
                    </div>
            </fieldset>
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

