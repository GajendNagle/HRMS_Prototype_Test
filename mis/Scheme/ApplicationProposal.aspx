<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ApplicationProposal.aspx.cs" Inherits="mis_Scheme_ApplicationProposal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #ProposalDetails {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnApproveDEO {
            display: none;
        }

        #note {
            color: red;
        }

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Add Application to Proposal</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Proposal Application Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Application to Proposal</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Leave Applicant<span style="color: red">*</span></label>
                            <select id="ddlApplicant" class="form-control select2" onchange="ShowComment()">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Teacher</option>
                                <option value="2">HM/Principal</option>
                                <option value="3">Sankul Pracharya</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>School<span style="color: red">*</span></label>
                            <select id="ddlSchool" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Sushila devi Hr. Sec. School</option>
                                <option value="2">Acc Higehr Sec. School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Gender<span style="color: red">*</span></label>
                            <select id="ddlGender" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Category<span style="color: red">*</span></label>
                            <select id="ddlCategory" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">General</option>
                                <option value="2">OBC</option>
                                <option value="3">SC</option>
                                <option value="4">ST</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Class<span style="color: red">*</span></label>
                            <select id="ddlClass" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">1</option>
                                <option value="1">2</option>
                                <option value="1">3</option>
                                <option value="1">4</option>
                                <option value="2">5</option>
                                <option value="2">6</option>
                                <option value="2">7</option>
                                <option value="2">8</option>
                            </select>
                        </div>
                    </div>
                    <%--</div>
            <div class="row justify-content-center">--%>
                    <div class="col-md-3 mt-4 ">
                        <div class="form-group">
                            <button type="button" class=" Alert-Save btn btn-success btn-rounded" onclick="HideShow()">Submit</button>
                            <a href="ApplicationProposal.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="ProposalDetails">
                <fieldset id="show">
                    <legend>Leave Details</legend>
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
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>School Name</th>
                                        <th>Class</th>
                                        <th>Member ID</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Father Occupation</th>
                                        <th>Income</th>
                                        <th>Last Year %</th>
                                        <th>Disabled</th>
                                        <th>Account Details</th>
                                        <th>Schemes Amt</th>
                                        <th>Action(<b>Approve/Reject</b>)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>SARASWATI SHISHU</td>
                                        <td>8</td>
                                        <td>111709293</td>
                                        <td>MANDIR KULHOR</td>
                                        <td>ОBС</td>
                                        <td>Labour</td>
                                        <td>50000</td>
                                        <td>1.00</td>
                                        <td>N</td>
                                        <td>BKID0009016-901610110017535</td>
                                        <td>452</td>
                                        <td style="width: 200px;">
                                            <i class="fa fa-print" style="margin: 0px 18px 0px 0px;"></i>
                                            <input id="chk1" type="checkbox" name="name" value="" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 center">
                            <input type="button" name="button" value="Proposal Send to Senction Authority" id="btnPropSend" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </fieldset>
            </div>


        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="../dist/js/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#btnPropSend').click(function () {
                if ($("#chk1")[0].checked) {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Are you sure want Send Proposal to Sanction Authority?",
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
                                text: 'Proposal Send to Sanction Authority Successfully!',
                                timer: 2000
                            });
                           // window.location.reload();
                        }
                    });
                }
                else {
                    Swal.fire({
                        type: 'warning',
                        title: 'Warning!',
                        text: 'Select Atleast one record!',
                        timer: 2000
                    });
                }
            });
        });
        function HideShow() {
            var x = document.getElementById("ProposalDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>

