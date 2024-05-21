<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EServiceBook.aspx.cs" Inherits="mis_HRMS_Rpt_EServiceBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">E-Service Book</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=EServiceBook" title="click to go on">e-Service Book</a></li>
                    <li class="breadcrumb-item active">E-Service Book</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <div class="row justify-content-end">
                <div class="col-md-4 text-end">
                    <div class="form-group">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </div>
            <fieldset>
                <legend>Personal Information</legend>
                <div class="row">
                    <div class="col-9">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Employee Name</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Virenda Singh Jadon" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Designation</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="HM (MS)" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Office Name</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="DO Bhopal" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Mobile Number</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="9856968596" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Vijendra001@gmail.com" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Address</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="51 Arera Hills, Bhopal" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Father Name</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Dhiraj Singh Jadon" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Male" />
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Disability</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="NO" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row justify-content-end">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available">
                                </div>
                            </div>
                            <div class="col-md-12 mt-2">
                                <div class="form-group">
                                    <label>Identification Mark</label>
                                    <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Mole on face right side" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>DDO Related Information</legend>
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label>DDO:</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Vidisha Principal Govt. High School, Pipalkheda, Vidisha" />
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Appointment Details</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Appointment details</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="01 Nov 1985" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Appointment Order Number</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="14603" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Appointment Department</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="14603" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Appointment Pay Scale</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="740-1180" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Appointment</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="Govt. hss narayan pur raigarh" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Current posting Order Number</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="14603" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Current Posting Order Date</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="01 Nov 1985" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Current pay scale</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="740-1180 " />
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Pay Scale Information</legend>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Professional Tax</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="212" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Basic Pay</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="93100" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Dearness Pay</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="0" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>DA</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="39102" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Amount</label>
                            <input disabled name="ename" type="text" class="form-control" autocomplete="off" placeholder="1053801" />
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

