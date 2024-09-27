<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentWiseEnter.aspx.cs" Inherits="mis_HostelManagment_StudentWiseEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
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
                        <%--<li class="breadcrumb-item">
                     <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                 </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student In/Out Entry</span></li>


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
                            छात्र प्रवेश/निकास की जानकारी
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Student In/Out Entry /  छात्र प्रवेश/निकास की जानकारी
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Student In/Out Entry / छात्र प्रवेश/निकास की जानकारी</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Date/<br />
                                दिनांक
        <span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel Name/<br />
                                हॉस्टल का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Enter Type/
            <br />
                                प्रवेश के प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option>select</option>
                                <option value="1">In Time</option>--%>
                                <option value="2" selected>Out Time</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Student Name(ID)/
                                <br />
                                छात्र नाम(आई.डी) चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>select</option>
                                <option value="1">Raadha Dawar(103201441)</option>
                                <option value="2">JEANA RAWAT(188599791)</option>
                                <option value="3">Ramesh Nargawa (108875539)</option>
                                <option value="4">SANGEETA DAWAR (112772962)</option>
                            </select>
                        </div>
                    </div>
                    <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel Name/
                 <br />
                                हॉस्टल नाम चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">All</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>--%>


                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Remark/<br />
                                टिप्पणी
            <span style="color: red">*</span>
                            </label>
                            <textarea class="form-control w-100" id="txt_remark" placeholder="Remark" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </div>
                    </div>

                    <%--<div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Time/<br />
                                समय
                 <span style="color: red">*</span></label>
                            <input name="ename" id="OUTTIME" type="time" class="form-control" />
                        </div>
                    </div>--%>
                    <%--<div class="col-md-3">
                    <div class="form-group">
                        <label>
                          In Time/<br />
                           वापस आने का समय
                 <span style="color: red">*</span></label>
                        <input name="ename" id="INTIME" type="time" class="form-control" />
                    </div>
                </div>--%>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="StudentWiseEntry.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset id="show">
                <legend>Details/विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server" style="white-space: nowrap">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No/
                                         <br />
                                            सरल क्र.</th>
                                        <th>Date/<br />
                                            दिनांक</th>
                                        <th>Day/<br />
                                            दिन</th>
                                        <th>Hostel Name /<br />
                                            छात्रावास का नाम</th>
                                        <th>Unique ID/Student Name/
                                 <br />
                                            आईडी/विद्यार्थी का नाम </th>
                                        <th>Parent Name 
                                         <br />
                                            अभिभावक का नाम
                                        </th>
                                        <th>Parent Mobile No.  
            <br />
                                            अभिभावक का मोबाइल नंबर
                                        </th>


                                        <th>Out Time/<br />
                                            बाहर जाने का समय</th>
                                        <th>In Time/<br />
                                            वापस आने का समय</th>
                                        <th>Remark / टिप्पणी</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <th>KGBV Combine Hostel</th>
                                        <td>Ashish Gupta/<br />
                                            EDP4454445</td>

                                        <td>Ramesh Babu</td>
                                        <td>9987852752</td>
                                        <td>9:45 AM</td>
                                        <td>0:00 </td>
                                        <td>विद्यार्थी स्कूल गए हैं</td>
                                        <td>
                                            <button class="btn btn-success btn-sm">IN</button></td>


                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <th>KGBV Combine Hostel</th>
                                        <td>Sita Verma/<br />
                                            EDP4454445</td>
                                        <td>Govind Tiwari</td>
                                        <td>7787882752</td>
                                        <td>9:45 AM</td>
                                        <td>0:00 </td>
                                               <td>विद्यार्थी स्कूल गए हैं</td>
                                        <td>
                                            <button class=" btn btn-success btn-sm">IN</button></td>


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

