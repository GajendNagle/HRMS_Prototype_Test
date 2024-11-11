<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalStudentActivity.aspx.cs" Inherits="mis_VocationalTrade_VocationalStudentActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Vocational Trade</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vocational Student Activity</span></li>
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
                            वोकेशनल छात्र गतिविधि
	
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                वोकेशनल छात्र गतिविधि की उपस्थिति की जानकारी

                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Vacational Student Activity & Visits /
  वोकेशनल छात्र गतिविधि एवं भ्रमण
                </legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Academic Year /<br />
                                शैक्षणिक वर्ष चुनें <span style="color: red">*</span></label>
                            <input type="text" class=" datepickerYear form-control datepickerYear bg-white" name="academic-year">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Class Name/<br />
                                कक्षा का नाम चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                             
                                <option value="9">Class 9th</option>
                                <option value="10">Class 10th</option>
                                <option value="11">Class 11th</option>
                                <option value="12">Class 12th</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Vocational Trade Name/
             <br />

                                वोकेशनल ट्रेड नाम का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="1">Agriculture</option>
                                <option value="2">BEAUTY AND WELLNESS</option>
                                <option value="3">Electronics and Hardware</option>
                                <option value="4">Health Care</option>
                                <option value="5">IT-ITES</option>
                                <option value="6">BFSI (Banking, Financial Services, and Insurance)</option>
                                <option value="7">Private Security</option>
                                <option value="8">Retail</option>
                                <option value="9">Tourism and Hospitality</option>
                                <option value="10">Physical Education And Sports</option>
                                <option value="11">Automotive</option>
                                <option value="12">Media and Entertainment</option>
                                <option value="13">Plumbing</option>
                                <option value="13">Apparel</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Visit Industrial Name/
            <br />
                                औद्योगिक नाम देखें<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" placeholder="Visit Industrial Name" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                No. of Male Student/
           
                                <br />
                                बालक छात्रों की संख्या<span style="color: red">*</span>
                            </label>
                            <input type="number" id="maleStudent" class="form-control" placeholder="No Of Male Student" oninput="updateTotal()" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                No. of Female Student/
           
                                <br />
                                बालिकाएँ छात्रो की संख्या<span style="color: red">*</span>
                            </label>
                            <input type="number" id="femaleStudent" class="form-control" placeholder="No Of Female Student" oninput="updateTotal()" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Total Student/
           
                                <br />
                                कुल छात्र<span style="color: red">*</span>
                            </label>
                            <input type="text" id="totalStudent" class="form-control" readonly disabled />
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" id="btnshow" class="  Alert-Confirmation btn  btn-outline-success btn-border w-lg">Save</button>
                            <a href="VocationalASTMappingAgency.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                        </div>
                    </div>
                </div>

            </fieldset>

        <%--    <fieldset id="schoolshow" style="display:none;">
                <legend>Vocational Vist Report/वोकेशनल विज़िट रिपोर्ट</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class= form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No./<br />
                                            सरल क्र.</th>

                                        <th>Visit Year/<br />
                                            विज़िट वर्ष</th>

                                        <th>Class/<br />
                                            कक्षा</th>
                                        <th>Vocational Trade Name/<br>
                                            वोकेशनल ट्रेड का नाम</th>

                                        <th>Industrial Name/<br />
                                            औद्योगिक नाम</th>

                                        <th>No. of Student/<br />

                                            छात्र की संख्या</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>2024-25</td>
                                    <td>Class 5th</td>
                                    <td>Agriculture</td>
                                    <td>GreenField Industries</td>
                                    <td>35</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2023-24</td>
                                    <td>Class 6th</td>
                                    <td>BEAUTY AND WELLNESS</td>
                                    <td>Radiant Bliss Industries</td>
                                    <td>54</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2022-23</td>
                                    <td>Class 7th</td>
                                    <td>Health Care</td>
                                    <td>HealthCrest Solutions</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>2021-22</td>
                                    <td>Class 12th</td>
                                    <td>Physical Education And Sports</td>
                                    <td>ActiveCore Solutions</td>
                                    <td>65</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>2020-21</td>
                                    <td>Class 11th</td>
                                    <td>Media and Entertainment</td>
                                    <td>BrightLine Media</td>
                                    <td>45</td>
                                </tr>


                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>--%>



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });
    </script>



    <script>
        function updateTotal() {
            // Get the values from the male and female input fields
            const maleCount = parseInt(document.getElementById('maleStudent').value) || 0;
            const femaleCount = parseInt(document.getElementById('femaleStudent').value) || 0;

            // Calculate the total
            const total = maleCount + femaleCount;

            // Display the total in the Total Student field
            document.getElementById('totalStudent').value = total;
        }
</script>

    <script>
        $(document).ready(function () {
            $('#btnshow').click(function () {
                $('#schoolshow').toggle();
            });
        });

    </script>
</asp:Content>

