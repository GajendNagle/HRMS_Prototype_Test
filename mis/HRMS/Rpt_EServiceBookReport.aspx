<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EServiceBookReport.aspx.cs" Inherits="mis_HRMS_Rpt_EServiceBookReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }

        fieldset {
            border: 0.8px solid #021d3a8c /*#ffa500*/;
        }

        legend {
            border-radius: 7px;
            border: 1.5px solid #021d3a78 /*#ffa500*/;
        }

        .select2-container .select2-selection--single, .form-control {
            border-radius: 0.2rem !important;
        }

        .select2-container .select2-selection--single, .form-control {
            border: 1px solid #1b5b5c47;
        }

            .form-control:disabled, .form-control[readonly] {
                background-color: #f5f5f538 !important;
            }

        .table-bordered > :not(caption) > * > * {
            border-width: 1px !important;
        }

        .table > :not(caption) > * > * {
            padding: 0.3rem 0.5rem !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">E-Service Book Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">E-Service Book Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">

            <fieldset>
                <legend>E-Service Book Report</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type</label>
                            <select class="form-control select2">
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">--Select--</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                                <option value="Principal Secretary">Principal Secretary</option>
                                <option value="Secretary">Secretary</option>
                                <option value="Deputy Secretary">Deputy Secretary</option>
                                <option value="CPI">CPI</option>
                                <option value="CRSK">CRSK</option>
                                <option value="DPI">DPI</option>
                                <option value="Collector">Collector</option>
                                <option value="CEO, ZP">CEO, ZP</option>
                                <option value="DPC">DPC</option>
                                <option value="BRC">BRC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Designation</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Additional Director">Additional Director</option>
                                <option value="Joint Director">Joint Director</option>
                                <option value="Deputy Director">Deputy Director</option>
                                <option value="Asstt Director">Asstt Director</option>
                                <option value="Regional Librarian">Regional Librarian</option>
                                <option value="Planning Officer">Planning Officer</option>
                                <option value="Director (ELTI)">Director (ELTI)</option>
                                <option value="Director(SISE)">Director(SISE)</option>
                                <option value="Principal (PGBT)">Principal (PGBT)</option>
                                <option value="Principal (DIET)">Principal (DIET)</option>
                                <option value="Principal HSS">Principal HSS</option>
                                <option value="Principal HS">Principal HS</option>
                                <option value="Lecturer">Lecturer</option>
                                <option value="HM(MS)">HM(MS)</option>
                                <option value="Teacher (UDT)">Teacher (UDT)</option>
                                <option value="Music Teacher">Music Teacher</option>
                                <option value="Tabla Teacher">Tabla Teacher</option>
                                <option value="Craft Teacher">Craft Teacher</option>
                                <option value="HM(PS)">HM(PS)</option>
                                <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                <option value="Adhyapak">Adhyapak</option>
                                <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Sankul ID</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>59865895680</asp:ListItem>
                                <asp:ListItem>65982563250</asp:ListItem>
                                <asp:ListItem>54582563250</asp:ListItem>
                                <asp:ListItem>47564534530</asp:ListItem>
                                <asp:ListItem>63245543250</asp:ListItem>
                                <asp:ListItem>65234265250</asp:ListItem>
                                <asp:ListItem>59865895680</asp:ListItem>
                                <asp:ListItem>65982563250</asp:ListItem>
                                <asp:ListItem>54582563250</asp:ListItem>
                                <asp:ListItem>47564534530</asp:ListItem>
                                <asp:ListItem>63245543250</asp:ListItem>
                                <asp:ListItem>65234265250</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee ID</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Virendra-52252</asp:ListItem>
                                <asp:ListItem>Rohit-54648</asp:ListItem>
                                <asp:ListItem>Mohit-45648</asp:ListItem>
                                <asp:ListItem>Rohan-33348</asp:ListItem>
                                <asp:ListItem>Sohan-76348</asp:ListItem>
                                <asp:ListItem>Kripal-56348</asp:ListItem>
                                <asp:ListItem>Gaurav-45348</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-4 text-center">
                            <div class="form-group">
                                <button type="button" onclick="myFunction()" class=" btn btn-success btn-rounded">Search</button>
                                <a href="Rpt_EServiceBookReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset id="show">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <br />
                        <h3><b><u>Service Book</u></b></h3>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Print</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <%-- <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>--%>
                    </div>
                    <div class="row">
                        <fieldset>
                            <legend>PERSONAL INFORMATION</legend>
                            <div class="row">
                                <div class="col-md-9 col-sm-9">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td colspan="2">
                                                <label class="font-bold">Employee Unique ID</label></td>
                                            <td colspan="2">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4534543536" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <label class="font-bold">Employee Name</label></td>
                                            <td colspan="2">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Krishna Mishra" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <label class="font-bold">Father's/Husband Name</label></td>
                                            <td colspan="2">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Pulkit Mishra" /></td>
                                        </tr>

                                    </table>

                                </div>
                                <div class="col-md-3 col-sm-3">

                                    <div class="form-group">
                                        <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available">
                                        <br />
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">Date of Birth </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/12/1980" /></td>
                                            <td>
                                                <label class="font-bold">Age </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="40 Year" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Gender </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Male" /></td>
                                            <td>
                                                <label class="font-bold">Height</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="162 cm" /></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="font-bold">Caste </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GENERAL" /></td>
                                            <td>
                                                <label class="font-bold">Sub Caste</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Religion </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Hindu" /></td>
                                            <td>
                                                <label class="font-bold">Blood Group</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="A+" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Identification Mark </label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Mole on face" /></td>
                                            <td>
                                                <label class="font-bold">Handicapped (PWD)</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Handicapped Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Blindness" /></td>
                                            <td>
                                                <label class="font-bold">Handicapped Percentage</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="50%" /></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="font-bold">Critical Illness</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                            <td>
                                                <label class="font-bold">Employee Treasury Code</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="48854465" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">PAN No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GKPPD6591D" /></td>
                                            <td>
                                                <label class="font-bold">Aadhaar No.</label>

                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="859626458596" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">PAN No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GKPPD6591D" /></td>
                                            <td>
                                                <label class="font-bold">Aadhaar No.</label>

                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="859626458596" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Samagra ID No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4651649845864" /></td>
                                            <td>
                                                <label class="font-bold">Mobile No.</label>

                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="9685975856" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Email Id</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="krishna38@gmail.com" /></td>
                                            <td>
                                                <label class="font-bold">Hobbies</label>

                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Cricket, Swimming" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">whether the first Page of E-Service Book is certified</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yeo" /></td>
                                            <td>
                                                <label class="font-bold">Certification Date</label>

                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/08/2008" /></td>
                                        </tr>
                                    </table>
                                     <table class="table-bordered table">
                                      <tr>
                                          <td align="center">
                                              <a href="#" >Click here to View Date of Birth Certificate</a>
                                          </td>
                                          <td align="center">
                                              <a href="#" >Click here to View First Page of Service Book</a>
                                          </td>
                                          <td align="center">
                                             <a href="#" >Click here to View Second Page of Service Book</a>
                                          </td>
                                      </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Address</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">Present Address:</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">State</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                            <td>
                                                <label class="font-bold">Division</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">District</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>

                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <label class="font-bold">City</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">Pincode</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                            <td>
                                                <label class="font-bold">Address Line 1</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <label class="font-bold">Address Line 2</label>
                                            </td>
                                            <td colspan="2">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                        </tr>


                                        <tr>
                                            <td>
                                                <label class="font-bold">Permanent Address:</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">State</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                            <td>
                                                <label class="font-bold">Division</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">District</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>

                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <label class="font-bold">City</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">Pincode</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                            <td>
                                                <label class="font-bold">Address Line 1</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <label class="font-bold">Address Line 2</label>
                                            </td>
                                            <td colspan="2">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Marital Status and Spouse Details</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">Married</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                            <td>
                                                <label class="font-bold">Spouse Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Aarti Mishra" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Is Spouse Government Employee</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                            <td>
                                                <label class="font-bold">Department Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                            <td>
                                                <label class="font-bold">Office Address</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills, Bhopal, Madhya Pradesh" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Bank Account Details</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">Bank Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Punjab National Bank" /></td>
                                            <td>
                                                <label class="font-bold">Branch Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arera Hills" /></td>
                                            <td>
                                                <label class="font-bold">IFSC Code</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="BARB0ASH548" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Accout No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                            <td>
                                                <label class="font-bold">Account Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Salary Account" /></td>
                                            <td>
                                                <label class="font-bold">EPF No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="98189849844865" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">GPF No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                            <td>
                                                <label class="font-bold">NPS No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="84894849894198 " /></td>
                                            <td>
                                                <label class="font-bold">Group Insurance No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="88978948994984" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Gratuity No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="417114127587" /></td>
                                            <td>
                                                <label class="font-bold">EGLS No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="57857857575 " /></td>
                                            <td>
                                                <label class="font-bold">EDLI No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="858278755" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">ESIC No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="7882587827827" /></td>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Education Qualification</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Qualification</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Suject</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Board</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Grade</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Comments</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <label>High School</label>
                                            </td>
                                            <td>
                                                <label>-</label>
                                            </td>
                                            <td>
                                                <label>MP Board</label>
                                            </td>
                                            <td>
                                                <label>2007</label>
                                            </td>
                                            <td>
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <label>60.00%</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>2</label>
                                            </td>
                                            <td>
                                                <label>Higher Secondary School</label>
                                            </td>
                                            <td>
                                                <label>Arts</label>
                                            </td>
                                            <td>
                                                <label>MP Board</label>
                                            </td>
                                            <td>
                                                <label>2009</label>
                                            </td>
                                            <td>
                                                <label>2</label>
                                            </td>
                                            <td>
                                                <label>69.00%</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>3</label>
                                            </td>
                                            <td>
                                                <label>Graduation</label>
                                            </td>
                                            <td>
                                                <label>Arts</label>
                                            </td>
                                            <td>
                                                <label>Arts</label>
                                            </td>
                                            <td>
                                                <label>2012</label>
                                            </td>
                                            <td>
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <label>80.00%</label>
                                            </td>
                                        </tr>

                                    </table>
                                </div>
                            </div>


                        </fieldset>



                        <fieldset id="idFirstAppointment">
                            <legend>First Appointment Details</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">First Appointment District</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">First Appointment Order Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                            <td>
                                                <label class="font-bold">First Appointment Department</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Employee's Designation Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                            <td>
                                                <label class="font-bold">First Appointment Designation</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Appointment Joining Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                            <td>
                                                <label class="font-bold">Subject</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Office/Institute/School Code & Name</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>

                                        </tr>
                                        <tr>

                                            <td>
                                                <label class="font-bold">Sankul</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public " /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Office/Institute/School Address of first Posting</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Samvilian Order No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                            <td>
                                                <label class="font-bold">Samvilian Order Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Employee Retirement Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                            <td>
                                                <label class="font-bold">Working in other Department/Organization on Deputation Transfer</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="font-bold">Deputation Department Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                            <td>
                                                <label class="font-bold">Payroll Office Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                        </tr>

                                        <tr>

                                            <td>
                                                <label class="font-bold">Class</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                            <td>
                                                <label class="font-bold">Type of Post</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Pay Commission</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                            <td>
                                                <label class="font-bold">Level</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Pay Scale</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                            <td>
                                                <label class="font-bold">Basic Pay</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="21600" /></td>
                                        </tr>

                                    </table>
                                     <table class="table-bordered table">
                                      <tr>
                                          <td align="center"><a href="#">Click Here to View Appointment Order Letter</a></td>
                                          <td align="center"><a href="#">Click Here to View Present Posting Order</a></td>
                                     </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset id="idCurrentAppointment">
                            <legend>Current Appointment Details</legend>

                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">Current Appointment District</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Current Appointment Order Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                            <td>
                                                <label class="font-bold">Current Appointment Department</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Employee's Designation Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                            <td>
                                                <label class="font-bold">Current Appointment Designation</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Appointment Joining Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                            <td>
                                                <label class="font-bold">Subject</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Office/Institute/School Code & Name</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>

                                        </tr>
                                        <tr>

                                            <td>
                                                <label class="font-bold">Sankul</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public " /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Office/Institute/School Address of first Posting</label>
                                            </td>
                                            <td colspan="3">
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Samvilian Order No.</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                            <td>
                                                <label class="font-bold">Samvilian Order Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Employee Retirement Date</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                            <td>
                                                <label class="font-bold">Working in other Department/Organization on Deputation Transfer</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="font-bold">Deputation Department Name</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                            <td>
                                                <label class="font-bold">Payroll Office Type</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                        </tr>

                                        <tr>

                                            <td>
                                                <label class="font-bold">Class</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                            <td>
                                                <label class="font-bold">Type of Post</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Pay Commission</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                            <td>
                                                <label class="font-bold">Level</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">Pay Scale</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                            <td>
                                                <label class="font-bold">Basic Pay</label>
                                            </td>
                                            <td>
                                                <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="21600" /></td>
                                        </tr>

                                    </table>
                                </div>
                            </div>

                        </fieldset>


                        <fieldset>
                            <legend>Promotion Details</legend>
                            <div class="row">
                                <div class="col-md-12">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order Date</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Name of Issuing Office</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Direct In Case Of District/Division Level Authority</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Designation</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Basic Pay</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date of assumption of office</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="8" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Pay Scale Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order Date</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Name of Issuing Office</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Direct In Case Of District/Division Level Authority</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Designation</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Pay Scale</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <label>659856</label>
                                            </td>
                                            <td>
                                                <label>21/10/2022</label>
                                            </td>
                                            <td>
                                                <label>DEO</label>
                                            </td>
                                            <td>
                                                <label>Dewas</label>
                                            </td>
                                            <td>
                                                <label>Teacher</label>
                                            </td>
                                            <td>
                                                <label>4500-7000</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Annual Increment Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Month</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">New Basic Pay</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <label>2022</label>
                                            </td>
                                            <td>
                                                <label>12</label>
                                            </td>
                                            <td>
                                                <label>5000.00</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>2</label>
                                            </td>
                                            <td>
                                                <label>2023</label>
                                            </td>
                                            <td>
                                                <label>12</label>
                                            </td>
                                            <td>
                                                <label>5000.00</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Special Increment Order Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order Date</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Increment Type</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Name of Issuing Office</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Month</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">New Basic Pay</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">View Order</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="9" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset>
                            <legend>Transfer Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order Date</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Designation Type</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Posted School/Institute/Office Name (DISE Code)</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Nomination Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Nominee Name</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Relation with Nominee </label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Nominee Percentage</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset>
                            <legend>Earned Leave Records</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Month</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Earned Leave (In Days)</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Available Leave (In Days)</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Half Pay Leave Records</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Month</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Half Pay leave Earned (In Days)</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Available Leave (In Days)</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="font-bold">1</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">2022</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">April</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">20</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">0</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset>
                            <legend>Approved Leave Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Leave Type</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Days</label>
                                            </td>

                                            <td>
                                                <label class="font-bold">Date From</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date To</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Acceptance Date</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Approver</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date of return from leave</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="8" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Unauthorized Absence Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Days</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date From</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date To</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Date of return</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="8" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Punishment Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Type of Punishment</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Punishment Description</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Issuing Officer</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Order No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Issue Date</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Disciplinary Action Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Type of Case</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Case Description</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Before whom the Case are pending</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">From which date the proceedings are pending</label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="5" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Award Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Award Name</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Award Level</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Award Year</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Award Order No.</label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="5" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>Training Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Training Type</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Training Level</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Total Days</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">From</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">To</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Resource Group Details</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table-bordered table">
                                        <tr>
                                            <td>
                                                <label class="font-bold">S.No.</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">Resource Group</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">National Days</label>
                                            </td>
                                            <td>
                                                <label class="font-bold">State Days</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="text-center">
                                                <label>Not Available</label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>


