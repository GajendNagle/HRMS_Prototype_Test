<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GrievancesDispose.aspx.cs" Inherits="mis_Transaction_GrievancesDispose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #workdescription {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }

        th {
            white-space: nowrap;
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
                            <a href="#Grievance" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Grievances Complaint Resolution</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card   card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Grievances Dispose / शिकायतों का निपटारा
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="show">
                <fieldset>
                    <legend>Grievances Dispose / शिकायतों का निपटारा</legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-ld-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    District<br />
                                    जिला<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control select2">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>1-Sheopur</asp:ListItem>
                                    <asp:ListItem>2-Morena</asp:ListItem>
                                    <asp:ListItem>3-Bhind</asp:ListItem>
                                    <asp:ListItem>4-Gwalior</asp:ListItem>
                                    <asp:ListItem>5-Datia</asp:ListItem>
                                    <asp:ListItem>6-Shivpuri</asp:ListItem>
                                    <asp:ListItem>7-Guna</asp:ListItem>
                                    <asp:ListItem>8-Ashoknagar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6 col-ld-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    Section  Name<br />
                                    अनुभाग का नाम<span style="color: red">*</span></label>
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
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" OnClick="Unnamed_Click" Text=" Search" />
                                <a href="GrievancesDispose.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="show2" runat="server" visible="false">
                <fieldset>
                    <legend>Dispose Action Details / निपटान कार्रवाई विवरण</legend>
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
                            <div class="table-responsive">
                                <table id="Table4" class="table table-bordered  text-center " runat="server">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>S.No.<br />
                                                सरल क्र.</th>
                                            <th>Grievance No.<br />
                                                शिकायत क्र.</th>
                                            <th>Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th>Type<br />
                                                प्रकार
                                            </th>
                                            <th>Subject<br />
                                                विषय
                                            </th>
                                            <th>Forwarded Date<br />
                                                अग्रेषित तिथि
                                            </th>
                                            <th>Status<br />
                                                स्थिति</th>
                                            <th>Action
                                                <br />
                                                कार्रवाई
                                            </th>
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
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>
            </div>
            <div runat="server" id="show3" visible="false">
                <label class="col-md-3 fw-bold color_black fs-4"><span style="color: red">Grievances No:-</span>1002</label>
                <br />
                <fieldset>
                    <legend>Grievances Dispose or Reject / शिकायतों का निपटारा करें या अस्वीकार करें</legend>
                    <div class="row ">
                        <div class="col-md-6 col-ld-4 col-xl-4">
                            <div class="form-group">
                                <label>
                                    Disposal Status Type<br />
                                    निपटान स्थिति प्रकार<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlDisposal" CssClass="form-control ">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>Disposed</asp:ListItem>
                                    <asp:ListItem>Rejected</asp:ListItem>
                                    <asp:ListItem>Objected</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6 col-ld-4 col-xl-4">
                            <div class="form-group">
                                <label>
                                    Type Note Here
                            <br />
                                    यहां नोट टाइप करें<span style="color: red">*</span></label>
                                <textarea class="form-control  fw-bold" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6 col-ld-4 col-xl-4">
                            <div class="form-group">
                                <label>
                                    File upload<br />
                                    फाइल अपलोड<span style="color: red">*</span></label>
                                <asp:FileUpload runat="server" CssClass="form-control" ID="file" />
                                <p class="align-items-end  fw-bold" style="font-size: 15px">
                                    <span style="color: red; font-size: 14px">Documents In Pdf Format  Size:150 kb</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <hr />
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Dispose It</button>
                                <a href="GrievancesDispose.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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






