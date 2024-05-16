<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HO_TransferApproval.aspx.cs" Inherits="mis_Transaction_DO_TransferApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #EmployeeDetails1 {
            display: none;
        }

        #ShowOrderBox {
            display: none;
        }

        #ShowOrders {
            display: none;
        }

        #showsavebtn {
            display: none;
        }

        #btnApproveDO {
            display: none;
        }

        #note {
            color: red;
        }
    </style>
    <style>
        /* Style for the modal */
        #Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            /* width: 100%;
      height: 100%;*/
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }

        /* Style for the modal content */
        /* .modal-content {
      background-color: #fefefe;
      margin: 5% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
  }*/

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Head Office Transfer Approval</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item active">Head Office Transfer Approval</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Transfer Approval</legend>
                    <div class="row">
                        <%-- <div class="col-md-12 mt-3">
                            <div class="form-group">
                                <span class="bg-megnalight">Division : 
                              <b class="font-bold">Bhopal </b>
                                </span>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name/पदनाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">Commissioner</option>
                                    <option value="--Select--">Director</option>
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
                                <label>District / जिला <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Raisen">Raisen</option>
                                    <option value="Rajgarh">Rajgarh</option>
                                    <option value="Sehore">Sehore</option>
                                    <option value="Vidisha">Vidisha</option>
                                    <option value="Ashoknagar">Ashoknagar</option>
                                    <option value="Shivpuri">Shivpuri</option>
                                    <option value="Datia">Datia</option>
                                    <option value="Guna">Guna</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Harda">Harda</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Betul">Betul</option>
                                    <option value="Morena">Morena</option>
                                    <option value="Sheopur">Sheopur</option>
                                    <option value="Bhind">Bhind</option>
                                    <option value="Barwani">Barwani</option>
                                    <option value="Burhanpur">Burhanpur</option>
                                    <option value="Dhar">Dhar</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Jhabua">Jhabua</option>
                                    <option value="Khandwa">Khandwa</option>
                                    <option value="Khargone">Khargone</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Balaghat">Balaghat</option>
                                    <option value="Chhindwara">Chhindwara</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Katni">Katni</option>
                                    <option value="Mandla">Mandla</option>
                                    <option value="Narsinghpur">Narsinghpur</option>
                                    <option value="Seoni">Seoni</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Satna">Satna</option>
                                    <option value="Sidhi">Sidhi</option>
                                    <option value="Singroli">Singroli</option>
                                    <option value="Chhatarpur">Chhatarpur</option>
                                    <option value="Damoh">Damoh</option>
                                    <option value="Panna">Panna</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Tikamgarh">Tikamgarh</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Umaria">Umaria</option>
                                    <option value="Dindori">Dindori</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Dewas">Dewas</option>
                                    <option value="Mandsaur">Mandsaur</option>
                                    <option value="Neemuch">Neemuch</option>
                                    <option value="Ratlam">Ratlam</option>
                                    <option value="Shajapur">Shajapur</option>
                                    <option value="Ujjain">Ujjain</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Block / विकासखंड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Agar">Agar</option>
                                    <option value="Barod">Barod</option>
                                    <option value="Nalkheda">Nalkheda</option>
                                    <option value="Susner">Susner</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Bhabra">Bhabra</option>
                                    <option value="Katthiwara">Katthiwara</option>
                                    <option value="Sondwa">Sondwa</option>
                                    <option value="Udaygarh">Udaygarh</option>
                                    <option value="Jobat">Jobat</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Jaithari">Jaithari</option>
                                    <option value="Kotma">Kotma</option>

                                </select>
                            </div>
                        </div>
                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <label>Office Type/कार्यालय का प्रकार<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Head Office</option>
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
                        </div>--%>

                        <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label>Employee ID-Name/कर्मचारी आईडी-नाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">543545-Ashok Kumar</option>
                                    <option value="--Select--">234343-Shiv Sharan</option>
                                    <option value="--Select--">453445-Hari Om</option>
                                    <option value="--Select--">435452-Ashutosh Sharma</option>
                                    <option value="--Select--">234343-Zaheer Ansari</option>
                                    <option value="--Select--">453445-Ajay Nagar</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date<span style="color: red">*</span></label>
                                <input name="ename" id="firstDate4" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date<span style="color: red">*</span></label>
                                <input name="ename" id="firstDate45" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>--%>
                        <div class="col-md-3 mt-4">
                            <div class="form-group ">
                                <button type="button" onclick="HideShow()" class=" btn btn-success btn-rounded ">Search</button>
                                <a href="HO_TransferApproval.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>


                </fieldset>
                <div id="EmployeeDetails1">
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
                                    <table class="table table-bordered">
                                        <tr>
                                            <th rowspan="2">Sr.No.</th>
                                            <%-- <th rowspan="2">Action</th>--%>
                                            <th rowspan="2">Office Type</th>
                                            <th rowspan="2">Employee ID-Name</th>
                                            <th rowspan="2">Employee Designation</th>
                                            <th rowspan="2">Employee Department</th>
                                            <th rowspan="2">Employee Subject</th>
                                            <th colspan="5" class="text-center">Current Location</th>
                                            <th colspan="5" class="text-center">Preference Location</th>
                                            <th rowspan="2">View Service Book</th>
                                            <th rowspan="2">Reject Transfer</th>
                                        </tr>
                                        <tr>
                                            <th>Office Name</th>
                                            <th>Posted From</th>
                                            <th>District</th>
                                            <th>Block</th>
                                            <th>Sankul Code</th>
                                            <th>Office Name</th>
                                            <th>Reason For Transfer</th>
                                            <th>1st-Preference Location
                                                <br />
                                                <input id="checkbox1" type="checkbox" onclick="showhidesavebtn()" />
                                            </th>
                                            <th>2nd-Preference Location
                                                <br />
                                                <input id="checkbox2" type="checkbox" onclick="showhidesavebtn()" />
                                            </th>
                                            <th>3rd-Preference Location<br />
                                                <input id="checkbox3" type="checkbox" onclick="showhidesavebtn()" />
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>1</th>
                                            <%-- <td>
                                                <input onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>Head Office</td>
                                            <td>543545-Ashok Kumar</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>Hindi</td>
                                            <td>Head Office</td>
                                            <td>14-05-23</td>
                                            <td>Agar Malwa</td>
                                            <td>Agar</td>
                                            <td>6564545</td>
                                            <td>Joint Directors</td>
                                            <td>No</td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton1" OnClick="LBUpadateInfo_Click">23445656546</asp:LinkButton>


                                            </td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton2" OnClick="LBUpadateInfo_Click">23445656555</asp:LinkButton>


                                            </td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton3" OnClick="LBUpadateInfo_Click">23445656458</asp:LinkButton>


                                            </td>
                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                            <td>
                                                <button type="button" class=" btn btn-danger " onclick="openBootstrapModalreg()">Reject</button></td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <%--   <td>
                                                <input onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>Head Office</td>
                                            <td>234343-Shiv Sharan</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>English</td>
                                            <td>Joint Directors</td>
                                            <td>11-06-22</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>6564545</td>
                                            <td>Head Office</td>
                                            <td>No</td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton4" OnClick="LBUpadateInfo_Click">23445656784</asp:LinkButton>


                                            </td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton5" OnClick="LBUpadateInfo_Click">23445656985</asp:LinkButton>


                                            </td>
                                            <td class="txt-link">


                                                <asp:LinkButton runat="server" ID="LinkButton6" OnClick="LBUpadateInfo_Click">23445656658</asp:LinkButton>


                                            </td>
                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                            <td>
                                                <button type="button" class=" btn btn-danger " onclick="openBootstrapModalreg()">Reject</button></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                        </div>
                        <div id="btnApproveDO" class="row justify-content-center">
                            <div class="col-md-12 text-center">
                                <button type="button" onclick="()" class=" btn btn-success Alert-ApproveT">Approve By HO</button>
                                <%--<button type="button" class=" btn btn-danger Alert-RejectT">Reject By HO</button>--%>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <fieldset id="ShowOrderBox">
                    <legend>Generate Order</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Order No. / आदेश नंबर<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="546545" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Order Date / आदेश तारीख<span style="color: red">*</span></label>
                                <input name="ename" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Effective Date / प्रभावी तारीख<span style="color: red">*</span></label>
                                <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Upload Documents<span style="color: red">*</span></label>
                                <input name="ename" type="file" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Remark</label>
                                <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <button type="button" class="Alert-SaveOrder btn btn-success btn-rounded">Save</button>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="ShowOrders">
                    <legend>Details</legend>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Order No.</th>
                                    <th>Order Date</th>
                                    <th>Effective Date</th>
                                    <th>Generate Order</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>546545</td>
                                    <td>04/04/2023</td>
                                    <td>05/02/2024</td>
                                    <td>
                                        <button onclick="openPDF1()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                </tr>
                            </table>
                        </div>
                    </div>

                </fieldset>

                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Block </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block</strong>from the dropdown and the data will be populated from the <strong>Block Master</strong>and data cascade from <strong>District Master</strong>.</li>
                                    </ul>
                                </li>
                                <%-- <li><strong>Office Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the <strong>Office Type Master</strong>.</li>
                                    </ul>
                                </li>--%>

                                <%--<li><strong>Employee ID</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee ID </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>From Date / To Date</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Date</strong>from the calendar.</li>
                                    </ul>
                                </li>--%>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the  details will show on the screen according to the selected field.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Action</strong>
                                    <ul>
                                        <li>To approve the application, after clicking on the checkbox, Approve and Request Button wil be shown</li>
                                    </ul>
                                </li>
                                <li><strong>View E Service Book</strong>
                                    <ul>
                                        <li>User should be able to click on View Icon.</li>
                                        <li>After clicking on the View Icon a <strong>E Service Book</strong> will open in another tab.</li>
                                    </ul>
                                </li>
                                <li><strong>Approve By HO</strong>
                                    <ul>
                                        <li>User Can Click Approve By HO Button.</li>
                                        <li>On Approve By HO button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to approve this transfer?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Transfer approved Successfully!") and Generate Order Fields will be shown.</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Reject By DO</strong>
                                    <ul>
                                        <li>User Can Click Reject By DO Button.</li>
                                        <li>On Reject By DO button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Order No.</strong>
                                    <ul>
                                        <li>User can enter Order No. in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Order No.</strong>
                                    <ul>
                                        <li>User can select Order Data from calendar.</li>
                                    </ul>
                                </li>
                                <li><strong>Upload Documents.</strong>
                                    <ul>
                                        <li>User can Upload pdf documents in file upload.</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On Save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this order?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Order Saved Successfully!") and Order details will be shown on below in grid.</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Generate Letter.</strong>
                                    <ul>
                                        <li>User can click on generate order button.</li>
                                        <li>After clicking on generate order button order letter will be open.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="bootstrapModalreg">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Reject Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBoxreg2" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- sample modal content -->
    <!-- Editable  modal content -->
    <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xxl" style="width: 100%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myLargeModalLabel2">School Details</h4>
                    <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>School Basic Information</legend>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                    <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                        <asp:ListItem>2-Indore</asp:ListItem>
                                        <asp:ListItem>3-Ujjain</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">District<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                        <asp:ListItem>2-Raisen</asp:ListItem>
                                        <asp:ListItem>3-Sehore</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Block<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                        <asp:ListItem>Berasia</asp:ListItem>
                                        <asp:ListItem>Phanda</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Location<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>1-Rural</asp:ListItem>
                                        <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>Govindpura</asp:ListItem>
                                        <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Habitation </label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Board<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>1-CBSE</asp:ListItem>
                                        <asp:ListItem Selected="True">2-State Board</asp:ListItem>
                                        <asp:ListItem>3-ICSE </asp:ListItem>
                                        <asp:ListItem>4-International</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>1-Boy</asp:ListItem>
                                        <asp:ListItem>2-Girls</asp:ListItem>
                                        <asp:ListItem>3-Co-Ed</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Primary">1-Pre-Primary</option>
                                        <option value="1-Primary">2-Primary</option>
                                        <option value="2-Upper Primary">3-Upper Primary</option>
                                        <option value="3-Higher Secondary">4-Secondary</option>
                                        <option value="3-Higher Secondary">5-Higher Secondary</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category Details<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                        <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                        <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                        <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                        <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">A-State Govt</asp:ListItem>
                                        <asp:ListItem>B-Govt Aided</asp:ListItem>
                                        <asp:ListItem>C-Private UnAided </asp:ListItem>
                                        <asp:ListItem>D-Central Govt</asp:ListItem>
                                        <asp:ListItem>E-Other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                        <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                        <asp:ListItem>3-Local Body </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">In-Charge Type<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="t">1-Head Master / Principal </asp:ListItem>
                                        <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                        <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Unique Id<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Name<span style="color: red;"> *</span></label>
                                    <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Mobile Number <span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                    <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="t">2015</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>

                                        <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>19-English</asp:ListItem>
                                        <asp:ListItem>04-Hindi</asp:ListItem>
                                        <asp:ListItem>18-Urdu</asp:ListItem>
                                        <asp:ListItem>10-Marathi</asp:ListItem>
                                        <asp:ListItem>99-Other</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>



                        </div>

                    </fieldset>
                    <fieldset>
                        <legend>School Address Information</legend>


                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Address (Line 2)</label>
                                    <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Website</label>
                                    <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Morning</asp:ListItem>
                                        <asp:ListItem>Afternoon</asp:ListItem>
                                        <asp:ListItem>Both</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>



                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>CM Rise</asp:ListItem>
                                        <asp:ListItem Selected="True">Model</asp:ListItem>
                                        <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                        <asp:ListItem>District Excellence</asp:ListItem>
                                        <asp:ListItem>Block Excellence</asp:ListItem>
                                        <asp:ListItem>PM Shri </asp:ListItem>
                                        <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                        <asp:ListItem>Urdu</asp:ListItem>
                                        <asp:ListItem>Marathi</asp:ListItem>
                                        <asp:ListItem>Sanskrit</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Functional</asp:ListItem>
                                        <asp:ListItem>Closed</asp:ListItem>
                                        <asp:ListItem>Merged</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">hostel Attach<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem Selected="True">No</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>


                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>School Bank Information</legend>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div>
                            <%-- <asp:Button ID="Button4" CssClass="btn btn-success btn-rounded " runat="server" OnClick="Button1_Click" Text="Update" />--%>
                            <%--<button type="button" class="btn btn-success" onclick="CloseModal()">Update</button>--%>
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" onclick="CloseModal()">Close</button>
                        </div>
                    </div>



                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
        function GenerateOrder() {

            var idOrderno = document.getElementById("idOrderno");
            var ddlforOrder = document.getElementById("ddlforOrder").value;
            if (ddlforOrder == "1") {
                idOrderno.value = "546545";
            } else {
                idOrderno.value = "";
            }
        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/E-Service Book.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
        function openPDF1() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var checkbox3 = document.getElementById("checkbox3");
            var btnApproveDO = document.getElementById("btnApproveDO");
            if (checkbox1.checked || checkbox2.checked || checkbox3.checked) {
                btnApproveDO.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                btnApproveDO.style.display = "none"
            }
            else if (checkbox3.checked === false && checkbox1.checked === false) {
                btnApproveDO.style.display = "none"
            }
            else {
                btnApproveDO.style.display = "block"
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-ApproveT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Transfer?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Transfer Approveed Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                            var x = document.getElementById('ShowOrderBox');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }

                        }
                    })
                });

                $('.Alert-RejectT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject this Transfer?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Transfer Rejected Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });

                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to generate this order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Order generated Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }

                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script>
        function openModal() {
            document.getElementById('Editmodal').style.display = 'block';
        }
        function CloseModal() {
            document.getElementById('Editmodal').style.display = 'none';
        }
    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModal() {
            $('#bootstrapModal').modal('show');
        }
    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
    </script>
</asp:Content>
