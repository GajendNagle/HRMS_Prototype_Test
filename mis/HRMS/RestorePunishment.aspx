<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RestorePunishment.aspx.cs" Inherits="mis_HRMS_RestorePunishment" %>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Punishment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>PUNSIHMENT SYSTEM </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>RESTORE PUNSIHMENT </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Restore Punishment Order  / 
                           निलंबित ऑर्डर बहाल करें</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Restore Punishment Order / निलंबित ऑर्डर बहाल करें</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Sr.No.
                                        <br />
                                                    सरल क्र.</th>
                                                <th>Employee Name And Code /<br />
                                                    कर्मचारी का नाम और कोड</th>
                                                <th>Order No. 
                                                    <br />
                                                    ऑर्डर संख्या </th>
                                                <th>Order Date
                                                    <br />
                                                    ऑर्डर दिनांक</th>
                                                <th>Designation<br />
                                                    पद का नाम</th>
                                                <th>OIS Name And Code 
                                        <br />
                                                    ओआईएस नाम एवं कोड</th>
                                                <th>Punishment Type 
                                        <br />
                                                    निलंबित का प्रकार </th>
                                                <th>Remark
                                                    <br />
                                                    टिप्पणी</th>
                                                <th>View Document
                                                    <br />
                                                    दस्तावेज़ देखें</th>
                                                <th>View Order
                                                    <br />
                                                    आदेश देखें</th>
                                                <th>Restore Punishment Order 
                                                    <br />
                                                    निलंबित ऑर्डर बहाल करें</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Arjun Talwar (AR4781) </td>
                                            <td>SUS242012 </td>
                                            <td>29/07/2024 </td>
                                            <td>Teacher SS1-Hindi</td>
                                            <td>HSS School Raisen - 021234S010</td>
                                            <td>पदोन्नति रोकना</td>
                                            <td>
                                                <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                            </td>
                                            <td id="Document1"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                            <td id="Document2"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                            <td>
                                                <input type="button" class="btn btn-success btn-sm" value="बहाल करें" data-toggle="modal" data-target="#exampleModal" /></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Keshav Maharaj (KR2385) </td>
                                            <td>SUS242013 </td>
                                               <td>29/07/2024 </td>
                                            <td>Teacher SS1-English</td>
                                            <td>HSS School Badi - 021234S01</td>
                                            <td>वेतन-वृद्धि रोकना</td>
                                            <td>
                                                <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                            </td>
                                            <td id="Document3"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                            <td id="Document4"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                            <td>
                                                <input type="button" class="btn btn-success btn-sm" value="बहाल करें" data-toggle="modal" data-target="#exampleModal" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div class="modal" id="WorkDescription">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                        <h4 class="modal-title text-white">Punishment Remark</h4>
                        <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal Body -->
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">


                                <div class="form-group">
                                    <%--  <h5>Work Description</h5>--%>
                                    <p class="border p-2 border-primary fs-5 rounded-4">
                                        आपको प्रमोशन रोकने के मामले में निलंबित किया जाता है। प्रमोशन रोकने के कारण आपकी सेवाएं निलंबित की जाती हैं।
                                    </p>
                                    <%--   <textarea class="form-control" rows="1" style="resize: vertical" placeholder="project approval & Installment Creation/ परियोजना अनुमोदन एवं किस्त निर्माण

"></textarea>--%>
                                </div>
                            </div>
                        </div>

                        <!-- Modal Footer -->
                        <%--    <div class="modal-footer justify-content-center">

                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                  <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>--%>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <%--                            <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />--%>
                        <h3 class="modal-title  fw-bold  ms-3" id="exampleModalLabel1">Restore Punishment Order  / निलंबित ऑर्डर बहाल करें</h3>
                        <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Employee Information / कर्मचारी की जानकारी
                            </legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Punishment Order No.
                                        <br />
                                            निलम्बन आदेश क्र. <span style="color: red"></span>
                                        </label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="SUS242012" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Order Date.
                                        <br />
                                            आदेश दिनांक <span style="color: red"></span>
                                        </label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="29/07/2024" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name
                                        <br />
                                            कर्मचारी का नाम<span style="color: red"></span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Arjun Talwar" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID 
                                    <br />
                                            यूनिक आई.डी<span style="color: red"></span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" readonly="" autocomplete="off" placeholder="AR4781" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation 
                                    <br />
                                            पदनाम <span style="color: red"></span>
                                        </label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Teacher SS1-Hindi" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Punishment Type
                                        <br />
                                            निलम्बन के प्रकार<span style="color: red"></span></label>
                                        <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" placeholder="वेतन रोकना" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            From Date
                                        <br />
                                            प्रारंभिक दिनांक  <span style="color: red"></span>
                                        </label>
                                        <input name="txtBlock" type="text" class="form-control" readonly="" autocomplete="off" placeholder="30/07/2024" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            To Date
                    <br />
                                            अंतिम तिथि<span style="color: red"></span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="15/10/2024" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Remark
                                        <br />
                                            टिप्पणी<span style="color: red"></span></label>
                                        <textarea class="form-control" readonly="" autocomplete="off" placeholder="आपको प्रमोशन रोकने के मामले में निलंबित किया जाता है। प्रमोशन रोकने के कारण आपकी सेवाएं निलंबित की जाती हैं।"></textarea>
                                    </div>
                                </div>


                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Restore Punishment Order /  निलंबित आदेश बहाल करें
                            </legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Restore Order No.
                                        <br />
                                            आदेश बहाल क्रमांक दर्ज करें<span style="color: red">*</span>
                                        </label>
                                        <input name="txtEmpName" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Order Date.
                                        <br />
                                            ऑर्डर दिनांक <span style="color: red">*</span>
                                        </label>
                                        <input name="txtBlock" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Document 
            <br />
                                            दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                        <input type="file" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Restore Punishment Remark
            <br />
                                            पुनर्स्थापित निलंबित टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <textarea type="text" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                                           <hr />
                                    <div class="col-md-12 ">
                                        <input type="button" value="Restore Punishment"
                                            class="Alert-Save1 btn btn-success btn-border" />
                                        <a href="RestorePunishment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                                    </div>
                        </fieldset>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script>

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save1').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Restore Punishment Order ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Punishment Order Restore Successfully!',
                                timer: 2000
                            }).then(() => {
                                window.location.href = "/mis/HRMS/RestorePunishment.aspx";
                            });

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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

