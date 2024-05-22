<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ParivadNivaran.aspx.cs" Inherits="mis_Transaction_Trn_ParivadNivaran" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div class="container-fluid">
                             <span class="hidden-sm-up">
         <br />
         <br />
         <br />
                           
     </span>
                        
    <div class="row page-titles" style="margin-bottom: -30px">
      
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size:large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" ><u><br />
                </u>
            </p>
        </div>
        <%--<div class="col-md-4 mt-4">
            <p style="font-style: oblique; color: brown; font-weight: bolder;  font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center"> </p>
        </div>--%>

        <div class="col-md-3 mt-5 fw-bold fs-3" style="position: relative; bottom: 10px; left: 100px; font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
    <p>शिकायत दर्ज करें</p>
</div>
        <div class="col-md-4 align-self-center">


            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>                             
                    <li class="breadcrumb-item active">Grievance Application</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                               <ul class="navbar-nav me-auto mb-2 mb-lg-0">

    <a class="nav-link  text-white " href="ParivednaNevakarn.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
    <li class="nav-item dropdown">

      <%--  <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong>शिकायत पंजीयन</></strong></a>--%>
         <%-- <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत पंजीयन </b></a>--%>


          <a class="nav-link dropdown-toggle font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i> शिकायत पंजीयन</b></strong></a>
        <ul class="dropdown-menu">

            <li><a class="dropdown-item" href="Trn_ParivadNivaran.aspx">शिकायत दर्ज करे</a></li>

            <li><a class="dropdown-item" href="ParivednaNevakarnStatus.aspx">शिकायत ट्रैकिंग स्थिति</a></li>
            <li><a class="dropdown-item" href="PrintComplaint.aspx">शिकायत प्रिंट करे</a></li>

        </ul>
       
    </li>
  <%--  <a class="nav-link  text-white " href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold">शिकायत प्रोसेसिंग </b></a>--%>


       <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="ViewAccumulatedComplaints.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत प्रोसेसिंग </b></a>
  <%--  <a class="nav-link  text-white " href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold">शिकायत निराकरण </b></a>--%>



     <a class="nav-link dropdown-toggle  font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  शिकायत निराकरण </b></a>



    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle font-16 text-white ml-3" href="GrievancesDispose.aspx" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>  रिपोर्ट</b> </a>
        
         <ul class="dropdown-menu">

       <li><a class="dropdown-item" href="DisposedGrievances.aspx">निराकृत शिकायतों की सूची</a></li>
       <li><a class="dropdown-item" href="RejectedGrievances.aspx">अस्वीकृत शिकायतों की सूची</a></li>

       <li><a class="dropdown-item" href="ForwardedGrievances .aspx">जिलेवार अग्रेषित शिकायतों का विवरण</a></li>
       <li><a class="dropdown-item" href="CPIGrievancesDetails.aspx">CPI से अग्रेषित शिकायतों का विवरण</a></li>
       <%-- <li><a class="dropdown-item" href="#">शिकायत प्रिंट करे</a></li>--%>
   </ul>
    </li>
