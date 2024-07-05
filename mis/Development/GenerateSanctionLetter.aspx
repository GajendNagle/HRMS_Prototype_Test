<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

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
                      <li class="breadcrumb-item">Generate Sanction Process</li>
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
                    <h4 class="card-title">Generate Sanction Process (Letter) / स्वीकृति आदेश प्रक्रिया</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Generate Sanction Process (Letter) / स्वीकृति आदेश प्रक्रिया</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year/<br />
                                वितीय वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">2024-25</option>
                                <option value="0">2023-24</option>
                                <option value="0">2022-23</option>
                                <option value="0">2021-22</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Type /<br />
                                कार्यालय के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--  <option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">School</option>
                                <option value="3">Sankul</option>
                                <option value="3">BEO</option>
                                <option value="3">DEO</option>
                                <option value="3">JD</option>
                                <option value="3">HO</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name /<br />
                                कार्यालय के नाम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">Maharishi Mahavidyalaya</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Budget Head  /<br />
                                बजट मद<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="3">CM Rise Building Construction</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Order Number/<br />
                                स्वीकृति आदेश क्रमांक दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" id="Fdate" name="birthday" class="form-control">
                        </div>
                    </div>

                </div>
                <hr />
                <div class="col-md-12">
                    <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" class="Alert-Confirmation btn btn-success btn-border" />
                    <a href="Mst_OfficeRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Reset</a>
                </div>

            </fieldset>
            <fieldset>
                <legend>Letter Details / पत्र विवरण</legend>
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

                                    <th>Add Detail/<br>
                                        विवरण जोड़े</th>
                                    <th>Financial Year/<br>
                                        वितीय वर्ष</th>
                                    <th>Office Type/<br>
                                        कार्यालय का प्रकार</th>
                                    <th>Office Name /<br>
                                        कार्यालय का नाम</th>
                                    <th>Budget Head/<br>
                                        बजट मद</th>
                                    <th>Order Number/<br>
                                        स्वीकृति आदेश क्रमांक</th>
                                    <%--     <th>Village /<br />
                                        गाँव का नाम</th>
                                    <th>Work Category  /<br />
                                        कार्य की श्रेणी</th>
                                    <th>Work Subcategory  /<br />
                                        कार्य का नाम</th>
                                    <th>Work Place  /<br />
                                        कार्य स्थल</th>
                                    <th>Estimated Budget Cost(Approx. In Rs)  /<br />
                                        अनुमानित बजट</th>--%>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <input type="submit" id="vehicle1" name="vehicle1" value="Add" class="btn btn-info btn-rounded">
                                    </td>
                                    <td>2023-24	</td>

                                    <td>School</td>
                                    <td>Maharishi Mahavidyalaya
                                    </td>
                                    <td>Approval awaited at DEO</td>
                                    <td>P00019</td>

                                    <%--  <td>Usridhana[उसरीढाना]</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Work For Bhopal Office</td>--%>
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
                            <h4 class="modal-title" id="exampleModalLabel1">Work Wise Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Area
                  <br />
                                            स्थान दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Description" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Work Category
             <br />
                                            कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>
                                        <select id="work-category" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="A">स्कूल मरम्मत/निर्माण</option>
                                            <option value="B">पेयजल व्यवस्था</option>
                                            <option value="C">स्कूल मार्ग निर्माण</option>
                                            <option value="D">अन्य कार्य</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3" id="school-subcategory-container">
                                    <div class="form-group">
                                        <label>
                                            Select Work Subcategory
             <br />
                                            कार्य के नाम का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="A">कक्षा निमार्ण</option>
                                            <option value="A">इमारत मरम्मत</option>
                                            <option value="A">स्कूल नया निमार्ण</option>
                                            <option value="B">हेंडपंप खनन</option>
                                            <option value="B">बोरबेल खनन</option>
                                            <option value="B">पानी की टंकी निर्माण</option>
                                            <option value="B">पेयजल हेतु पाइपलाइन निर्माण</option>
                                            <option value="C">WBM / कच्ची सड़क निमार्ण</option>
                                            <option value="C">CC Road निर्माण</option>
                                            <option value="C">मार्ग मरम्मत</option>
                                            <option value="C">मुरम रोड निर्माण</option>
                                            <option value="C">डामर रोड निर्माण</option>
                                            <option value="D">नाली निर्माण</option>
                                            <option value="D">पेपर ब्लाक निर्माण</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Work Description
              <br />
                                            कार्य का विवरण दर्ज करेंं<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Description" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Work Quantity /<br />
                                            कार्य की मात्रा दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Quantity" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Amount of Work /<br />
                                            कार्य की राशि दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Amount of Work" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Work Unit /<br />
                                            कार्य की इकाई का चयन करें<span style="color: red">*</span></label>
                                        <select id="school-subcategory" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="A">किलोमीटर</option>
                                            <option value="A">नंबर</option>
                                            <option value="A">मीटर</option>
                                            <option value="A">हेक्टेयर</option>
                                            <option value="A">वर्गमीटर</option>
                                            <option value="A">प्रतिशत</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Accepted Amount /<br />
                                            स्वीकृत राशि (₹) दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Accepted Amount" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select % of installment /<br />
                                            किश्त का % चयन करें <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="A">20%</option>
                                            <option value="A">50%</option>
                                            <option value="A">80%</option>
                                            <option value="A">100%</option>


                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Installment Amount /<br />
                                            किस्त की राशि<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" disabled placeholder="" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            रिमार्क दर्ज करें<span style="color: red">*</span></label>
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
                                            <%--  onclick="window.location.href = 'InstallmentCreation.aspx';"--%>
                                            value="Save & Next" class="btn btn-outline-success btn-border w-lg" />
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
    <%-- <script>
        document.addEventListener('DOMContentLoaded', function () {
            var button = document.getElementById('vehicle1');
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
</script>--%>
    <script>

        document.getElementById('vehicle1').addEventListener('click', function (event) {
            event.preventDefault(); // Prevent form submission
            $('#viewModel').modal('show'); // Show the modal
        });
</script>


</asp:Content>

