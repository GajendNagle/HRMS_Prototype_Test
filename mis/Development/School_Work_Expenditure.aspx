<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="School_Work_Expenditure.aspx.cs" Inherits="mis_Development_School_Work_Expenditure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .form-group {
            margin-bottom: 1em;
        }

        #hide {
            display: none;
        }
    </style>
    <script>
        function validateDec(input, event) {
            // Add your validation logic here
            return true;
        }

        function validateDec3(input, event) {
            // Add your validation logic here
            return true;
        }

        function validate(input) {
            // Add your validation logic here
        }

        function Total1() {
            // Add your total calculation logic here
        }

        function btnSubmit_Click() {
            // Add your submit button click logic here
        }
    </script>
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Expences Entry</li>
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
                    <h4 class="card-title">Work Expences Entry / कार्य व्यय प्रविष्टि </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Work Expences Entry / कार्य व्यय प्रविष्टि </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial year
                                <br />
                                वितीय वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">2023 - 2024</option>
                                <option value="A">2024 - 2025</option>
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
                                Select Sanction No.
                                <br />
                                अनुमोदन संख्या का चयन करें
                                <span style="color: red">*</span></label>
                            <select id="school-subcategory" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2145">2145</option>
                                <option value="3151">3151</option>
                                <option value="3254">3254</option>
                            </select>
                        </div>
                    </div>
                    <%--  <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Work Place
                                <br />
                                कार्य स्थल दर्ज करेंं<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Place" />
                        </div>
                    </div>--%>
                    <div class="col-md-12">
                        <div class="form-group">

                            <input type="button" value="SAVE" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                            <a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>

                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row justify-content-center">
                    <div class="col-md-12 mt-3">
                        <table class="table table-bordered table-responsive-lg">
                            <thead>
                                <th>S.no./<br />
                                    क्रमांक</th>
                                <th>Add Work / View<br />
                                    कार्य जोड़ें / देखें</th>
                                <th>Sanction Letter No /<br />
                                    स्वीकृति पत्र क्रमांक</th>
                                <th>Sanction Letter Date /<br />
                                    स्वीकृति पत्र दिनांक </th>
                                <th>Work Category /<br />
                                    कार्य का प्रकार</th>
                                <th>Work Description /<br />
                                    कार्य विवरण</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <%--<td><a class="btn btn-info btn-rounded" data-toggle="modal" data-target="#exampleModal" id="action" href="#"><i class="fa fa-plus">Add</i></a></td>--%>

                                    <td>
                                        <input type="submit" id="vehicle1" name="vehicle1" value="Add" class="btn btn-info btn-rounded" /></td>
                                    <td>826923</td>
                                    <td>26/03/2024</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>

                                </tr>
                                <%--  <tr>
                                    <td>2</td>
                                    <td>
                                        <input type="submit" id="vehicle2" name="vehicle2" value="Add" class="btn btn-info btn-rounded" /></td>
                                    <td>826923</td>
                                    <td>26/03/2024</td>
                                    <td>स्कूल मरम्मत/निर्माण</td>
                                    <td>इमारत मरम्मत</td>

                                </tr>--%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Letter Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <!-- Modal Body -->
                        <fieldset>
                            <legend>Details</legend>
                            <div id="ctl00_ContentBody_divGridPopUp" class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_gridPopUp" style="border-collapse: collapse;">
                                            <tr>
                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">S.No.</td>
                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">Installment</td>
                                                <td colspan="2" style="font-weight: bold; background-color: #eaeaea; text-align: center;">Sanctioned</td>
                                                <td colspan="2" style="font-weight: bold; background-color: #eaeaea; text-align: center;">Achievement</td>
                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">Work Category</td>
                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">Work name</td>
                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">Description</td>

                                                <td style="font-weight: bold; background-color: #eaeaea; text-align: center;">Action</td>
                                            </tr>
                                            <tr>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">Physical</th>
                                                <th scope="col">Financial</th>
                                                <th scope="col">Physical</th>
                                                <th scope="col">Financial</th>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">&nbsp;</th>

                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <span>1</span>
                                                </td>
                                                <td>
                                                    <span>प्रथम किस्त</span>
                                                </td>
                                                <td align="center" rowspan="2">
                                                    <span>100.00 हैक्टेयर</span>
                                                </td>
                                                <td align="right">
                                                    <span>50000.00</span>
                                                </td>

                                                <td align="center">
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='Please Enter Financial !'></i></span>
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='Please enter numeric or decimal value Ex - (00 or 0.00) !'></i></span>
                                                    <input name="achievementFinancial1" type="text" value="50000.00" maxlength="15" class="form-control" onkeypress="return validateDec3(this, event);" oninput="validate(this)" onkeyup="Total1();" autocomplete="off" />
                                                </td>
                                                <td align="center">
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='रोपित पोधे दर्ज करे !'></i></span>
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='Please enter numeric values only !'></i></span>
                                                    <input name="plantedSaplings1" type="text" value="स्कूल मरम्मत/निर्माण" maxlength="10" class="form-control" onkeypress="return validateDec3(this, event);" autocomplete="off" />
                                                </td>
                                                <td align="center">
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='जीवित पोधे दर्ज करे !'></i></span>
                                                    <span class="fa fa-pull-right" style="color: Red; display: none;"><i class='fa fa-exclamation-circle' title='Please enter numeric values only !'></i></span>
                                                    <input name="livePlants1" type="text" value="कक्षा निमार्ण" maxlength="10" class="form-control" onkeypress="return validateDec3(this, event);" autocomplete="off" />
                                                </td>
                                                <td align="center">
                                                    <textarea name="remark1" class="form-control" rows="2" cols="20" autocomplete="off">स्कूल के लिए 3 कक्षा का निर्माण</textarea>
                                                </td>
                                                <td></td>

                                                <td align="center">
                                                    <a id="btnEdit1" class="btn btn-sm btn-primary" href="javascript:__doPostBack('btnEdit1','')">Save</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
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

        document.getElementById('vehicle1').addEventListener('click', function (event) {
            event.preventDefault(); // Prevent form submission
            $('#viewModel').modal('show'); // Show the modal
        });
</script>
</asp:Content>

