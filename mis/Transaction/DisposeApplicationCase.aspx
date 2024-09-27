<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DisposeApplicationCase.aspx.cs" Inherits="mis_Transaction_DisposeApplicationCase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
        .desposebtn{
            border:1px solid #842189;
            color:#842189;

        }
        .desposebtn:hover{
            background-color:#842189;
            color:white;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DEOCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Compassionate Appointment </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Decide on Pending Applications at DEO Level</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
					<div class="headertext btn btn-primary rounded-pill " style="padding-top:11px;">
						अनुकंपा नियुक्ति पर अंतिम निर्णय
						विवरण
					</div>
					<div>
						<marquee style="width:100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
							अनुकंपा नियुक्ति पर अंतिम निर्णय लेने हेतु सम्बंधित पेज का उपयोग किया जाता हैं |
						</marquee>
					</div>
				</div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Decision on Compassionate Application/अनुकंपा संबंधी आवेदन पर निर्णय
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               Select District /<br />
चयन करें जिला <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" Enabled="false" CssClass="form-control">
                                <asp:ListItem Selected="True">भोपाल</asp:ListItem>
                                <asp:ListItem>इंदौर</asp:ListItem>
                                <asp:ListItem>उज्जैन</asp:ListItem>
                                <asp:ListItem>शाजापुर</asp:ListItem>
                                <asp:ListItem>रतलाम</asp:ListItem>
                                <asp:ListItem>अलीराजपुर</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                      <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Designation /<br />
                                    पद का चयन करें<span style="color: red">*</span>
                                </label>
                                <select class="form-control select2" id="slctdesignation">
                                    <option value="0">-Select-</option>
                                    <option value="1">शैक्षणिक संवर्ग</option>
                                    <option value="2">लिपिक संवर्ग</option>
                                    <option value="3">चतुर्थ श्रेणी</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group" style="margin-top:3.3rem !important">
                                <button id="btnSearch" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            </div>
                        </div>
                   <%-- <hr />
                    <div class="row ">
                        <div class="col-md-12">
                            <button id="toggleButton4" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="DisposeApplicationCase.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>--%>
                </div>
                   </fieldset>
                <div class="mt-5" id="details" style="display: none">
                                       <fieldset>
<legend>Details/विवरण</legend>
                   <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                             <div class="form-group">
                            <button class="btn btn-info btn-rounded ">Excel</button>
                            <button class="btn btn-info btn-rounded ">PDF</button>
                        </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">

                            </div>
                        </div>
                    </div>
                <div class="row form-group" >
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>
                                        <th>Applicantion No./<br />आवेदन नंबर</th>
                                        <th>Name of the deceased employee officer/<br />दिवंगत कर्मचारी/अधिकरी का नाम</th>
                                        <th>Designation/ <br />पद</th>
                                        <th>Date Of Death/<br />मृत्यु दिनांक</th>
                                        <th>District/<br />जिला</th>
                                        <th>Compassionate Appointment Applicant Name/<br>अनुकंपा नियुक्ति आवेदक का नाम</th>
                                        <th>Date Of Birth/<br />जन्म दिनांक</th>
                                        <th>Caste/<br />जाति</th>
                                        <th>Mobile No./<br />मोबाईल नंबर</th>
                                        <th>Relationship of the applicant with the deceased public servant/<br>आवेदक का दिवंगत लोकसेवक के साथ संबंध</th>
                                        <th>Marital Status/<br />वैवाहिक स्थिति</th>
                                        <th>Application Status/<br />आवेदन स्थिति</th>
                                        <th>Dispose/<br />डिस्पोज करें</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>CA/BO2784/2401</td>
                                        <td>Rajeshwarprasad Tiwari (BO2784)</td>
                                        <td>Prathmik Shikshak</td>
                                        <td>07/05/2024</td>
                                        <td>Bhopal</td>
                                        <td>ABC</td>
                                        <td>19/06/1997</td>
                                        <td>ST (Scheduled Tribe)</td>
                                        <td>9856153212 </td>
                                        <td>Son</td>
                                        <td>Un-Married</td>
                                        <td>	Approved</td>
                                        
                                        <td><a class="btn desposebtn btn-rounded" href="DetailsOfDeceasedEmployee.aspx" />Despose</td>
                                    </tr>
                                   <%-- <tr>
                                        <td>2</td>
                                        <td>Laxminarayan Meena</td>
                                        <td>Peon Regular Contingent</td>
                                        <td>05/05/2021</td>
                                        <td>Narmadapuram</td>
                                        <td>VIRENDRA</td>
                                        <td>Male</td>
                                        <td>O.B.C.</td>
                                        <td>UnMarried</td>
                                        <td>01/01/1900</td>
                                        <td>Son</td>
                                        <td><a class="btn btn-success btn-rounded" href="DetailsOfDeceasedEmployee.aspx" />Action</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Yasmen Khan</td>
                                        <td>HM(MS)</td>
                                        <td>27/04/2021</td>
                                        <td>Ujjain</td>
                                        <td>ashar pasha</td>
                                        <td>Male</td>
                                        <td>O.B.C.</td>
                                        <td>UnMarried</td>
                                        <td>09/01/1996 </td>
                                        <td>Son</td>
                                        <td><a class="btn btn-success btn-rounded" href="DetailsOfDeceasedEmployee.aspx" />Action</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>   </fieldset>
                </div>
         
           
                
           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById("btnSearch").addEventListener("click", function () {
            document.getElementById("empDetail").style.display = "block";
        });
    </script>
     <script>
         document.getElementById("btnSearch").addEventListener("click", function () {

             var selectedValue = document.getElementById("slctdesignation").value;


             if (selectedValue == "1") {

                 details.style.display = "block";
             } else {

                 Swal.fire({
                     title: "Warning",
                     type: "warning",
                    
                     text: "Record Not Found.",

                 });
             }
         });
     </script>
</asp:Content>












































