<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="trnPunishMent.aspx.cs" Inherits="mis_Transaction_trnPunishMent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #empDetail {
            display: none;
        }

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Punishment </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">

            <img src="/img/Employee.png" style="height: 70px">
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <%-- <div class="card-header">
        </div>--%>
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Punishment / दंड
                            </h4>
                        </div>
                    </div>
                </div>

                <div class="card-body">


                    <%--<nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesNotw.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivities.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तरीय प्रशिक्षण</b></a>
                            &nbsp; <i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i><a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab2.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तर के पुरस्कार</b></a>
                            &nbsp;<i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i>  <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab3.aspx" role="button"><b class="font-16 font-bold">प्रशिक्षण का विवरण</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
                    <fieldset>
                        <legend>Punishment / दंड
                        </legend>
                        <div class="row align-items-end">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Employee Uniq Id 
                                <br />
                                        कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                    <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <hr />
                                <button id="Button1" type="button" class="btn btn-outline-success w-lg btn-border" onclick="myFunction()">View</button>
                                <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                            </div>
                        </div>

                    </fieldset>
                    <div id="empDetail">
                        <fieldset>
                            <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी </legend>
                            <div class="row align-items-end">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name<br />
                                            कर्मचारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Ankush Patidar" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID
                                            <br />
                                            यूनिक आई.डी<span style="color: red">*</span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4890" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                            <br />
                                            पदनाम <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code/ Name
                                    <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151236526-GOV VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div id="PunishmentDetails">
                            <fieldset>
                                <legend>Punishment Information / दंड  की जानकारी </legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3 ">
                                        <div class="form-group">
                                            <label>
                                                Type of Punishment
                                                 <br />
                                                दंड  का प्रकार <span style="color: red">*</span></label>
                                            <input name="txtDesignation" type="text" class="form-control"  autocomplete="off" placeholder ="Enter Type of Punishment"
                                                 />

                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="form-group">
                                            <label>
                                                Name of the issuer
              <br />
                                                जारीकर्ता का नाम<span style="color: red">*</span></label>
                                            <input name="txtDesignation" type="text" placeholder="Enter Name of the issuer" class="form-control"  autocomplete="off"
                                                />
                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="form-group">
                                            <label>
                                                Order Number
              <br />
                                                आदेश क्रमांक
                                                <span style="color: red">*</span></label>
                                            <input name="txtDesignation" type="text" placeholder="Enter Order Number"  class="form-control"  autocomplete="off"
                                                />
                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="form-group">
                                            <label>
                                                Order Date
              <br />
                                                आदेश दिनांक
                                                <span style="color: red">*</span></label>
                                            <input name="txtDesignation" type="date" class="form-control"  autocomplete="off"
                                                value="25-07-2024" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <hr />
                                        <button id="toggleButton" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                                        <a href="trnPunishMent.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                                    </div>
                                </div>
                            </fieldset>
                        </div>


                        <fieldset id="SearchTable" style="display: none;">
                            <legend>Punishment Details
                       /
                       
                               दंड का विवरण</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive ">
                                        <table class="table table-bordered">
                                           <thead>
                                                <tr>
                                                    <th>Sr. No.
                                                        <br />
                                                        सरल क्र.</th>
                                                    <th>Type of Proceedings

                                                        <br />
                                                        कार्यवाही का प्रकार
                                                    </th>
                                                    <th>Details of Proceedings

                                                        <br />
                                                        कार्यवाही का विवरण
                                                    </th>
                                                    <th>Before whom the Proceedings are Pending <br />
किसके समक्ष कार्यवाही लंबित है</th> <th>From what date the Proceedings are Pending <br />
किस दिनांक से कार्यवाही लंबित है</th>
                                                </tr></thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>अनुपस्थिति</td>
                                                    <td>कलेक्टर द्वारा बुलाये जाने पर भी अनुपस्थिति दर्ज नहीं की 
                                                    </td>
                                                    <td>जिला शिक्षा अधिकारी 
                                                    </td> <td>02/05/2024
                                                    </td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            document.getElementById("SearchTable").style.display = "block";
        });
    </script>
</asp:Content>
