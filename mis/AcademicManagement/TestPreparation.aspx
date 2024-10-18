<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TestPreparation.aspx.cs" Inherits="mis_AcademicManagement_TestPreparation" %>

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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Career Guidance & Test Preparation</li>

                        <li class="breadcrumb-item">Test Preparation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            Test Preparation

                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                परीक्षण की तैयारी
	
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Test Preparation Master /
 परीक्षण की तैयारी मास्टर
                </legend>
                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select  Date /
                   <br />
                                तारिक का चयन करें<span style="color: red">*</span>
                            </label>
                            <input id="in_date" type="date" class="form-control" />
                            <span id="ddl_classError1" class="error text-danger"></span>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Class /
                                <br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class">
                                <option value="0">Select</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>
                            <span id="ddl_classError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Medium /<br />
                                माध्यम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Hindi</option>
                                <option>English</option>
                                <option>Urdu</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Subject Name /<br />
                                विषय का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>All</option>
                                <option>Hindi</option>
                                <option>English</option>
                                <option>Mathematics</option>
                                <option>Science</option>
                                <option>Social Science</option>
                                <option>Sanskrit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Upload  Document /<br />
                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4 align-items-end d-flex align-items-end ">
                        <div class="form-group">
                            <a class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <%--  <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Paper Name<br />
                                परीक्षा पत्र का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter paper Name" />
                        </div>
                    </div>--%>
                </div>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('tbl_class').style.display ='block'">Save</button>
                        <a href="BookUpload.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="tbl_class" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="mt-5">
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="">
                                    <tr>
                                        <th>Sr.No. /<br />
                                            सरल क्र.</th>

                                        <th>Date. /<br />
                                            तारीख</th>
                                        <th>Class Name /
                                <br />
                                            कक्षा का नाम</th>
                                        <th>Medium /<br />
                                            माध्यम</th>
                                        <th>Subject Name /<br />
                                            विषय का नाम</th>
                                     
                                        <th>View Test Paper /
                                            <br />
                                           टेस्ट पेपर देखें
                                        </th>
                                        <th>Action /
                                <br />
                                            कार्यवाही
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>4/5/2024</td>
                                        <td>3rd</td>
                                        <td>Hindi</td>
                                        <td>Science</td>
                                     
                                        <td><a class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></a></td>
                                        <td><a class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>5/5/2024</td>
                                        <td>4th</td>
                                        <td>English</td>
                                        <td>Mathematics</td>
                                     
                                        <td><a class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></a></td>
                                        <td><a class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr />

                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../img/CLASS%205%20MATHS%20PT-2.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
       
    </script>
</asp:Content>

