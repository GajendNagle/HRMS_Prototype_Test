<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GrievancesDispose.aspx.cs" Inherits="mis_Transaction_GrievancesDispose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">


        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Grievance%20Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)"><u><br>
                </u>
            </p>
        </div>
        <div class="col-md-3 mt-5 fw-bold fs-3" style="position: relative; bottom: 10px; left: 80px; font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
            <p>शिकायत का निराकरण करना</p>
        </div>
        <%--  <div class="col-md-3 mt-4" style="position:relative; left:20px;">
            <p style="font-style: oblique; color: brown; font-weight: bolder;   font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align:right">शिकायत का निराकरण करना</p>
        </div>--%>

        <div class="col-md-5 align-self-center">

            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>

                    <li class="breadcrumb-item active">Grievance Application Status</li>
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
            <h3 class="fw-bold justify-content-center" style="position: relative; left: 500PX; top: 10PX; color: brown;">निराकरण : Dispose</h3>
            <div runat="server" id="show">
                <fieldset>
                    <legend>Grievances Dispose</legend>
                    <div class="row">

                        <div class="col-md-4 ">
                            <label>District<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                <asp:ListItem>--select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Rajgarh</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Vidisha</asp:ListItem>
                                <asp:ListItem>Ashoknagar</asp:ListItem>
                                <asp:ListItem>Shivpuri</asp:ListItem>
                                <asp:ListItem>Datia</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4 ">
                            <label>Authority  Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control select2">
                                <asp:ListItem>--select--</asp:ListItem>
                                <asp:ListItem>RMSA</asp:ListItem>
                                <asp:ListItem>Est-1</asp:ListItem>
                                <asp:ListItem>Est-2</asp:ListItem>
                                <asp:ListItem>Est-3</asp:ListItem>
                                <asp:ListItem>Est-4</asp:ListItem>
                                <asp:ListItem>CAFMS</asp:ListItem>
                                <asp:ListItem>New Cadre</asp:ListItem>
                                <asp:ListItem>Finance</asp:ListItem>
                                <asp:ListItem>Grant</asp:ListItem>
                                <asp:ListItem>NSDL</asp:ListItem>
                                <asp:ListItem>CPI</asp:ListItem>
                                <asp:ListItem>Legal</asp:ListItem>
                                <asp:ListItem>Mis</asp:ListItem>
                                <asp:ListItem>Physical education</asp:ListItem>
                                <asp:ListItem>Akadmik</asp:ListItem>
                                <asp:ListItem>CM-RISE</asp:ListItem>
                                <asp:ListItem>Planning</asp:ListItem>
                                <asp:ListItem>TMC</asp:ListItem>
                            </asp:DropDownList>
                        </div>



                        <div class="col-md-4 text-center mt-4" style="position: relative; top: 10px;">
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class="btn btn-success btn-rounded" OnClick="Unnamed_Click" Text=" Search" />

                                </>
                                <a href="GrievancesDispose.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="show2" runat="server" visible="false">
                <fieldset>
                    <legend>निराकरण : Dispose Action</legend>
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
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>S.No.</th>
                                            <th>Grievance No.</th>
                                            <th>Employee Name</th>
                                            <th>Type</th>
                                            <th>Subject</th>
                                            <th>Forwarded Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                            <%-- <th>Application Forword</th>--%>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>1002</td>
                                            <td>Dinanath Yadav</td>
                                            <td>Establishment Related</td>
                                            <td>Promotions</td>
                                            <td>04/08/2020</td>
                                            <td>DEO,KHARGONE</td>
                                            <td>
                                                <asp:CheckBox runat="server" ID="chakbox" OnCheckedChanged="chakbox_CheckedChanged" AutoPostBack="true" Style="border-color: #005b5c;" /></td>
                                            <%-- <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                    Forword
                                                    
                                                </button>--%>
                                            <%--</td>--%>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div runat="server" id="show3" visible="false">
                <label class="col-md-3 fw-bold color_black fs-4"><span style="color: red">Grievances No :- </span>1002</label>
                <br />
                <fieldset>
                    <legend>Grievances Dispose/Reject</legend>
                    <div class="row">
                        <%--  <div class="col-md-3 fw-bold color_black fs-4">
                        <label>Grievances No :<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" ID="TXTGrievances" CssClass="form-control text-center fw-bold " placeholder="1002"></asp:TextBox>
                    </div>--%>
                        <div class="col-md-4 fw-bold color_black ">
                            <label>Disposal Status Type<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDisposal" CssClass="form-control ">
                                <asp:ListItem>--select--</asp:ListItem>
                                <asp:ListItem>Disposed</asp:ListItem>
                                <asp:ListItem>Rejected</asp:ListItem>
                                <asp:ListItem>Objected</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-8 fw-bold color_black ">
                            <label>Type Note Here :<span style="color: red">*</span></label>
                            <textarea class="form-control   fw-bold" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                        </div>
                    </div>


                    <div class="row mt-3">
                        <div class="col-md-4 fw-bold color_black">
                            <label>File upload<span style="color: red">*</span></label>
                            <asp:FileUpload runat="server" CssClass="form-control  " ID="file" />
                            <p class="justify-content-end  fw-bold" style="position: relative; font-size: 15px">

                                <span style="color: red; font-size: 15px">documents in pdf format  size :150 kb</span>
                            </p>
                        </div>




                        <div class="col-md-3 text-center mt-4 justify-content-center">
                            <div class="form-group">
                                <button type="button" class="Alert-Save btn btn-success btn-rounded  ">
                                    Dispose it
                                </button>
                                <a href="GrievancesDispose.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>


                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
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
                        text: "Do you want to Dispose this record ?",
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
                                text: 'Record Dispose Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
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
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>

</asp:Content>






