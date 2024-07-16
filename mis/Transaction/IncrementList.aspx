<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="IncrementList.aspx.cs" Inherits="mis_Transaction_IncrementList" %>

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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Increment</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Increment List</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h5 class="card-title">Increment List / वेतन वृद्धि सूची
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Increment Deatils / वेतन वृद्धि विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">BEO</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br />
                                कार्यालय का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">GOVT. HSS NAGANDEORI</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" class="btn btn-success w-lg btn-border Alert-Save" onclick="GirdView()">Search</button>

                            <!-- Clear button (link) -->
                            <a id="clearfirst" href="/mis/Transaction/IncrementList.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fildDetails" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>CheckBox<br />
                                            <input type="checkbox" style="font-size: small;" id="checkAll" onclick="toggleAll(this)">
                                        </th>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Employee Name<br />
                                            कर्मचारी का नाम</th>
                                        <th>Order No<br />
                                            आदेश संख्या</th>
                                        <th>Order Date<br />
                                            ऑर्डर दिनांक</th>
                                        <th>Current Level<br />
                                            वर्तमान स्तर</th>
                                        <th>Current Basic Salary<br />
                                            वर्तमान मूल वेतन</th>
                                        <th>New Level<br />
                                            नया स्तर</th>
                                        <th>New Basic Salary<br />
                                            नया मूल वेतन</th>
                                        <th>Effective Date<br />
                                            प्रभावी तिथि</th>
                                        <th>Action<br />
                                            कार्रवाई</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>
                                        <input id="chkSelect" type="checkbox" name="ctl00$ContentBody$GridView1$ctl02$chkSelect"></td>
                                    <td>1</td>
                                    <td>BHARAT KUMAR</td>
                                    <td>202327</td>
                                    <td>14/05/2024</td>
                                    <td>Level 5</td>
                                    <td>35000.00</td>
                                    <td>Level 5</td>
                                    <td>35500.00</td>
                                    <td>30/05/2024</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a>
                            <button type="button" class="btn btn-success w-lg btn-border Alert-Save" data-bs-toggle="modal" data-bs-target="#ModalConfirm">Confirm Increment</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-success w-lg btn-border Alert-Save" data-bs-toggle="modal" data-bs-target="#ModalConfirm">Confirm Increment</button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="modal  fade" id="ModalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <h3 class="modal-title fw-bold text-white mb-3">Increment Approval</h3>
                    <button type="button" class="btn-close text-light" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Confirm Increment</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <label>
                                    Remark / टिप्पणी<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" AutoComplete="off" TextMode="MultiLine" CssClass="form-control" onchange="myFunction()"></asp:TextBox>
                            </div>
                        </div>
                    </fieldset>
                    <hr />
                    <div class="row">
                        <div class="modal-footer">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="Alert-Save btn w-lg btn-success btn-border">
                                        Confirm Increment Of Selected Employee
                                    </button>
                                    <a href="/mis/Transaction/IncrementList.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
        function GirdView() {
            document.getElementById("fildDetails").style.display = "block";

        }
        $('.Alert-confirm').click(function () {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to Confirm Increment ?",
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
                        text: 'Increment Confirm Successfully!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }

                    })
                }
            })
        });
    </script>
    <script>
        function toggleAll(source) {
            var checkboxes = document.querySelectorAll('table input[type="checkbox"]');
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i] != source)
                    checkboxes[i].checked = source.checked;
            }
        }
    </script>
</asp:Content>

