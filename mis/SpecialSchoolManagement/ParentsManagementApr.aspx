<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ParentsManagementApr.aspx.cs" Inherits="mis_HRMS_PerentsManagementApr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <%-- <style>
        .table-container {
            max-width: 100%;
            overflow-x: auto;
        }

        .pagination-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px 0;
        }

            .pagination-container .page-size-selector {
                display: inline-flex;
                align-items: center;
            }

            .pagination-container .pagination-controls {
                display: flex;
                align-items: center;
            }

                .pagination-container .pagination-controls button {
                    margin: 0 5px;
                }
    </style>--%>
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Administrative Module
                            </span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#EmpAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Academic Management
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Diary</span></li>
                    </ol>
                </div>
            </div>


        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-md-6">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill d-flex align-items-center mt-1 fw-semibold">
                            विद्यार्थी डायरी
                        </div>
                        <div>
                            <marquee style="width: 100%; margin-top: 0.5rem;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-dark fw-semibold ">
                                <b>NOTE</b> - अभिभावक द्वारा लिया गया एक्शन Applicable/Not Applicable में  Save करें|
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Student Diary/विद्यार्थी डायरी </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="txtSamagra">
                                Select Samagra Id /<br />
                                विद्यार्थी की समग्र आईडी दर्ज करें     
              <span style="color: red">*</span>
                            </label>
                            <input type="text" id="txtSamagra" class="form-control" placeholder="Enter Samagra Id" maxlength="9" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="page-size" style="margin-right: 10px; white-space: nowrap;">
                                Date /<br />
                                दिनांक
       
                            </label>
                            <input type="date" id="currentDate" name="name" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" style="margin-top: 3.3rem !important">
                            <button id="btnSearch" type="button" onclick="showdiv()" class="fw-bold btn w-lg btn-outline-info btn-border">Search</button>
                        </div>
                    </div>

                </div>

                <div class="table-container" id="tbldiv" style="display: none;">
                    <div class="table-responsive">
                        <table class="table table-bordered">

                            <tbody>


                                <tr valign="middle" style="background-color: #527b883b; white-space: nowrap;" class="text-black  fw-semi-bold ">
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem">S.No.<br />
                                        क्र.सं</th>
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem">Student Name /
                           <br />
                                        छात्र का नाम 
                                    </th>
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem">Class /
                           <br />
                                        कक्षा</th>
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem">Class Teacher /
                           <br />
                                        कक्षा शिक्षक</th>
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem">Absent/Present
                                        <br />
                                        उपस्थित/अनुपस्थित</th>
                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem;">Student Homework /<br />
                                        छात्र गृह कार्य 
                                    </th>

                                    <th style="background-color: #527b883b; padding: 1.2rem 1rem;">Complaint /
                           <br />
                                        शिकायत 
                           <br />
                                    </th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Arjun</td>
                                    <td>2nd Class</td>
                                    <td>Rajesh Agarbal</td>
                                    <td>Present</td>

                                    <td>
                                        <input id="txtHomeWork" value="View" type="button" class="btn btn-outline-info mx-2" onclick="openBootstrapModal()" />
                                    </td>
                                    <td>
                                        <input id="txtHomeWork2" value="View" type="button" class="btn btn-outline-info mx-2" onclick="openBootstrapModal2()" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>


            </fieldset>
            <div class="modal" tabindex="-1" role="dialog" id="OTPModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">OTP Details / OTP विवरण</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>OTP Details / OTP विवरण</legend>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>
                                                OTP (One Time Password)<br />
                                                OTP (वन टाइम पासवर्ड)</label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn w-lg btn-outline-success Alert-VerifySchool" data-bs-dismiss="modal">Submit</button>
                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>




            <div class="modal" id="exampleModal2" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Student Homework And Activity / छात्र गृहकार्य और गतिविधि</legend>
                                <table class="table table-bordered " style="border: 0.2rem solid #527b883b;">
                                    <tbody>
                                        <tr valign="middle" style="background-color: whitesmoke; white-space: nowrap;" class="text-black fw-semibold">
                                            <td style="background-color: #527b883b;">Sr.No./<br />
                                                क्र.सं.  </td>
                                            <td style="background-color: #527b883b;">Subject /<br />
                                                विषय</td>
                                            <td style="background-color: #527b883b;">Homework /<br />
                                                गृहकार्य</td>
                                            <td style="background-color: #527b883b;">Activity /<br />
                                                गतिविधि</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Mathematics<br />
                                                गणित</td>
                                            <td>Page 23, Exercise 5<br />
                                                पृष्ठ 23, व्यायाम 5</td>
                                            <td>Solve puzzle problem</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Science<br />
                                                विज्ञान</td>
                                            <td>Read Chapter 4<br />
                                                अध्याय 4 पढ़ें</td>
                                            <td>Look at photosynthesis</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>English<br />
                                                अंग्रेज़ी</td>
                                            <td>Write a summary of the lesson<br />
                                                पाठ का सारांश लिखें</td>
                                            <td>Practive speaking</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>History<br />
                                                इतिहास</td>
                                            <td>Prepare notes on the French Revolution<br />
                                                फ्रांसीसी क्रांति पर नोट्स तैयार करें</td>
                                            <td>Explore monoments</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Geography<br />
                                                भूगोल</td>
                                            <td>Map work: Identify the countries<br />
                                                नक्शा कार्य: देशों की पहचान करें</td>
                                            <td>Explore other cities</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </fieldset>
                            <hr />

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal" id="exampleModal3" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">


                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Student Complaint / छात्र की शिकायत </legend>
                                <p><strong>Student Name:</strong> Rahul Sharma</p>
                                <p><strong>Class:</strong> 2nd Class</p>
                                <p><strong>Date:</strong> September 24, 2024</p>
                                <p><strong>Complaint:</strong></p>
                                <p>
                                    Rahul has been consistently disrupting the class by talking during lessons and not completing his assignments on time.
                    Despite multiple warnings, his behavior has not improved. The teacher has requested a meeting with the parents to discuss this issue and find a solution to help Rahul focus better in class.
               
                                </p>
                            </fieldset>
                        </div>

                    </div>
                </div>
            </div>


        </div>


    </div>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">



    <script>
        function showdiv() {
            document.getElementById("tbldiv").style.display = "block";
        }

        function setTodayDate() {
            // Get today's date in YYYY-MM-DD format
            const today = new Date().toISOString().split('T')[0];

            // Set the value of the date input to today's date
            document.getElementById('currentDate').value = today;
        }

        // Automatically set today's date when the page loads
        window.onload = function () {
            setTodayDate();
        };
</script>
    <script>
        function openBootstrapModal() {
            $('#exampleModal2').modal('show');
        }
        function openBootstrapModal2() {
            $('#exampleModal3').modal('show');
        }
        //document.getElementById("txtHomeWork").addEventListener("click", function () {
        //    var myModal = new bootstrap.Modal(document.getElementById('exampleModal2'));
        //    myModal.show();
        //});

        //document.getElementById("txtHomeWork2").addEventListener("click", function () {
        //    var myModal = new bootstrap.Modal(document.getElementById('exampleModal3'));
        //    myModal.show();
        //});
    </script>
</asp:Content>

