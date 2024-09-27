<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ProcessApplicationListDeo.aspx.cs" Inherits="mis_HRMS_Trn_ProcessApplicationList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
   
    <style>

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 90%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            th {
                white-space: nowrap;
            }

            .modal-header {
                display: none;
            }
        }
        .btnhover:hover{
            background-color:#4c1c69;
            color:white !important;
            
        }
        td:first-child{
            text-align:center;
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
                        <li class="breadcrumb-item">DEO-Level Compassionate Appointment Action Report</li>
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
    <div class="card card-border-primary" runat="server" clientidmode="static" id="DataFirstTime">
        <div class="card-header">
            
               <div class="marqueecontainer border-0">
					<div class="headertext rounded-pill" style="padding-top:11px;">
						अनुकम्पा सत्यापन 
						विवरण
					</div>
					<div>
						<marquee style="width:100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
							अनुकम्पा आवेदनों के सत्यापन हेतु सम्बंधित पेज का उपयोग किया जाता हैं |
						</marquee>
					</div>
				</div>
         
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Action Report on Compassionate Appointment /अनुकंपा नियुक्ति पर कार्यवाही रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District Name /
                                <br />
                                जिला का नाम<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control" Enabled="false" ID="ddlDistrict">
                                <asp:ListItem Text="selected" Value="0">- चयन करे -</asp:ListItem>
                                <asp:ListItem Value="32" Selected="True">Bhopal</asp:ListItem>
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
                        <div class="form-group">
                            <input type="button" id="btnSearch" class="btn shadow btn-outline-success btn-rounded w-lg" value="Search">
                        </div>
                    </div>
                </div>
                <div style="display: none" id="details">
                    
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center">
                                        <thead>
                                            <tr style="white-space: nowrap">
                                                <th scope="col">Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th scope="col">Application No./आवेदन नंबर </th>
                                                <th scope="col">Name of the Deceased Employee Officer/<br />
                                                    दिवंगत कर्मचारी का नाम </th>
                                                <th scope="col">Designation<br />
                                                    पद</th>
                                                <th scope="col">Date Of Death<br />
                                                    मृत्यु दिनांक</th>
                                                <th scope="col">Name of the Compassionate Appointment Applicant/<br />
                                                    अनुकंपा नियुक्ति आवेदक का नाम</th>
                                                <th scope="col">Date of Birth<br />
                                                    जन्म तिथि </th>
                                                <th scope="col">Caste<br />
                                                    जाति</th>

                                                <th scope="col">MObile No.<br />
                                                    मोबाईल  नंबर</th>
                                                <th scope="col">Relationship of the Applicant with the Deceased Public Servant/Teacher/<br />
                                                    आवेदक का दिवंगत लोकसेवक/ शिक्षक के साथ संबंध</th>
                                                <th scope="col">Marital Status<br />
                                                    वैवाहिक स्थिति</th>
                                                <th scope="col">To which Post Applicant Want to be Appointed/आवेदक किस पद पर नियुक्ति चाहता है</th>
                                                <th scope="col">Applicant's Qualification/<br />
                                                    आवेदक की शैक्षणिक योग्यता</th>
                                                <th scope="col">Applicantion Status/<br />
                                                    आवेदन की स्तिथि</th>
                                                <th scope="col">Action Date/<br>
                                                    कार्रवाई दिनांक</th>
                                                <th scope="col">Remark/रिमार्क</th>
                                                <th scope="col">Reject/Return Reason/<br>
                                                    अस्वीकार/वापस का कारण</th>
                                                <th scope="col">Print Notesheet/नोटशीट प्रिंट करे कार्यवाही करे</th>
                                                <th scope="col">Action/कार्यवाही</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>CA/BO2784/2401</td>
                                                <td>Rajeshwarprasad Tiwari (BO2784)</td>
                                                <td>Prathmik Shikshak</td>
                                                <td>07/05/2024</td>
                                                <td>ABC</td>
                                                <td>19/06/1997</td>
                                                <td>ST (Scheduled Tribe)</td>
                                                <td>70477701125</td>
                                                <td>Son</td>
                                                <td>अविवाहित  </td>
                                                <td>शैक्षणिक संवर्ग </td>
                                                <td>12 PCM B SC COMPUTER SCIENCE</td>
                                                <td>नहीं </td>
                                                <td></td>
                                                <td>Applicant not having educational qualification</td>
                                                <td>NA</td>
                                                <td>
    <button type="button" class="btn btn-outline-primary fst-italic" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Print</button>
</td>
                                               <%-- <td>
                                                    <button type="button " class="btn btnhover fst-italic" style="border: 1px solid #5e008a; color: #4c1c69;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Print</button>
                                                </td>--%>
                                                <td><a class="btn btn-outline-primary"><i class="ri-edit-2-line"></i></a></td>
                                            </tr>
                                            <%-- <tr>
                                            <td>2</td>
                                            <td>Satendra Bahadur Singh</td>
                                            <td>Madhyami8k Shaishak</td>
                                            <td>15/04/2022</td>
                                            <td>SHAKSHAM SHINGH </td>
                                            <td>Male</td>
                                            <td>S.C.</td>
                                            <td>12/12/1996</td>
                                            <td>70477701125</td>
                                            <td>Son</td>
                                            <td>अविवाहित  </td>
                                            <td>लिपिकीय संवर्ग  </td>
                                            <td>GRADUATE</td>
                                            <td>नहीं </td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                            </td>
                                            <td><a class="btn btn-success">Action</a></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Achhe Lal patel </td>
                                            <td>Asstt Grade-2</td>
                                            <td>16/01/2023</td>
                                            <td>PRAMOD KUMAR PATEL</td>
                                            <td>Male</td>
                                            <td>O.B.C.</td>
                                            <td>02/10/2000</td>
                                            <td>70477701125</td>
                                            <td>Son</td>
                                            <td>अविवाहित  </td>
                                            <td>लिपिकीय संवर्ग  </td>
                                            <td>GRADUATE</td>
                                            <td>नहीं </td>
                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                            </td>
                                            <td><a class="btn btn-success">Action</a></td>
                                        </tr>--%>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>



        </div>
    </div>
    <div class="card card-border-primary" hidden="hidden" id="divRegisrationUpdate">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
					<div class="headertext rounded-pill" style="padding-top:11px;">
						अनुकम्पा सत्यापन 
						विवरण
					</div>
					<div>
						<marquee style="width:100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
							अनुकम्पा आवेदनों के सत्यापन हेतु सम्बंधित पेज का उपयोग किया जाता हैं |
						</marquee>
					</div>
				</div>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details of Deceased Employee /<br />
                    दिवंगत कर्मचारी का विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Deceased Officer/Employee Code /<br />
                                दिवंगत अधिकारी/कर्मचारी कोड<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtU_Id" type="text" value="AK7328" maxlength="6" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtU_Id" disabled="disabled"
                                class="form-control vd_Required m-0" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Name of Deceased Government Servant /<br />
                                दिवंगत शासकीय सेवक का नाम<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtName" type="text"
                                value="Phul Singh Kushawah" maxlength="20" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtName"
                                disabled="disabled" class="form-control vd_Required" onkeypress="return CharspaceOnly(event)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Gender /
                                <br />
                                लिंग<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Male" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Caste /
                                <br />
                                जाति<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="SC" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Last Posting District /
                                <br />
                                अंतिम पोस्टिंग जिला<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Vidisha" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Deceased Officer/Staff Cadre /<br />
                                दिवंगत अधिकारी/कर्मचारी कैडर<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Regular Class- III " maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Deceased Officer/Employee Designation /
                                <br />
                                दिवंगत अधिकारी/कर्मचारी पदनाम<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="Work Assistant" maxlength="50" disabled="disabled" class="form-control vd_Required " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Last School/Office and Employee Address /
                                <br />
                                अंतिम स्कूल/ कार्यालय और कर्मचारी का पता :<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="NGPS VEERPUR BANDH ( 1 to 5)" maxlength="50" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtL_S_C_Address" disabled="disabled" class="form-control vd_Required " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Cause of Death /
                                <br />
                                मृत्यु का कारण<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="कोविड-19 संक्रमण " maxlength="50" disabled="disabled" class="form-control vd_Required " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Date of Death /
                                <br />
                                मृत्यु दिनाँक<span style="color: Red;">*</span></label>
                            <div class="input-group">
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="28/12/2021" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtD_O_Death" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Number of Surviving Family Members /<br />
                                परिवार के जीवित सदस्यों की संख्या <span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="4" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Department Name /
                                <br />
                                विभाग का नाम<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtDepartment_Name" type="text" value="Education" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtDepartment_Name" disabled="disabled" class="form-control vd_Required" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Application Date /
आवेदन प्राप्त तिथि<span style="color: Red;">*</span></label>
                            <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtaaprecievedate" type="text" value="21/04/2023" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtaaprecievedate" disabled="disabled" class="form-control vd_Required dummy" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Nominee Details /<br />
                    उम्मीदवार की जानकारी</legend>
                <div>
                    <table class="table table-bordered table-responsive-lg">
                        <thead>
                            <tr>
                                <th>Sr.No. /<br>
                                    क्रमांक</th>
                                <th>Nominee Name /<br>
                                    उम्मीदवार का नाम</th>
                                <th>Relation With Employee /<br>
                                    कर्मचारी के साथ संबंध</th>
                                <th>Nominee Percentage /<br>
                                    उम्मीदवार प्रतिशत</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td>1</td>
                                <td>Kumar singh</td>
                                <td>Freind</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Kumar singh</td>
                                <td>Freind</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Kumar singh</td>
                                <td>Freind</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Kumar singh</td>
                                <td>Freind</td>
                                <td>100</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Information About all the Family Members of the Deceased Public Servant/Teacher /<br />
                    मृतक लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी</legend>
                <div class="row">
                    <div class="col-md-12 table-responsive">
                        <table class="table text-center table-striped table-bordered" style="border-collapse: collapse;">
                            <thead>
                                <tr class="card-header">
                                    <th data-class="expand" scope="col">Sr.No. /<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Name of Member /<br />
                                        सदस्य का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Relationship with the Deceased /<br />
                                        दिवंगत के साथ संबंध </th>
                                    <th data-hide="phone,tablet" scope="col">Occupation /<br />
                                        व्यवसाय</th>
                                    <th data-hide="phone,tablet" scope="col">Date Of Birth /<br />
                                        जन्म दिनांक</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblRowNumber">1</span>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblmemname" style="color: black;">KHILONI KUSHWAH</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblrelation" style="color: black;">Wife/ Husband</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblDOB" style="color: black;">01/01/1973</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblRowNumber">2</span>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblmemname" style="color: black;">RAHUL KUSHWAH</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblrelation" style="color: black;">Son</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblDOB" style="color: black;">17/07/1995</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblRowNumber">3</span>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblmemname" style="color: black;">BRAJESH KUSHWAH</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblrelation" style="color: black;">Son</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblDOB" style="color: black;">10/08/1997</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblRowNumber">4</span>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblmemname" style="color: black;">CHHAYA KUSHWAH</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblrelation" style="color: black;">Daughter</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblDOB" style="color: black;">02/08/2002</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblRowNumber">5</span>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblmemname" style="color: black;">OTU KUSHWAH</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: left;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblrelation" style="color: black;">Son</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: center;">
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblDOB" style="color: black;">30/07/2003</span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details of the Family Member Applying for Appointment /<br />
                    परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है</legend>
                <div class="row">
                    <div class="col-md-12 table-responsive">
                        <table class="table table-bordered text-center">
                            <thead>
                                <tr style="text-align: center; padding: 4px" class="">
                                    <th>Sr.No./<br>
                                        क्रमांक</th>
                                    <th>Applicant Name/<br>
                                        आवेदक का नाम</th>
                                    <th>Gender/<br>
                                        लिंग</th>
                                    <th>Date Of Birth/<br>
                                        जन्म तिथि</th>
                                    <th>Relation With Employee/<br>
                                        दिवंगत के साथ संबंध </th>
                                    <th>Martial Status/<br>
                                        वैवाहिक स्तिथि</th>
                                    <th>Educational Qualification/<br>
                                        शैक्षिक योग्यता</th>
                                    <th>Cadre for Appointment/<br>
                                        नियुक्ति हेतु संवर्ग</th>
                                    <th>Designation for Appointment/<br>
                                        नियुक्ति हेतु पदनाम</th>
                                    <th>Have Passed the PTET/<br>
                                        प्राथमिक शिक्षक हेतु प्राथमिक<br>
                                        शिक्षक पात्रता परीक्षा उत्तीर्ण की है
											</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ABC</td>
                                    <td>Male</td>
                                    <td>19/06/1997</td>
                                    <td>Son</td>
                                    <td>Un-Married</td>
                                    <td>Graduation</td>
                                    <td>शैक्षणिक संवर्ग</td>
                                    <td>प्राथमिक शिक्षक</td>
                                    <td>Yes</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Applicant's Documents /<br>
                    आवेदक के दस्तावेज</legend>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-bordered table-responsive-lg">
                            <thead>
                                <tr>
                                    <th>Sr.No./<br>
                                        क्रमांक</th>
                                    <th>Document Name/<br>
                                        दस्तावेज का नाम</th>
                                    <th style="text-align: center">View Document/<br>
                                        दस्तावेज देंखे</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><b>Death Certificate Of Deceased Government Servant /<br>
                                        दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary" target="_blank"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><b>Certificate of Date Of Birth of the Applicant /<br>
                                        आवेदक का जन्म तिथि का प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary" target="_blank"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><b>Certificate Of Residence/Native /<br>
                                        निवास/मूल निवासी होने का प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><b>Caste Certificate /<br>
                                        जाती प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><b>Certificate Of Passing Higher Secondary/Graduation or Other Examination /<br>
                                        हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td><b>Consent Certificate From the Head of the Family /<br>
                                        परिवार के मुखिया द्वारा सहमति प्रमाण पत्र</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td><b>Applicant's Photo /<br>
                                        आवेदक का फोटो</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td><b>Family Samagra Id /<br>
                                        परिवार की समग्र आईडी</b></td>
                                    <td style="text-align: center;">
                                        <a href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Proceeding/कार्यवाही</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Proceeding /<br />
                            कार्यवाही का चयन करें<span style="color: Red;">*</span></label>
                        <select id="ddlkaryvahi" class="form-control form-select select2" onchange="showHideRemarkView()">
                            <option value="0">--Select--</option>
                            <option value="1">आवेदन में आपत्ति करें/लंबित किया जाना है</option>
                            <option value="2">आवेदन स्वीकार करे </option>
                            <%--  <option value="4">आवेदन फॉरवर्ड करे संभागीय संयुक्त संचालक को </option>--%>
                        </select>
                    </div>
                      <div class="col-md-6 col-lg-4 col-xl-3" id="RemarkView" style="display: none">
                    <label>
                        Enter Remark /
                            <br />
                        रिमार्क<span style="color: Red;">*</span>
                    </label>
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Remark"></asp:TextBox>
                </div>
                </div>
                <div class="row align-items-end" id="DisctrictCollectDetails" style="display: none;">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label>
                            To which Post Does the Applicant Want to be Appointed? /
                            <br />
                            आवेदक किस पद पर नियुक्ति चाहता है<span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlSapthpatr5" onchange="ShowHide()">
                            <option value="">--Select--</option>
                            <%--   <option value="1">शैक्षणिक संवर्ग</option>--%>
                            <option value="2">लिपिक संवर्ग</option>
                            <%--<option value="3">चतुर्थ श्रेणी</option>--%>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label>
                            Enter Remark /<br />
                            रिमार्क<span style="color: Red;">*</span>
                        </label>
                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
              
                <div id="divApattiHai" class="row align-items-end mt-2" style="display: none">

                    <div class="row">
                        <div class="col-md-6  ">
                            <div class="form-group">
                                <label>
                                    Select If there is any objection /<br />
                                    यदि कोई आपत्ति हो तो चयन करें<span style="color: Red;">*</span>
                                </label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">नियमित  पद रिक्त नहीं होना</asp:ListItem>
                                    <asp:ListItem Value="2">आवेदक द्वारा  विलम्ब से आवेदन प्रस्तुत करना</asp:ListItem>
                                    <asp:ListItem Value="3">आवेदन अपूर्ण होना </asp:ListItem>
                                    <asp:ListItem Value="4">आवश्यक दस्तावेज संलग्र  नहीं होना</asp:ListItem>
                                    <asp:ListItem Value="5">आवेदक की शैक्षणिक  योग्यता नहीं होना</asp:ListItem>
                                    <asp:ListItem Value="6">आश्रित  का बालिग्र अर्थात २१ वर्ष से कम होना </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-6 " >
                            <div class="form-group">
                                <label>
                                    Enter Objection Details /<br />
                                    आपत्ति का विवरण दर्ज करें <span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Remark"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <%-- <a href="Trn_ProcessApplicationListDeo.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>--%>
                    </div>
                </div>
            </fieldset>


        </div>
    </div>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="row" style="font-family: Aparajita">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <h3><strong><b>Education portal 3.0</b></strong></h3>
                                <h4><strong><b>कार्यालय : जिला शिक्षा  अधिकारी Gwalior</b></strong></h4>
                                <h4><strong><b>नोट  शिट</b></strong></h4>
                                <h4><strong>
                                    <br />
                                    <br />
                                    <b style="position: absolute; left: -22%; top: 95%">प्रकरण क्र. 5252/AK7328/06/05/2024</b>
                                    <b style="position: absolute; right: -20%; top: 95%">दिनांक :06/05/2024</b>
                                </strong></h4>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto; position: relative; left: 10px;" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <h4 class="fw-bold"><span class="text-danger">विषय :-  </span>श्री BRAJESH KUSHWHA की  अनुकम्पा  नियुक्ति  हेतु  आवेदन पत्र के  सम्बन्ध  में </h4>
                        <br />
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th colspan="4" class="text-center font-20">: : <u>दिवंगत अधिकारी/कर्मचारी का विवरण</u> : :</th>
                                </tr>
                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी कोड:</th>
                                    <td>AK7328</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी का नाम: </th>
                                    <td>Phul Singh Kushawah</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>लिंग   :</th>
                                    <td>Male </td>
                                    <th>अंतिम पोस्ट जिला का चयन करें:</th>
                                    <td>Gwalior</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी केडर: </th>
                                    <td>Regular Class IV</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी पदनाम:</th>
                                    <td>Asstt Teacher(LDT)</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>मृत्यु का कारण :</th>
                                    <td>अन्य </td>
                                    <th>अंतिम स्कूल/कार्यालय  और कर्मचारी का पता : </th>
                                    <td>23040306405</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>जाति </th>
                                    <td>OBC</td>
                                    <th>मृत्यु दिनांक:</th>
                                    <td>28/12/2021</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>परिवार के जीवित सदस्यों की संख्या : </th>
                                    <td>5</td>
                                    <th>आवेदन प्राप्त तिथि  : </th>
                                    <td>21/04/2023</td>
                                </tr>
                                <tr>
                                    <th>विभाग  का नाम  :</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th colspan="4" class="text-center font-20">: : <u>आवेदक का विवरण</u> : :</th>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक का नाम :</th>
                                    <td>BRAJESH KUSHWAH</td>
                                    <th>लिंग : </th>
                                    <td>Male</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>वैवाहिक स्तिथि   :</th>
                                    <td>Unmarried</td>
                                    <th>जन्म दिनांक: </th>
                                    <td>10/08/1997</td>

                                </tr>
                                <tr class="mt-3">
                                    <th>प्राप्ति की तारीख :</th>
                                    <td>21/04/2023</td>
                                    <th>दिवंगत  के साथ संबंध: </th>
                                    <td>Son</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक किस पद के लिए नियुक्ति चाहता हैं:</th>
                                    <td>शैक्षणिक संवर्ग </td>
                                    <th>पदनाम: </th>
                                    <td>प्रयोगशाला   शिक्षक</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>क्या शिक्षक पात्रता  परीक्षा उत्तीर्ण(TET) हैं :</th>
                                    <td>नहीं</td>
                                    <th>मोबइल  नंबर: </th>
                                    <td>7047701125</td>

                                </tr>
                                <tr class="mt-3">
                                    <th>पात्रता  परीक्षा का वर्ष :</th>
                                    <td></td>
                                    <th>व्यावसायिक योग्यता : </th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        <h4 class="text-center font-20 fw-bold">: : <u>परिवार का विवरण</u> : : </h4>
                        <table class="table table-bordered text-center">
                            <thead>
                                <tr style="text-align: center; padding: 4px">
                                    <th>Sr. No.<br />
                                        सरल क्र.</th>
                                    <th>Member Name<br />
                                        सदस्य का नाम</th>
                                    <th>Relation With Deceased<br />
                                        दिवंगत के साथ संबंध </th>
                                    <th>Business<br />
                                        व्यवसाय</th>
                                    <th>Date of Birth<br />
                                        जन्म दिनांक</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>KHILONI KUSHWAH </td>
                                <td>Wife/Husband</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>01/01/1973</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>RAHUL KUSHWAH</td>
                                <td>Son</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>17/07/1995</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>KUSHWAH</td>
                                <td>SoN</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>10/08/1997</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>CHAYA KUSHWAH</td>
                                <td>Daughter</td>
                                <td>20/08/2002</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>OTU KUSHWAH</td>
                                <td>Son</td>
                                <td>30/07/2003</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-outline-primary" onclick="window.print()">Print</button>
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
    </div>
</div>
   <%-- <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            
        </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printDiv() {
            debugger
            var divToPrint = document.getElementById('temp');
            var newWin = window.open('', 'Print-Window');
            newWin.document.open();
            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
            newWin.document.close();
            setTimeout(function () { newWin.close(); }, 10);
        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
        function HideShow() {
            var district = document.getElementById('<%= ddlDistrict.ClientID %>')
            if (district.value != "0") {
                document.getElementById('divRegisrationUpdate').hidden = true;
                document.getElementById('GrdSchoolDetails').hidden = false;
                document.getElementById('headerofForFirstTime').hidden = false;
            }
        }
        function HideAndShow(Tohide, Toshow) {
            for (var i in Tohide) {
                document.getElementById(Tohide[i]).hidden = true;
            }
            for (var i in Toshow) {
                document.getElementById(Toshow[i]).hidden = false;
            }
        }
        const divRegisrationUpdate = document.getElementById('divRegisrationUpdate');
        const dataFirstTime = document.getElementById('DataFirstTime');
        const tableCells = document.querySelectorAll('td >a');
        tableCells.forEach(cell => {
            cell.addEventListener('click', () => {
                divRegisrationUpdate.hidden = !divRegisrationUpdate.hidden;
        dataFirstTime.hidden = !dataFirstTime.hidden;
        });
        });
    </script>
    <script type="text/javascript">
        function showHideRemarkView() {
            var ddl = document.getElementById('ddlkaryvahi');
            var remarkView = document.getElementById("RemarkView");
            var DisctrictCollectDetails = document.getElementById("DisctrictCollectDetails");
            if (ddl.value == "1") {
                divApattiHai.style.display = "initial";
                remarkView.style.display = "none";
                DisctrictCollectDetails.style.display = "none";
            }
            else if (ddl.value == "2" || ddl.value == "3") {
                remarkView.style.display = "initial";
                divApattiHai.style.display = "none";
                DisctrictCollectDetails.style.display = "none";
            }
            else if (ddl.value == "4") {
                DisctrictCollectDetails.style.display = "flex";
                remarkView.style.display = "none";
                divApattiHai.style.display = "none";
            }
            else {
                remarkView.style.display = "none";
                divApattiHai.style.display = "none";
                DisctrictCollectDetails.style.display = "none";
            }
        }

    </script>
   <script>
       document.getElementById("btnSearch").addEventListener("click", function() {
           
           var selectedValue = document.getElementById("slctdesignation").value;

           
           if (selectedValue == "1") {
                
               details.style.display = "block";
           } else {
               
               Swal.fire({
                   type: "warning",
                   title: "Warning",
                   text: "Record Not Found.",
 
               });
           }
       });
    </script>

</asp:Content>



