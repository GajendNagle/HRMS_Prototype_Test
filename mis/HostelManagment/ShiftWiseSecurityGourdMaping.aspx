<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ShiftWiseSecurityGourdMaping.aspx.cs" Inherits="mis_HostelManagment_ShiftWiseSecurityGourd_" %>

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
                        <li class="breadcrumb-item"><span>Security Guard To Shift Mapping</span></li>
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
                           Security Guard To Shift Master
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                               Security Guard To Shift Mapping /
सुरक्षा गार्ड शिफ्ट मैपिंग 
                            </marquee>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Security Guard To Shift Mapping /
सुरक्षा गार्ड शिफ्ट मैपिंग </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel Name /<br />
                                हॉस्टल का नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select--</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Shift Name /<br />
                                शिफ्ट का नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Morning Shift 06:00am TO 02:00pm</option>
                                <option value="2">Evening Shift 02:00pm TO 10:00pm</option>
                                <option value="3">Night Shift 10:00pm TO 06:00am</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Guard Name/
            <br />
                                गार्ड नाम चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select--</option>
                                <option value="1">Vikas Namdev</option>
                                <option value="2">Shivraj Goutam</option>
                                <option value="3">Rahul Gupta</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Date/<br />
                                दिनांक से
                                <span style="color: red">*</span></label>
                            <input name="ename" id="fromDB" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date/<br />
                                दिनांक तक
                           <span style="color: red">*</span></label>
                            <input name="ename" id="toDOB" type="date" class="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="ShiftWiseSecurityGourdMaping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
                                                                 <th>Gaurd Name /<br />
गार्ड नाम
                                        </th>
                                        <th>From Date /<br />
दिनांक से</th>
                                        <th>To Date/<br />
दिनांक तक</th>
                                        <th>Action
 
                            
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>KBC Boys Hostel</td>
                                        <td>Morning Shift 06:00am TO 02:00pm</td>
                                        <td>Ram Lal</td>
                                        <td>10/10/2024</td>
                                        <td>10/10/2025</td>
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