</ul>


                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>शिकायत दर्ज करे</legend>



                <fieldset>
                    <legend>कार्यालय का विवरण
                    </legend>

                    <div class="row mt-2">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    कार्यालय का नाम <span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" value="GMS KUDANA 1 TO 8" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    विभाग<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" value="Education" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    जिला<span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Shajapur" />
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset>
                    <legend>कर्मचारी व्यक्तिगत विवरण
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="font-bold">
                                कर्मचारी / शिक्षक का नाम <span style="color: red">*</span></label>
                            <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Ashok Verma" />
                        </div>


                        <div class="col-md-3">
                            <label class="font-bold">
                                यूनिक कोड<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="BT1253" />
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">
                                ई-मेल आईडी<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Ashok@gmail.com" />
                        </div>




                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    मोबाइल<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="9926355644" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>कोई भी वैकल्पिक टेलीफोन नंबर है तो दर्ज करें। यदि नही है तो अपना मोबाइल नंबर दर्ज करे <span style="color: red">*</span></label>
                                <input name="txtPresentParentInstitution" type="text" class="form-control" autocomplete="off" placeholder="कोई भी वैकल्पिक टेलीफोन नंबर है तो दर्ज करें। यदि नही है तो अपना मोबाइल नंबर दर्ज करे " />
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>शिकायतों का विवरण भरें</legend>
                    <div class="row">



                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    शिकायत का प्रकार<span style="color: red">*</span></label>
                                <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlGrievanceType" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlGrievanceType" class="form-control vd_DDL_required">
                                    <option value="0">-Select-</option>
                                    <option value="1">स्थापना से संबंधित - Establishment Related</option>
                                    <option value="2">वित्तीय संबंधित - Financial Related</option>
                                    <option value="3">अन्य - Others</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
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


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    फॉरवर्ड करे
                                <span style="color: red">*</span></label>

                                <asp:DropDownList  id="ddlForword" class="form-control vd_DDL_required" runat="server" OnSelectedIndexChanged="ddlForword_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem value="0">-- Select -- </asp:ListItem>
                                    <asp:ListItem value="1">SED(Vallbhav Bhawan)</asp:ListItem>
                                    <asp:ListItem value="3">CPI</asp:ListItem>
                                    <asp:ListItem value="5">RSK</asp:ListItem>
                                    <asp:ListItem value="6">SCERT</asp:ListItem>
                                    <asp:ListItem value="7">Divisional JD</asp:ListItem>
                                    <asp:ListItem value="8">DEO</asp:ListItem>
                                    <asp:ListItem value="11">DPC</asp:ListItem>
                                    <asp:ListItem value="12">BEO  District / Block All </asp:ListItem>
                                    <asp:ListItem value="13">BRC District / Block All</asp:ListItem>
                                    <asp:ListItem value="16">DIET/ DRC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                       
                           <div class="col-md-3" runat="server" id="AuthorityName"  visible="false">
       <div class="form-group">
           <label>Authority Name:<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    दस्तावेज़ अपलोड करे<span style="color: red">*</span></label>
                                <input name="txtPanel" type="file" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
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
                        <span style="color: red;">नोट:-पीडीएफ प्रारूप में आवेदन/दस्तावेजों की हस्ताक्षरित प्रति अपलोड करें, आकार 1 एमबी से कम या बराबर होना चाहिए</span>

                    </div>


                </fieldset>
                <div class="row">
                    <div class="col-md-12 text-center">
                        
                        <Button runat="server" type="button" class="Alert-Confirmation  btn btn-success btn-rounded">शिकायत का दर्ज करे</Button>
                    </div>
                </div>

            </fieldset>
        </div>
    </div>

                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">

  <%-- <script>
            debugger;
            !function ($) {
                "use strict";
                var SweetAlert = function () { };
                //examples
                SweetAlert.prototype.init = function () {
                    //Basic
                    //Success Message
                    $('.Alert-Save').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to save this record ?",
                            type: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#3085D6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'Yes'
                            //animation: false,
                            //customClass: {
                            //    popup: 'animated tada'
                            //}
                        }).then((result) => {
                            if (result.value) {
                                Swal.fire({
                                    type: 'success',
                                    title: 'Success!',
                                    text: 'Record Saved Successfully!',
                                    timer: 2000,

                                    // animation: false,<a href="">TeacherFillReport.aspx</a>
                                    // customClass: {<a href="ViewAccumulatedComplaints.aspx">ViewAccumulatedComplaints.aspx</a>
                                    //     popup: 'animated tada'
                                    // }
                                }
                                ).then(() => {
                                    // Redirect to another page after success message is closed
                                    var ForwordTo = document.getElementById("ddlForword").value

                                    if (ForwordTo == "3") {

                                        window.location.href = 'ViewAccumulatedComplaints.aspx';
                                    }
                                });
                                var x = document.getElementById("EmployeeDetails2");
                                if (x.style.display === "none") {
                                    x.style.display = "block";
                                } else {
                                    x.style.display = "block";
                                }
                            }
                        })
                    });
                },
                    //init
                    //init
                    $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
            }(window.jQuery),
                //initializing
                function ($) {
                    "use strict";
                    $.SweetAlert.init()
                }(window.jQuery);
   </script>--%>
</asp:Content>

