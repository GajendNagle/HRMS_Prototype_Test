<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectDetails.aspx.cs" Inherits="mis_Development_ProjectDetails" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                <%--इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |--%>
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Project Details / परियोजना विवरण </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Date/<br />
                                प्रारंभिक दिनांक से<span style="color: red">*</span></label>
                            <input type="date" id="Fdate" name="birthday" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date /<br />
                                अंतिम दिनांक तक<span style="color: red">*</span></label>
                            <input type="date" id="Tdate" name="birthday" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Status /<br />

                                परियोजना की स्थिति<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">All</option>
                                <%-- <option value="1">Pending at School</option>
                                 <option value="2">Pending at Sankul</option>--%>
                                <option value="3">Pending at BEO</option>
                                <option value="4">Pending at DEO</option>
                                <option value="5">Pending at JD</option>
                                <option value="6">Pending at HO</option>
                                <%-- <option value="7"> Reject From School</option>
                                 <option value="8"> Reject From Sankul</option>
                                 <option value="9"> Reject From BEO</option>
                                 <option value="10">Reject From DEO</option>
                                 <option value="11">Reject From JD</option>
                                 <option value="12">Reject From HO</option>--%>
                            </select>
                        </div>
                    </div>


                </div>
                <hr />
                <div class="col-md-12">
                    <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                    <a href="ProjectDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                </div>

            </fieldset>
            <fieldset>
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <tr>
                                    <th>Sr.No./<br />
                                        क्रमांक</th>
                                    <th>Action Status/<br>
                                        गतिविधि स्थिति</th>
                                    <th>Edit/<br>
                                        एडिट करें</th>
                                    <th>View Document/<br>
                                        दस्तावेज़ देखें</th>
                                    <th>View Details/<br>
                                        विवरण देखें</th>
                                    <th>Project Status/<br>
                                        परियोजना की स्थिति</th>
                                    <th>Project Code/<br>
                                        परियोजना क्रमांक</th>
                                    <th>Project Date/<br>
                                        परियोजना दिनांक</th>
                                    <th>Village /<br />
                                        गाँव का नाम</th>
                                    <th>Work Category  /<br />
                                        कार्य की श्रेणी</th>
                                    <th>Work Subcategory  /<br />
                                        कार्य का नाम</th>
                                    <th>Work Place  /<br />
                                        कार्य स्थल</th>
                                    <th>Estimated Budget Cost(Approx. In Rs)  /<br />
                                        अनुमानित बजट</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" class="form-check-input">
                                    </td>
                                    <td><a class="btn btn-info btn-rounded" href="#"><i class="fa fa-pen"></i></a></td>

                                    <td><a class="btn btn-info btn-rounded" href="#"><i class="fa fa-file"></i></a></td>
                                    <td>
                                        <a class="btn btn-info btn-rounded" href="#"><i class="fa fa-eye"></i></a>
                                    </td>
                                    <td>Approval awaited at DEO</td>
                                    <td>P00019</td>
                                    <td>11/06/2024</td>
                                    <td>Usridhana[उसरीढाना]</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Work For Bhopal Office</td>
                                    <td>10000.00</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Project Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>

                                <%--<div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button" value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                                    </div>
                                </div>--%>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button"
                                            onclick="window.location.href = 'InstallmentCreation.aspx';"
                                            value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                                        <%--<a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>--%>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var checkbox = document.getElementById('vehicle1');
            var modalElement = document.getElementById('viewModel');
            var modal = new bootstrap.Modal(modalElement, {});

            checkbox.addEventListener('change', function () {
                if (this.checked) {
                    modal.show();
                } else {
                    modal.hide();
                }
            });

            modalElement.addEventListener('hidden.bs.modal', function () {
                checkbox.checked = false;
            });
        });
</script>


</asp:Content>

