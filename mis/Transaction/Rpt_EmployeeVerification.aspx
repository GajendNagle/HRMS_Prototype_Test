<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeVerification.aspx.cs" Inherits="mis_Transaction_EmployeeVerificationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Employee Detail Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                           <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Employee Detail Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Employee Detail Report</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Division / संभाग <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Chambal">Chambal</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Narmadapuram">Narmadapuram</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>District / जिला <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Satna">Satna</option>
                                    <option value="Guna">Guna</option>
                                    <option value="Chhindwara">Chhindwara</option>
                                    <option value="Morena">Morena</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Block / विकासखंड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Phanda</option>
                                    <option value="Yes">Dabra</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>School Name / UDISE Code / स्कूल कोड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">1214548455-Sarasvati Gyan Mandir</option>
                                    <option value="Yes">1014632121-Gyan Ganga Vidhya Mandir</option>
                                    <option value="Yes">0124587465-Reema Gyan Mandir</option>
                                    <option value="Yes">1315473465-Sarasvati Vidhya Mandir</option>
                                    <option value="Yes">1224876546-Bal Bharti Higher Secondary School</option>
                                </select>
                            </div>
                        </div>
                           <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                     <button onclick="Hideshow()" type="button" class=" btn btn-success btn-rounded">Search</button>
                                    <a href="Rpt_EmployeeVerification.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="showdetails">
                    <fieldset>
                        <legend>Employee Details</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">Excel</button>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-100">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>District</th>
                                            <th>Employee Name</th>
                                            <th>Employee Code</th>
                                            <th>Current Working School</th>
                                            <th>Post</th>
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>Shri Rajesh Tiwari</td>
                                            <td>58965</td>
                                            <td>GB Convent School</td>
                                            <td>Administratior</td>
                                            <%--<td><a onclick="" href="#"><i class="fas fa-eye"></i></a></td>--%>
                                            <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Bhopal</td>
                                            <td>Shri Shyan Tiwari</td>
                                            <td>58855</td>
                                            <td>GB Convent School</td>
                                            <td>Principal</td>
                                            <%-- <td><a data-bs-toggle="modal"><i class="fas fa-eye"></i></a></td>--%>
                                            <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!-- sample modal content -->
                    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" id="myDIV">
                                    <h4 class="modal-title" id="myLargeModalLabel1">Registration Details</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                </div>
                                <div class="modal-body">

                                    <fieldset>
                                        <legend>PERSONAL INFORMATION</legend>
                                        <div class="row">

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Employee Unique ID<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5859685" />
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>First Name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Shyam" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Middle Name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kumar" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Last Name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verma" />
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Father's/Husband Name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kunal Verma" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Designation<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Subject<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Chemistry" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>School name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="GB Convent School" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Sankul<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Reema Vidhya" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Date of Birth<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/07/1999" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Gender<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Male" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Height<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6.4" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Caste<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Sub Caste <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Identification Mark<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Mole on Face" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Blood Group<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="O+" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Handicapped (PWD)<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Critical Illness<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>GPF NO<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="PLKK5695L" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>PAN No(E)<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="SDEKK5695G" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Aadhaar No(E)<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="362596836495" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Employee Treasury Code<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="56958369" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Hobbies<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Dancing, Singing" />
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Certification Date<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2023" />
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>whether the first Page of E-Service Book is certified<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                                </div>
                                            </div>


                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Address</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <legend>Present Address
                                                    </legend>
                                                    <div class="row">

                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Address line 1<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Address line 2<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>City<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Pincode<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>State<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>District<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                            </div>
                                                        </div>
                                                    </div>


                                                </fieldset>
                                            </div>
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                                    <b>Permanent Address same as Present Address</b>
                                                    <%--<label><span style="color: red">*</span></label>--%>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <fieldset>
                                                    <legend>Permanent Address
                                                    </legend>
                                                    <div class="row">

                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Address line 1<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Address line 2<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>City<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                            </div>
                                                        </div>


                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Pincode<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>State<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>District<span style="color: red">*</span></label>
                                                                <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Mobile No<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="8596859586" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Email<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="ABC@GMAIL.COM" />
                                                </div>
                                            </div>


                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Marital Status and Spouse Details</legend>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Married <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Spouse Name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Ruchita " />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Is Spouse Government Employee <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Education Qualification</legend>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Qualification Type <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Post Graduate" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Degree / Diploma<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="MCA" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Board / Univercity name<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Makhanlal Chaturvedi" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Passing Year <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="2022" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Grade / Percentage<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="99%" />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>First Appointment Details</legend>
                                        <div class="row">

                                            <%--   <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Unique ID<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Unique ID" />
                                </div>
                            </div>--%>


                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>First Appointment Department <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Employee’s Designation Type<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Permanent" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>First Appointment Designation<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>First Appointment Order Date<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2022" />
                                                </div>
                                            </div>

                                            <div class="col-md-3 mt-4">
                                                <div class="form-group">
                                                    <label>First Appointment Pay scale<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                                </div>
                                            </div>
                                            <div class="col-md-3 mt-4">
                                                <div class="form-group">
                                                    <label>Parent Department<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="-" />
                                                </div>


                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>School/Institute/Office Address of first Posting<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="101 Arera Hills, Bhopal" />
                                                </div>
                                            </div>


                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Recent Appointment Department<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Pay Scale<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Samvilian Order No<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="569894545" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Samvilian Order Date<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2022" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Employee Retirement Date<span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2082" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Whether working/Posted in other department on Deputation/transfer <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Working in other Department/Organization on Deputation Transfer <span style="color: red">*</span></label>
                                                    <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->

                    </div>
                    <!-- /.modal -->

                    <fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">

                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Division Name</strong> from dropdown and the data will be populated from <strong>Division master </strong>.</li>
                                        </ul>
                                    </li>

                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>District Name </strong>from dropdown and data will be populated from <strong>District master </strong>and data cascade from <strong>Division Master.</strong> </li>

                                        </ul>
                                    </li>
                                    <li><strong>Block Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Block Name</strong> from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>Division Master </strong>and<strong> District Master.</strong></li>

                                        </ul>
                                    </li>
                                    <li><strong>School Name / UDISE Code</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>UDISE Code </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>From Date  </strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>From Date</strong> and the calendar field should accept <strong>only date format.</strong></li>
                                            <li>Enter the date from which you require details into the <strong>"from date"</strong> field.</li>
                                        </ul>
                                    </li>

                                    <li><strong>To Date </strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>To Date</strong> and the calendar field should accept <strong>only date format</strong>.</li>
                                            <li>Enter the date up to which you require details in the <strong>“To Date”</strong> field.</li>
                                        </ul>
                                    </li>


                                    <li><strong>Search </strong>
                                        <ul>
                                            <li>User should be able to click on Search button.</li>
                                            <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                        </ul>

                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                        </ul>
                                    </li>

                                    <li><strong>View</strong>
                                        <ul>
                                            <li>User should be able to click on View button.</li>
                                            <li>After clicking on the View button selected <strong>Employee's</strong> details will be shown on the pop up screen.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>

</asp:Content>


