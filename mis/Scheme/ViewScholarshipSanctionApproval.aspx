<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewScholarshipSanctionApproval.aspx.cs" Inherits="mis_Scheme_ViewScholarshipSanctionApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">View Scholarship Sanction Approval</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active">View Scholarship Sanction Application</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Scholarship Sanction for Approval</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <table class="table table-responsive-lg table-bordered">
                                <tr>
                                    <th>Proposal No</th>
                                    <th>School Type</th>
                                    <th>School</th>
                                </tr>
                                <tr>
                                    <td>1/351/7709</td>
                                    <td>State Government</td>
                                    <td>Sushila Devi Hr. Sec. School</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="row justify-content-center bg-cyan" style="margin: 0px 9px 0px 10px;">
                <p>
                    HELP: By default all the application as per the following list with the selected check box will be sanctioned. Please uncheck the checkbox to reject and remove any
application from the list of sanctioned cases.
                </p>
            </div>

            <fieldset id="ScholershipApplicationList">
                <legend>Scholership Applications to be Sanctioned</legend>
                <table class="table">
                    <tr>
                        <th>Sr.No.</th>
                        <th>Class</th>
                        <th>Member ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Category</th>
                        <th>BPL</th>
                        <th>Hostal</th>
                        <th>Father Occupation</th>
                        <th>Last Year %</th>
                        <th>Disability Type %</th>
                        <th>Schemes</th>
                        <th>Amount</th>
                        <th>Account Details</th>
                        <th>Remarks</th>
                        <th>Select</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>8th</td>
                        <td>116609919</td>
                        <td>Awanti Kori</td>
                        <td>Female</td>
                        <td>OBC</td>
                        <td>Yes</td>
                        <td>No</td>
                        <td>Labour</td>
                        <td>No</td>
                        <td>No</td>
                        <td>4.1</td>
                        <td>400</td>
                        <td>3245454545 - SBIN0001245</td>
                        <td>
                            <input type="text" name="name" value="Sanctioned By SSDDO" /></td>
                        <td>
                            <input id="chk1" type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>9th</td>
                        <td>116609919</td>
                        <td>Mohit Kushwah</td>
                        <td>Male</td>
                        <td>OBC</td>
                        <td>Yes</td>
                        <td>No</td>
                        <td>Labour</td>
                        <td>No</td>
                        <td>No</td>
                        <td>4.1</td>
                        <td>400</td>
                        <td>324542546 - SBIN0004255</td>
                        <td>
                            <input type="text" name="name" value="Sanctioned By SSDDO" /></td>
                        <td style="align-content: center;">
                            <input id="chk1" type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>9th</td>
                        <td>116609919</td>
                        <td>Mohit Chouhan</td>
                        <td>Male</td>
                        <td>OBC</td>
                        <td>Yes</td>
                        <td>No</td>
                        <td>Labour</td>
                        <td>No</td>
                        <td>No</td>
                        <td>4.1</td>
                        <td>400</td>
                        <td>324542115 - SBIN0009240</td>
                        <td>
                            <input type="text" name="name" value="Sanctioned By SSDDO" /></td>
                        <td style="align-content: center;">
                            <input id="chk1" type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                </table>
            </fieldset>

            <div class="row justify-content-center">
                <div class="col-md-3">
                    <input type="button" id="btnPropSend" name="button" value="Sanction the Above Selected Applications and Recommended for Payment" class="btn btn-primary" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $(document).ready(function () {
            $('#btnPropSend').click(function () {
                if ($("#chk1")[0].checked) {
                    Swal.fire({
                        title: 'Sanction Confirmation Message?',
                        text: "Are you sure, want Sanction the Scholarship and Generate final bill for Payment? Press yes to Generate the Final Bill",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, I want Sanction'
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

