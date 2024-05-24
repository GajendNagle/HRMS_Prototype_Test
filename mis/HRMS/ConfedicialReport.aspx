<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ConfedicialReport.aspx.cs" Inherits="mis_Transaction_ConfedicialReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles">
                        <div class="col-md-5 align-self-center">
    <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
        <img src="../../img/Confidential.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
        </u>
    </p>
    <h6 style="font-size: 15px; margin-left: 25px">PART-1 Basic Information(भाग एक- सामान्य जानकारी)</h6>
</div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Annual Confidential Report (ACR)</li>
                    </ol>
                </div>
            </div>
        </div>

    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <a class="nav-link  text-white " href="ConfedicialReportNotes.aspx" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a>
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
          </a>
          <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
             <li><a class="dropdown-item" href="EmployeeDetails.aspx">Resend/Print Application </a></li>
          </ul>
      </li>
      <a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a>
      <a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a>


      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b>
          </a>
         <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="Rpt_EmployeeACR.aspx">Employee ACR Report</a></li>
    <li><a class="dropdown-item" href="Rpt_ReportingOfficer.aspx">Reporting Officer ACR Report</a></li>
    <li><a class="dropdown-item" href="Rpt_AcceptingAuthority.aspx">Accepting Authority ACR Report</a></li>
    <li><a class="dropdown-item" href="Rpt_DistrictWiseAcr.aspx">District Wise ACR Report</a></li>
</ul>
      </li>
  </ul>
                    </div>
                </div>
            </nav>
            <br />
            <%-- <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <a class="nav-link  text-white " href="#" role="button"><b class="font-16 font-bold "><i class="fa fa-home "></i></b></a>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee ACR </b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="ConfedicialReport.aspx">Employee Apply ACR</a></li>
                                    <li><a class="dropdown-item" href="EmployeeDetails.aspx">Print Application </a></li>
                                </ul>
                            </li>
                            <a class="nav-link text-white" href="ReportingOfficerFill.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Fill By Reporting  Officer</b></a>
                            <a class="nav-link text-white" href="AcceptingAuthorityFilled.aspx" role="button"><b class="font-14 font-bold"><i class="far fa-hand-point-right"></i>ACR Report Reviewing Fill Accepting Authority </b></a>
                        </ul>
                    </div>




                </div>
            </nav>--%>

            <div class="row">
                <div class="col-md-12">
                    <h4 class="fw-bold">For Teacher's Cadre (Class 1st to 12th)  (शिक्षक संवर्ग के लिए कक्षा 1 से 12)</h4>
                    <div class="card">
                        <div class="card-body">

                            <div class="row page-titles mb-4">
                                <div class="col-md-5 align-self-center">
                                </div>
                          
                                <div class="card-header card-border-info">
                                </div>

                                <div runat="server" id="show">
                          
                                    <fieldset>
    <legend>EMPLOYEE PERSONAL INFORMATION</legend>
    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label>Financial Year<br />(वार्षिक प्रतिवेदन अवधि वर्ष) <span class="fa-pull-right" style="color: red">*</span> </label>
                <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
                    <asp:ListItem>2020-2021</asp:ListItem>
                    <asp:ListItem>2021-2022</asp:ListItem>
                    <asp:ListItem>2022-2023</asp:ListItem>
                    <asp:ListItem>2023-2024</asp:ListItem>
                    <asp:ListItem>2024-2025</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>Name <br />(नाम)  <span class="fa-pull-right" style="color: red">*</span> </label>
                <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>Designation <br />(पद नाम) <span style="color: red">*</span> </label>
                <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                    <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                    <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                    <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                    <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                </asp:DropDownList>

            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>
                    Unique ID<br />
                              (कर्मचारी आई.डी)
                           <span class="fa-pull-right" style="color: red">*</span>
                </label>
                <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label><br />
                    Date of Birth<br />
                    (जन्मतिथि)/अंकों में <span class="fa-pull-right" style="color: red">*</span>
                </label>
                <asp:TextBox runat="server" ID="TXTDOB" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

            </div>
        </div>
        <%--  <div class="col-md-3">
                       <div class="form-group">
                           <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                           <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                       </div>
                   </div>--%>
        <div class="col-md-3">
            <div class="form-group">
                <label><br />
                    Institution of Posting<br />
                    (पदस्थी शाला/स्थान)<span  style="color: red;">*</span></label>
                <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 select2" autocomplete="off">
                    <asp:ListItem>भोपाल</asp:ListItem>
                    <asp:ListItem>बैतूल</asp:ListItem>
                    <asp:ListItem>इंदौर </asp:ListItem>
                    <asp:ListItem>जबलपुर</asp:ListItem>
                </asp:DropDownList>

            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label class="fs-6"><br />
                    Dise Code of Institution<br />
                    (पदस्थी शाला का डाइस कोड)<span style="color: red;">*</span></label>
                <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label><br />
                    Date OF First Posting and designation<br />
                    (प्रथम नियुक्ति का दिनांक एवं पद)<span style="color: red;">*</span>
                </label>
                <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

            </div>
        </div>


    </div>
    <div class="row">

        <div class="col-md-3 mt-2">
            <div class="form-group">
                <label>
                    Date OF  Posting/Pramotion<br />
                    (वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक)<span style="color: red;">*</span>
                </label>
                <br />
                <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control mt-1" autocomplete="off" value="1996-12-23" TextMode="Date" Style="position: relative; top: 5px;"></asp:TextBox>

            </div>
        </div>
        <div class="col-md-3 mb-1">
            <div class="form-group">
                <label>
                    Date OF Filiing of annual Immovabel Property Return
                               (स्थाई संपत्ती विवरण दाखिल करनेका दिनांक)<span style="color: red;">*</span>
                </label>
                <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date" Style="position: relative; bottom: 4px;"></asp:TextBox>

            </div>
        </div>

    </div>


</fieldset>

                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
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
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'TeacherFillReport.aspx';
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
    </script>
</asp:Content>

