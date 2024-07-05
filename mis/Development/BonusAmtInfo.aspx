<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .form-group {
            margin-bottom: 1em;
        }

        #hide {
            display: none;
        }

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development Data</span></a>
                        </li>
                       <%-- <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction Data</span></a>
                        </li>--%>
                        <li class="breadcrumb-item">Budget Receive Info</li>
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
                    <h4 class="card-title">Budget Receive Info / बजट जानकारी प्राप्त करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Bonus Amount Info / बजट जानकारी जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial year
                                <br />
                                वित्तीय वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">2025</option>
                                <option value="A">2024</option>
                                <option value="A">2023</option>
                                <option value="A">2022</option>
                                <option value="A">2021</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="school-subcategory-container">

                        <div class="form-group">
                            <label>
                                Select Financial sources
                                <br />
                                वित्तीय स्रोत का चयन करें<span style="color: red">*</span></label>
                            <select id="school-subcategory" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">CM Rise Building Construction</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Type
              <br />
                                कार्यालय के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">HO</option>
                                <option value="A">JD</option>
                                <option value="A">DEO</option>
                                <option value="A">BEO</option>
                                <option value="A">Sankul</option>
                                <option value="A">School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name
                                <br />
                                कार्यालय के नाम चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">महर्षि विद्यालय</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter amount received for acceptance
                                <br />
                                <%--This will be visible when select Other work form last  dropdown--%>
                                स्वीकृति के लिए प्राप्त राशि दर्ज करेंं<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Other Work Details" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select amount receipt date 
                                <br />
                                राशि प्राप्ति दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" placeholder="Select amount receipt date" />
                        </div>
                    </div>
                    <%--  <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Estimated Budget Cost
                                <br />
                                अनुमानित बजट दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Estimated Budget Cost " />
                        </div>
                    </div>--%>
                    <%--   <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Work Description
                                <br />
                                कार्य का विवरण दर्ज करेंं<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Description" />
                        </div>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">

                            <input type="button" value="SAVE" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                            <a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>

                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
                <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
                <legend>Details</legend>
                <div class="row">

                    <div class="col-md-12 mt-3">
                        <table class="table table-bordered table-responsive-lg">
                            <thead>
                                <th>Sr.No./
                                    <br />
                                    क्रमांक</th>
                                <th>Financial year/<br />
                                    वित्तीय वर्ष</th>
                                <th>Financial sources/<br />
                                    वित्तीय स्रोत</th>
                                <th>amount received for acceptance/<br />
                                    स्वीकृति के लिए प्राप्त राशि	</th>
                                <th>amount receipt date/
                                    <br />
                                    प्राप्त राशि दिनांक</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2024</td>
                                    <td>CM Rise Building Construction</td>
                                    <td>78000000.00	</td>
                                    <td>13/02/2024</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

