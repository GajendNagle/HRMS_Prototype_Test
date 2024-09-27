<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityGuardDutyChartRegistration.aspx.cs" Inherits="mis_HostelManagment_SecurityGuardDutyChartRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <%--<li class="breadcrumb-item">
             <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
         </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Shift Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                             शिफ्ट मास्टर
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Shift Master / शिफ्ट मास्टर
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Shift Master /शिफ्ट मास्टर </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               Select Hostel Name /<br /> हॉस्टल का नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Shift Name /<br /> शिफ्ट का नाम दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Shift Name" />
                            <%--<select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Morning Shift</option>
                                <option value="2">Evening Shift</option>
                                <option value="3">Night Shift</option>
                            </select>--%>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Start Time /<br /> प्रारंभ समय
             <span style="color: red">*</span></label>
                            <input name="ename" id="OUTTIME" type="time" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                End Time /<br /> समाप्ति समय
             <span style="color: red">*</span></label>
                            <input name="ename" id="INTIME" type="time" class="form-control" />
                        </div>
                    </div>
                    <%--<div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date<br />
                                दिनांक<span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="date" class="form-control" />
                        </div>
                    </div>--%>
                    <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Guard Name/
                                <br />
                                गार्ड नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">All</option>
                                <option value="1">Vikas Namdev</option>
                                <option value="2">Shivraj Goutam</option>
                                <option value="3">Ashish Gupta</option>
                            </select>
                        </div>
                    </div>--%>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="SecurityGuardDutyChartRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
                        <fieldset id="FS_Details" >
                <legend>Details / विवरण </legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table class="table table-bordered text-center" id="mainTable">
                                <thead>
                                    <tr>
                                        <th>Sr. No./<br />
                   
                                          क्रमांक
                                        </th>
                                        <th>Hostel Name/<br /> 
                            
                                            छात्रावास का नाम
                                        </th>
                                        <th>Shift Name /<br />
शिफ्ट का नाम
                                        </th>
                                        <th>Start Time /<br />
प्रारंभ समय</th>
                                        <th>End  Time/<br />
समाप्ति समय</th>
                                        <th>Action
 
                            
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Day-Shift</td>
                                        <td>Ram Lal</td>
                                        <td>7:00 AM</td>
                                        <td>5:00 PM</td>
                                        <td><button class="btn-sm ">Edit</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

