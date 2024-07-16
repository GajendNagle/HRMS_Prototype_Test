<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ScoreCardGenrate.aspx.cs" Inherits="mis_GuestFacultyManagement_Trn_ScoreCardGenrate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .no-border th, .no-border td {
            border: 0px;
            background-color: transparent;
        }
        @media print{
            .card-body,.card,#printCard{
                padding:0;
                margin:0;
            }
            .card-border-primary{
                border:0
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Score Card Genrate</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary ">
        <div class="card-header  d-print-none">
            <div class="row">
                <div class="col-lg-9">
                    <h4 class="card-title">Guest Faculty Score Card / अतिथि शिक्षक मूल्यांकन पत्रक </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <div class="row"  >
                <div class="col-md-12" id="printCard">
                    <fieldset class="px-0 ">
                        <div class="border-bottom border-dark  mt-0 ">
                            <div class="p-2">
                                <div class="row text-center align-items-center">
                                    <div class="col-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-8 text-center">

                                        <h3><strong><b>स्कूल शिक्षा विभाग</b></strong></h3>
                                        <h4><strong><b>मध्य प्रदेश शासन</b></strong></h4>
                                        <h6><strong><b>(अतिथि शिक्षक प्रबंधन प्रणाली) सत्र-2023-24-V2 </b></strong></h6>
                                    </div>
                                    <div class="col-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 mt-2">
                                <table class="table no-border">
                                    <tbody class="border-0">

                                        <tr>
                                            <th>Name  </th>
                                            <td>Yash Varma</td>
                                            <th>Date Of Birth</th>
                                            <td>17/07/1996</td>
                                        </tr>
                                        <tr>
                                            <th>Father / Husband / Guardian Name</th>
                                            <td>Mr. Papeendra  Varma</td>
                                            <th>Mother Name </th>
                                            <td>Mrs. Nimesh Varma</td>
                                        </tr>
                                        <tr>
                                            <th>Address</th>
                                            <td>Near New Girls H.S. School Bari 
                                                <br />
                                                Dist. Raisen M.P. District: RAISEN  </td>
                                            <th>Pin Code</th>
                                            <td>464665</td>
                                        </tr>
                                        <tr>
                                            <th>Mobile No</th>
                                            <td>8602367114</td>
                                            <th>Email ID</th>
                                            <td>yash10yns@gmail.com </td>
                                        </tr>
                                        <tr>
                                            <th>Retired Govt. Teacher</th>
                                            <td>No</td>
                                            <th>School</th>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <th>Retirement Date</th>
                                            <td colspan="3"></td>

                                        </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="p-2">


                            <div class="row mt-3">
                                <div class="col-md-12 text-center">
                                    <h5>Education & Professional Qualification as Registered by the Applicant </h5>
                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>

                                                <tr>
                                                    <th>S. No</th>
                                                    <th>Year</th>
                                                    <th>Qualification</th>
                                                    <th>Subject</th>
                                                    <th>Board University</th>
                                                    <th>Roll Number</th>
                                                    <th>Total Marks</th>
                                                    <th>Obtained Marks</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>2010-11</td>
                                                    <td>HIGH SCHOOL</td>
                                                    <td>All</td>
                                                    <td>MP Board</td>
                                                    <td>116528203</td>
                                                    <td>600.00</td>
                                                    <td>428.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>2012-13</td>
                                                    <td>HSS (11<sup>th</sup>/12<sup>th</sup>)</td>
                                                    <td>PCM</td>
                                                    <td>MP Board</td>
                                                    <td>236519077</td>
                                                    <td>500.00</td>
                                                    <td>292.00</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>2015-16</td>
                                                    <td>GRADUATE</td>
                                                    <td>Computer Science</td>
                                                    <td>State Govt. University</td>
                                                    <td>14157421</td>
                                                    <td>3700.00</td>
                                                    <td>2362.00</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 mb-3">
                                    <h5 class="text-center">Score Card for Various Panels generated using the Qualification and other details as registered by the applicant</h5>
                                </div>

                                  <div class="col-12 mb-3">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>

                                            <tr>
                                                <th>S. No</th>
                                                <th>Panel</th>
                                                <th>Basic Qual.</th>
                                                <th>Subject</th>
                                                <th>Basic Qual. Score</th>
                                                <th>Prof. Qual Score (Out of 100)</th>
                                                <th>Retd. Govt Teacher (Out of 100)</th>
                                                <th>Year 2018-19 Exp. score (out of 25)</th>
                                                <th>Total Score (Out of 325)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr>
                                                <td>1</td>
                                                <td>SSS-IT</td>
                                                <td>GRADUATE</td>
                                                <td>Subject</td>
                                                <td>63.8</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>63.8</td>
                                            </tr>
                                           <tr>
                                                <td>2</td>
                                                <td>SSS-3</td>
                                                <td>HSS (11th 12th)</td>
                                                <td>PCM</td>
                                                <td>58.4</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>58.4</td>
                                            </tr>
                                           <tr>
                                                <td>3</td>
                                                <td>SSS-3 Lab</td>
                                                <td>HSS (11th 12th)</td>
                                                <td>PCM</td>
                                                <td>58.4</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>0.0</td>
                                                <td>58.4</td>
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
                               
                                </div>
                                   <div class="col-12 mb-3 text-center">
                                       <h6>The above details have been verified By: BADI- Govt. Boys H.S.S. BARELI</h6>
                            </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="col-md-12 px-4 d-print-none text-center">
                    <button onclick="window.print()" type="button" class=" btn btn-outline-success btn-border w-lg">Print</button>
                    <a  role="button" class=" btn btn-outline-secondary btn-border w-lg" download="Score_Card"  href="/mis/Document/GFMSScoreCard.pdf">Download</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

