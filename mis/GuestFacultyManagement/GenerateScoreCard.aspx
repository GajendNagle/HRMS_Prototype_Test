<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GenerateScoreCard.aspx.cs" Inherits="mis_GuestFacultyManagement_GenerateScoreCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        hr {
            opacity: 1;
        }

        .edge {
            border: 3px solid black;
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Generate Score Card</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Generate Score Card /
                     स्कोर कार्ड जनरेट करें </h4>
                </div>
            </div>
        </div>
        <div class="m-3 edge p-4" id="PrintDiv">
            <div class="row text-center">
                <div class="col-sm-2 text-center">
                    <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none;" class="responsive" />
                </div>
                <div class="col-sm-8">
                    <h2><strong><b>स्कूल शिक्षा विभाग</b></strong></h2>
                    <h3><strong><b>मध्य प्रदेश शासन</b></strong></h3>
                    <h5><strong><b>(अतिथि शिक्षक प्रबंधन प्रणाली) सत्र - 2023-24 - V2</b></strong></h5>
                </div>
                <hr />
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <p>Name :</p>
                </div>
                <div class="col-sm-3">
                    <h6>Vikash Uppadhyay [Male]</h6>
                </div>
                <div class="col-sm-3">
                    <p>Date Of Birth :</p>
                </div>
                <div class="col-sm-3">
                    <h6>07/11/1993</h6>
                </div>
                <div class="col-sm-3">
                    <p>Father/Husband/Guardian Name :</p>
                </div>
                <div class="col-sm-3">
                    <h6>Naresh Kumar</h6>
                </div>
                <div class="col-sm-3">
                    <p>Mother Name :</p>
                </div>
                <div class="col-sm-3">
                    <h6>Leela Devi</h6>
                </div>
                <div class="col-sm-3">
                    <p>Address :</p>
                </div>
                <div class="col-md-9">
                    <h6>Vill Jaswada Teh M.Barodiya Dis Shajapur , District : SHAJAPUR , Pin Code : 465226</h6>
                </div>
                <div class="col-sm-3">
                    <p>Mobile No. :</p>
                </div>
                <div class="col-sm-3">
                    <h6>6261968047</h6>
                </div>
                <div class="col-sm-3">
                    <p>Email Id :</p>
                </div>
                <div class="col-sm-3">
                    <h6>vikashupadhyay793@gmail.com</h6>
                </div>
                <div class="col-sm-3">
                    <p>Retired Govt. Teacher :</p>
                </div>
                <div class="col-sm-3">
                    <h6>No</h6>
                </div>
                <div class="col-sm-3">
                    <p>School :</p>
                </div>
                <div class="col-sm-3">
                    <h6>0</h6>
                </div>
                <div class="col-sm-3">
                    <p>Retirement Date :</p>
                </div>
                <div class="col-sm-3">
                    <h6></h6>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <h5>Education & Professional Qualification as Registered by the Applicant</h5>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="nowrap">
                                <tr>
                                    <th>S No.</th>
                                    <th>Year</th>
                                    <th>Qualification</th>
                                    <th>Subject</th>
                                    <th>Board / University</th>
                                    <th>Roll Number</th>
                                    <th>Total Marks</th>
                                    <th>Obtained Marks</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>2008-09</td>
                                <td>HIGH SCHOOL</td>
                                <td>All</td>
                                <td>MP Board</td>
                                <td>196116338</td>
                                <td>600.00</td>
                                <td>423.00</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>2010-11</td>
                                <td>HSS(11th / 12th)</td>
                                <td>PCM</td>
                                <td>MP Board</td>
                                <td>214517879</td>
                                <td>500.00</td>
                                <td>381.00</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>2017-18</td>
                                <td>B. Ed</td>
                                <td>B. Ed</td>
                                <td>State Govt. University</td>
                                <td>16158982</td>
                                <td>1900.00</td>
                                <td>1431.00</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>2013-14</td>
                                <td>GRADUATE</td>
                                <td>गणित</td>
                                <td>State Govt. University</td>
                                <td>11144559</td>
                                <td>3650.00</td>
                                <td>2370.00</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>2015-16</td>
                                <td>POST GRADUATE</td>
                                <td>Computer Science</td>
                                <td>State Govt. University</td>
                                <td>14153511</td>
                                <td>1200.00</td>
                                <td>834.00</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>2020-21</td>
                                <td>POST GRADUATE</td>
                                <td>गणित</td>
                                <td>UGC Approved Private University</td>
                                <td>8111174</td>
                                <td>1100.00</td>
                                <td>772.00</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <h5>Score Card For Various Panels Generated Using The Qualification And Other Details As registered By The Applicant</h5>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="nowrap">
                                <tr>
                                    <th>S No.</th>
                                    <th>Panel</th>
                                    <th>Basic Qualification</th>
                                    <th>Subject</th>
                                    <th>Basic Qualification Score</th>
                                    <th>Professional Qualification Score<br />
                                        (Out Of 100)</th>
                                    <th>Retired Govt Teacher</th>
                                    <th>Year 2018-19 Exp. Score<br />
                                        (Out of 25)</th>
                                    <th>Total Score
                                        <br />
                                        (Out of 325)</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>SSS-1 Maths</td>
                                <td>PG</td>
                                <td>गणित</td>
                                <td>70.2</td>
                                <td>100.0</td>
                                <td>0.0</td>
                                <td>0</td>
                                <td>170.2</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>SSS-2 IT</td>
                                <td>PG</td>
                                <td>Computer Science</td>
                                <td>69.5</td>
                                <td>100.0</td>
                                <td>0.0</td>
                                <td>0</td>
                                <td>169.5</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>SSS-2 Maths</td>
                                <td>GRADUATION</td>
                                <td>गणित</td>
                                <td>64.9</td>
                                <td>100.0</td>
                                <td>0.0</td>
                                <td>0</td>
                                <td>164.9</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>SSS-3</td>
                                <td>HSS(11th / 12th)</td>
                                <td>PCM</td>
                                <td>76.2</td>
                                <td>0.0</td>
                                <td>0.0</td>
                                <td>0</td>
                                <td>76.2</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>SSS-3</td>
                                <td>HSS(11th / 12th)</td>
                                <td>PCM</td>
                                <td>76.2</td>
                                <td>100.0</td>
                                <td>0.0</td>
                                <td>0</td>
                                <td>176.2</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12 text-center mt-3">
                    <h5>The above details have been verified  by :<span style="font-weight: 900"> PRINCIPAL H.S.S. M.BARODIYA KUMHARIYA</span></h5>
                </div>
            </div>
        </div>
        <div class="col-md-12 m-4 text-center">
            <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="printModalContent('PrintDiv')">Print</button>
            <%--<a type="button" class="btn btn-outline-danger  btn-border w-lg" href="GenerateScoreCard.aspx">Clear</a>--%>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId).cloneNode(true);
            document.body.innerHTML = modalContent.outerHTML
            window.print();
            window.location.href = "GenerateScoreCard.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                event.preventDefault();
                printModalContent('PrintDiv');
            }
        });
    </script>
</asp:Content>

