<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ServiceBookSearchReport.aspx.cs" Inherits="mis_HRMS_Rpt_ServiceBookSearchReport" %>

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
            vertical-align: middle!important;
             height: 5rem;         
        }            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
  <%--  <div class="row page-titles mb-4">
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
   
        <div class="card-header card-border-info"> 

        </div>--%>
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
                        <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#E-ServiceBook" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>E-Service Book </span></a>
                    </li>
                    <li class="breadcrumb-item"><span>E-Service Book Report</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>


<%--  <div class="row page-titles mb-4">--%>

<div class="card card-border-primary">
    <div class="card-header">
        <div class="row">
            <div class="col-lg-12">
                <h5 class="card-title">E-Service Book Report/

ई-सर्विस बुक रिपोर्ट
                </h5>
            </div>
        </div>
    </div>

        <div class="card-body">

            <fieldset>
                <legend>E-Service Book Report/
ई-सर्विस बुक रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Distric/<br />ज़िलाt<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2 select2-hidden-accessible" data-select2-id="32" tabindex="-1" aria-hidden="true">
                            <option value="--Select--" data-select2-id="34">--Select--</option>
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
                            <label>Department/<br />विभाग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="Bhopal">--Select--</option>
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Designation/<br />पद का नाम<span style="color: red">*</span></label>
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
                            <label>Udice Code/<br />डाइस कोड</label>
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
                     <%--  <span class="row">
                            <asp:HyperLink runat="server" Text="Please check dice code if not known" NavigateUrl="https://shikshaportal.mp.gov.in/Public/Reports/StudentScholarshipStatusByDiseCode.aspx" Target="_blank"></asp:HyperLink>
                       </span>--%>
                    </div>    
                    </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date of Joining/<br />जोइनिंग दिंनाक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    
                 <%--   <div class="col-md-3">
                    <div class="form-group">
                        <span class="row">
                         <asp:HyperLink runat="server" Text="Please check dice code if not known" NavigateUrl="https://shikshaportal.mp.gov.in/Public/Reports/StudentScholarshipStatusByDiseCode.aspx" Target="_blank"></asp:HyperLink>
                        </span>
                    </div>
                </div>--%>
                     </div>
                    <hr />
                     <div class="row align-items-end">
     <div class="col-md-12">
         <div class="form-group">
          <%--   <input type="button" value="Search" class=" btn w-lg btn-success btn-border" id="searchButton" onclick="checkDropdown(); return false;" />--%>
               <button type="button" onclick="myFunction()" class="Alert-Save btn w-lg btn-success btn-border">Search</button>
             <%--  <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>--%>
             <a href="Rpt_ServiceBookSearchReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
         </div>
     </div>
<%--                    <div class="row justify-content-center">
                        <div class="col-md-4 text-center">
                            <div class="form-group">
                                <button type="button" onclick="myFunction()" class="Alert-Save btn btn-success btn-rounded">Search</button>
                                <a href="Rpt_ServiceBookSearchReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                    </div>
               
            </fieldset>
            <br />         
             <fieldset id="show" style="display:none;">                 
                 <legend>Service Book list</legend>
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
                                 <table id="tblList" class="table table-bordered table-responsive-lg text-center">
                                     <thead>
                                         <tr valign="middle">
                                             <th>Sr.No.</th>
                                             <th>Employee Name</th>
                                             <th>Department</th>
                                             <th>Designation</th>                     
                                             <th>District</th>
                                             <th>Block</th>
                                             <th>UDISE Code</th>
                                             <th>DOJ</th>
                                             <th>Check Report</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                         <tr valign="middle">
                                             <td>1</td>
                                              <td>Sourabh mishra(WD2123)</td>                       
                                             <td>DPI</td>
                                             <td>Principal Secretary</td>
                                             <td>Bhopal</td>
                                             <td>Bhopal</td>
                                             <td>65234265250</td>
                                             <td>05-12-2023</td>
                                             <td>
                                                 <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>
                                              
                                                 </td>
                                         </tr>
                                         <tr>
                                               <td>2</td>
                                              <td>Virendra Mehra(WD2124)</td>                       
                                             <td>DPI</td>
                                             <td>Principal Secretary</td>
                                             <td>Bhopal</td>
                                             <td>Bhopal</td>
                                             <td>65234265250</td>
                                             <td>05-12-2023</td>
                                             <td>
                                                <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>

                                             </td>
                                         </tr>
                                         <tr>
                                              <td>3</td>
                                              <td>Kiran Yadav(Wd2125)</td>                       
                                             <td>DPI</td>
                                             <td>Principal Secretary</td>
                                             <td>Bhopal</td>
                                             <td>Bhopal</td>
                                             <td>65234265250</td>
                                             <td>05-12-2023</td>
                                             <td>
                                               <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>
                                              
                                            </td>
                                         </tr>
                                         <tr>
                                             <td>4</td>
                                            <td>Amit Kumar(Wd2126)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                          <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>
                                              
                                        </td>
                                         </tr>
                                         <tr>
                                             <td>5</td>
                                            <td>Arun Yadav(Wd2127)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                          <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                             
                                        </td>
                                         </tr>
                                         <tr>
                                              <td>6</td>
                                            <td>Vinod Kumar(Wd2128)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                           <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                            
                                            </td>
                                         </tr>
                                         <tr>
                                             <td>7</td>
                                            <td>Rakesh Singh(Wd2129)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                            <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                            
                                            </td>
                                         </tr>
                                         <tr>
                                             <td>8</td>
                                            <td>Vikky Singh(Wd2130)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                           <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                        
                                            </td>
                                         </tr>
                                         <tr>
                                             <td>9</td>
                                            <td>Dheeraj Kumar(Wd2131)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                           <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                             
                                        </td>
                                         </tr>
                                         <tr>
                                              <td>10</td>
                                            <td>Yogesh Singh(Wd2132)</td>                       
                                            <td>DPI</td>
                                            <td>Principal Secretary</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>65234265250</td>
                                            <td>05-12-2023</td>
                                            <td>
                                           <asp:HyperLink runat="server" NavigateUrl="Rpt_ServiceBook.aspx" Target="_blank"><i class="fa fa-eye"></i></asp:HyperLink>                                           
                                            </td>
                                         </tr>
                                     </tbody>
                                 </table>
                             </div>
                         </div>
                   
    
    
 </fieldset>
        </div>
   
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Search Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Found Successfully!',
                                timer: 2000
                            }
                            )

                        }

                    })
                })
            }
        }
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


