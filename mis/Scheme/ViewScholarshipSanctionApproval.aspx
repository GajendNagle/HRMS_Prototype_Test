<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ViewScholarshipSanctionApproval.aspx.cs" Inherits="mis_Scheme_ViewScholarshipSanctionApproval" %>

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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">View Scholarship Sanction Application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">View Scholarship Sanction for Approval <br />
 अनुमोदन के लिए छात्रवृत्ति स्वीकृति देखें
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Scholarship Sanction for Approval / अनुमोदन के लिए छात्रवृत्ति स्वीकृति देखें</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <table class="table table-responsive-lg table-bordered text-center">
                                <tr>
                                    <th>Proposal No<br />प्रस्ताव संख्या</th>
                                    <th>School Type<br />स्कूल का प्रकार</th>
                                    <th>School<br />स्कूल</th>
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

            <fieldset id="ScholershipApplicationList" class="mt-4">
                <legend>Scholership Applications to be Sanctioned / छात्रवृत्ति आवेदन स्वीकृत किये जायेंगे</legend>
                <table class="table table-responsive">
                    <tr>
                        <th>Sr.No.<br />सरल क्र.</th>
                        <th>Class <br />कक्षा</th>
                        <th>Member ID<br />सदस्य आईडी</th>
                        <th>Name<br />नाम</th>
                        <th>Gender<br />जेंडर</th>
                        <th>Category<br />श्रेणी</th>
                        <th>BPL<br />गरीबी रेखा से नीचे</th>
                        <th>Hostal<br />छात्रावास</th>
                        <th>Father Occupation<br />पिता का व्यवसाय</th>
                        <th>Last Year %<br />पिछले साल का प्रतिशत</th>
                        <th>Disability Type %<br />विकलांगता प्रकार %</th>
                        <th>Schemes<br />योजनाओं</th>
                        <th>Amount<br />राशि</th>
                        <th>Account Details<br />खाता विवरण</th>
                        <th>Remarks<br />टिप्पणी</th>
                        <th>Select<br />चयन</th>
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
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <input type="button" id="btnPropSend" name="button" value="Sanction the Above Selected Applications and Recommended for Payment" class="btn btn-success btn-border" />
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

