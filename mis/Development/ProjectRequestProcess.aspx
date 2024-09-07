<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectRequestProcess.aspx.cs" Inherits="mis_Development_ProjectRequestProcess" %>

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
                        <%--   <li class="breadcrumb-item">
                        <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                    </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Request Process</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Project Request Process / परियोजना अनुरोध प्रक्रिया
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Project Request Process / परियोजना अनुरोध प्रक्रिया</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project No
 <br />
                                परियोजना नंबर<span style="color: red">*</span></label>
                            <input type="text" class="form-control" value="POR2024CV001" readonly="readonly" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Project Year
                                <br />
                                परियोजना वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>2024</option>
                                <option>2023</option>
                                <option>2022</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Place Name
                                <br />
                                स्थान का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Place Name" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Address
            <br />
                                पता दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Address" />
                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Pincode
            <br />
                                पिनकोड दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Pincode" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Category
                                <br />
                                कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>स्कूल मरम्मत/निर्माण</option>
                                <option>पेयजल व्यवस्था</option>
                                <option>स्कूल मार्ग निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
             <br />
                                कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>CC सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Cost amount(in rupees)
                            <br />
                                लागत राशि रुपये में दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Cost amount(in rupees)" />
                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Area Details
        <br />
                                क्षेत्र विवरण दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Area Details" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Work Description
                                <br />
                                कार्य विवरण दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Work Description" />
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>

                <legend>Technical Approval Details</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Order No
         <br />
                                ऑर्डर संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Order No" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order Date
                                <br />
                                आर्डर की तारीख<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Order Date" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select MileStone Type
         <br />
                                माइल स्टोन प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select id="ddlMilestoneType" class="form-control select2" onchange="showHideRemarkView()">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Technical </option>
                                <option value="2">Financial</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
                                <br />
                                कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>CC सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row form-group" style="display: none" id="table1">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
          <br />
                                            क्रमांक</th>
                                        <th>Document Name<br />
                                            दस्तावेज का नाम</th>
                                        <th>Document Upload<br />
                                            दस्तावेज अपलोड</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Upload Techincal Document
                                           <br />
                                            तकनीकी दस्तावेज़ अपलोड करें</td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Upload Civil Document
                                           <br />
                                            सिविल दस्तावेज अपलोड करें</td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg">Save</button>
                    <a href="ProjectRequestProcess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlMilestoneType = document.getElementById('ddlMilestoneType');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlMilestoneType.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";

            }
            else if (ddlMilestoneType.value == "2") {
                table1.style.display = "block";

            }
            else {
                table1.style.display = "none";
            }
        }
    </script>
</asp:Content>

