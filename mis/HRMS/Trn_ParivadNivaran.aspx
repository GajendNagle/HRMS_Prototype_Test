<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ParivadNivaran.aspx.cs" Inherits="mis_Transaction_Trn_ParivadNivaran" %>

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
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Complaint Filed</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px"><u><br>
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Add Employee Grievence Details / कर्मचारी शिकायत विवरण जोड़ें
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Office Information / कार्यालय का विवरण
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Name of Office<br />
                                कार्यालय का नाम<span style="color: red">*</span></label>
                            <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" value="GMS KUDANA 1 TO 8" />
                        </div>
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Department   
                                    <br />
                                विभाग<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" value="Education" />
                        </div>
                    </div>

                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                District<br />
                                जिला<span style="color: red">*</span></label>
                            <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Shajapur" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Employee Personal Details / कर्मचारी व्यक्तिगत विवरण
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <label>
                            Name of Employee or Teacher       
                                <br />
                            कर्मचारी या शिक्षक का नाम<span style="color: red">*</span></label>
                        <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Ashok Verma" />
                    </div>


                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <label>
                            Unique Code
                            <br />
                            यूनिक कोड<span style="color: red">*</span></label>
                        <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="BT1253" />
                    </div>

                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <label>
                            Email Id<br />
                            ई-मेल आईडी<span style="color: red">*</span></label>
                        <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Ashok@gmail.com" />
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">

                        <label>
                            Mobile   
                                <br />
                            मोबाइल<span style="color: red">*</span></label>
                        <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="form-group">
                            <label>
                                Enter Any Alternate Telephone Numbers. If Not Then Enter Your Mobile Number<br />
                                कोई भी वैकल्पिक टेलीफोन नंबर है तो दर्ज करें। यदि नही है तो अपना मोबाइल नंबर दर्ज करे <span style="color: red">*</span></label>
                            <input name="txtPresentParentInstitution" type="text" class="form-control" autocomplete="off" placeholder="कोई भी वैकल्पिक टेलीफोन नंबर है तो दर्ज करें। यदि नही है तो अपना मोबाइल नंबर दर्ज करे " />
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Fill The Details of Grievances / शिकायतों का विवरण भरें</legend>
                <div class="row">
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Type of Complaint<br />
                                शिकायत का प्रकार<span style="color: red">*</span></label>
                            <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlGrievanceType" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlGrievanceType" class="form-control vd_DDL_required">
                                <option value="0">-Select-</option>
                                <option value="1">स्थापना से संबंधित - Establishment Related</option>
                                <option value="2">वित्तीय संबंधित - Financial Related</option>
                                <option value="3">अन्य - Others</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Subject of Complaint<br />
                                शिकायत का विषय<span style="color: red">*</span></label>
                            <select id="salaryOptions" name="salaryOptions" class="form-control">
                                <option value="0">-Select-</option>
                                <option value="salary">वेतन - Salary</option>
                                <option value="payFixation">वेतन निर्धारण - Pay fixation</option>
                                <option value="pendingArrears">बकाया तंचित Pending arrears</option>
                                <option value="cipfWithdrawal">जीपीएफ एफबीएफ वापसी CIPF/FBF withdrawal</option>
                                <option value="gisFbf">जीआईएस / एफबीएफ - GIS/FBF</option>
                                <option value="gpfDpfFinalPayment">जीपीएफ पीडीएफ अंतिम भुगतान GPF/DPF final payment</option>
                                <option value="leaveReimbursement">छुट्टी की भरपाई - Leave reimbursement</option>
                                <option value="houseLoanAdjustment">घर ऋण समायोजन संबंधी समस्याएं House loan adjustment related problems</option>
                                <option value="allowsmos">- Allowsmos</option>
                                <option value="recoveries">वसूली संबंधित - Recoveries</option>
                                <option value="otherClaims">अन्य दावे - Other Claims</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Forward It<br />
                                फॉरवर्ड करे<span style="color: red">*</span></label>
                            <asp:DropDownList ID="ddlForword" class="form-control vd_DDL_required" runat="server" OnSelectedIndexChanged="ddlForword_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">-- Select -- </asp:ListItem>
                                <asp:ListItem Value="1">SED(Vallbhav Bhawan)</asp:ListItem>
                                <asp:ListItem Value="3">CPI</asp:ListItem>
                                <asp:ListItem Value="5">RSK</asp:ListItem>
                                <asp:ListItem Value="6">SCERT</asp:ListItem>
                                <asp:ListItem Value="7">Divisional JD</asp:ListItem>
                                <asp:ListItem Value="8">DEO</asp:ListItem>
                                <asp:ListItem Value="11">DPC</asp:ListItem>
                                <asp:ListItem Value="12">BEO  District / Block All </asp:ListItem>
                                <asp:ListItem Value="13">BRC District / Block All</asp:ListItem>
                                <asp:ListItem Value="16">DIET/ DRC</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-6 col-ld-4 col-xl-3" runat="server" id="AuthorityName" visible="false">
                        <div class="form-group">
                            <label>
                                Section Name<br />
                                अनुभाग का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="Select">-Select-</option>
                                <option value="1">RMSA</option>
                                <option value="2">Est-1</option>
                                <option value="3">Est-2</option>
                                <option value="4">Est-3</option>
                                <option value="5">Est-4</option>
                                <option value="6">CAFMS</option>
                                <option value="7">New Cadre</option>
                                <option value="15">Finance</option>
                                <option value="16">Grant</option>
                                <option value="17">NSDL</option>
                                <option value="18">CPI</option>
                                <option value="19">Legal</option>
                                <option value="20">Mis</option>
                                <option value="21">Physical education</option>
                                <option value="22">Akadmik</option>
                                <option value="23">CM-RISE</option>
                                <option value="24">Planning</option>
                                <option value="26">TMC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Upload Document<br />
                                दस्तावेज़ अपलोड करे<span style="color: red">*</span></label>
                            <input name="txtPanel" type="file" class="form-control" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-ld-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                File Complaint Here<br />
                                यहां शिकायत दर्ज करें<span style="color: red">*</span></label>

                            <textarea class="form-control" id="workdescription" rows="1" placeholder="यहां शिकायत दर्ज करें" oninput="autoResize(this)"></textarea>
                        </div>
                    </div>
                    <script>
                        // JavaScript function to automatically resize the textarea
                        function autoResize(textarea) {
                            textarea.style.height = 'auto'; // Reset height to auto
                            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
                        }
                    </script>
                </div>
                <div class="row">
                    <span style="color: red; font-weight: bold;">नोट:-पीडीएफ प्रारूप में आवेदन/दस्तावेजों की हस्ताक्षरित प्रति अपलोड करें, आकार 1 एमबी से कम या बराबर होना चाहिए</span>
                </div>
            </fieldset>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <button runat="server" type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Register Complaint</button>
                    <a runat="server" class="btn btn-outline-danger w-lg btn-border" href="Trn_ParivadNivaran.aspx">Clear</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

