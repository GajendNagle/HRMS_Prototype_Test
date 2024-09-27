<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherManagement.aspx.cs" Inherits="mis_HRMS_TeacherManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table-container {
            max-width: 100%;
            overflow-x: auto;
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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management
                            </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Teacher Management</span></li>
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
                            विद्यार्थी प्रबंधन
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                विद्यार्थियों की उपस्थिति की जानकारी 
				
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Student Daily Activity  /
           विद्यार्थी की दैनिक गतिविधि
        </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select To Date /<br />
                                समाप्ति तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" id="toDate" placeholder="dd/mm/yyyy" />
                            <span id="toDateError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class /<br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class" onchange="hideshow()">
                                <option value="0">-Select-</option>
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


                    <div class="col-md-3">
                        <div class="form-group" style="margin-top: 3.3rem !important">
                            <button id="btnSearch" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <div class="row form-group" id="activitydiv">
                <fieldset>
                    <legend>Student Activity /
                        छात्र गतिविधि</legend>
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
                                    <input type="text" id="searchInput" oninput="DivHide()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्रमांक</th>
                                            <%-- <th>Class No. /<br />
                                                    कक्षा क्र.</th>--%>

                                            <th>Subject /<br />
                                                विषय</th>
                                            <th>Home Wrok /<br />
                                                दैनिक शैक्षणिक कार्य</th>
                                            <th>Activity /<br />
                                                गतिविधि</th>


                                        </tr>
                                    </thead>
                                    <tbody id="tableBody">

                                        <tr data-class="1">
                                            <td>1</td>
                                            <td>Mathematics<br />
                                                गणित</td>
                                            <td>
                                                <input type="text" id="txtHomework" class="form-control" placeholder="Enter Homework">
                                            </td>

                                            <td>

                                                <input type="text" class="form-control" placeholder="Solve puzzle problem">
                                            </td>

                                        </tr>
                                        <tr data-class="1">
                                            <td>2</td>
                                            <td>Science<br />
                                                विज्ञान</td>
                                            <td>
                                                <input type="text" id="Science" class="form-control" placeholder="Enter Homework">
                                            </td>

                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>3</td>
                                            <td>English<br />
                                                अंग्रेज़ी</td>
                                            <td>
                                                <input type="text" id="English" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>

                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>4</td>
                                            <td>History<br />
                                                इतिहास</td>
                                            <td>
                                                <input type="text" id="History" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr data-class="1">
                                            <td>5</td>
                                            <td>Geography<br />
                                                भूगोल</td>
                                            <td>
                                                <input type="text" id="Geography" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>


                                    </tbody>
                                </table>
                                <hr />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="showDiv()">Save</button>
                                        <a href="TeacherManagement.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                    </div>
                                </div>


                            </div>
                        </div>
                </fieldset>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- Class wise Attendence Report --%>

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
                var financialYear = selectedYear + '-' + (nextYear % 100);
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') {
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });


  </script>


    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true,

            });
        });
    </script>

    <script>
        function showDiv() {
            document.getElementById('activitydiv').style.display = 'block';
        }
</script>
</asp:Content>

