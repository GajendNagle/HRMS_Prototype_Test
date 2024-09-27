<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherToClassUnMapping.aspx.cs" Inherits="mis_AcademicManagement_TeacherToClassUnMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .align-middle {
            vertical-align: middle !important;
        }

        #divsave {
            display: none;
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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Teacher To Class Unmapping</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">

        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Teacher To Class Unmapping</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card-body">
            <div runat="server" id="div">
                <fieldset>
                    <legend>Teacher To Class Unmapping/
                        <br />
                        शिक्षक से कक्षा अनमैपिंग </legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <label>
                                Enter Teacher Unique Id /<br />
                                शिक्षक की यूनिक आईडी दर्ज करें<span style="color: red;">*</span>
                            </label>
                            <input id="text1" autocomplete="off" placeholder="Enter Teacher Unique Id" class="form-control " type="text" />
                        </div>

                        <div class="col-md-2 mt-4 text-center ">
                            <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData1()">Search</button>
                        </div>
                    </div>


                    <hr />

                </fieldset>


            </div>



            <div id="divteachingclass6" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher Information</legend>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल क्रमांक</th>
                                                    <th scope="col">Teacher Name /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Designation Name /<br />
                                                        पद का नाम</th>
                                                    <th scope="col">Panel Name/<br />
                                                        पैनल का नाम</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" class="align-middle"><span>1</span></td>
                                                    <td align="center" class="align-middle"><span>राम प्रसाद सिंह</span></td>
                                                    <td align="center"><span>माध्यमिक शिक्षक</span></td>
                                                    <td align="center"><span>HSS-3</span></td>

                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass7" runat="server" class="d-none">
                <fieldset>
                    <legend>Unmap Teacher To Class / शिक्षक को कक्षा से मैप करें </legend>

                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center " runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल क्रमांक </th>
                                        <th>Class
                            <br />
                                            कक्षा
                                        </th>
                                        <th>Subjects
                            <br />
                                            विषय</th>
                                        <%-- <th>Map / Unmap<br />
                                            मैप / अनमैप</th>--%>
                                        <th>Unmap
            <br />
                                            अनमैप करें</th>

                                    </tr>

                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1
                                        </td>
                                        <td>7th class</td>
                                        <td>Science</td>
                                        <td>
                                            <span class="form-check d-inline-block">
                                                <input type="checkbox" class="form-check-input">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2
                                        </td>
                                        <td>8th class</td>
                                        <td>Mathes</td>
                                        <td>
                                            <span class="form-check d-inline-block">
                                                <input type="checkbox" class="form-check-input">
                                            </span>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td>3
                                        </td>
                                        <td>6th class</td>
                                        <td>Social Science</td>

                                        <td>
                                            <span class="form-check d-inline-block">
                                                <input type="checkbox" class="form-check-input">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4
                                        </td>
                                        <td>5th class</td>
                                        <td>Hindi</td>

                                        <td>
                                            <span class="form-check d-inline-block">
                                                <input type="checkbox" class="form-check-input">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5
                                        </td>
                                        <td>3rd class</td>
                                        <td>English</td>
                                        <td>
                                            <span class="form-check d-inline-block">
                                                <input type="checkbox" class="form-check-input">
                                            </span>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>


                        </div>
                    </div>
                    <div class="row justify-content-center">

                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                                <a href="TeacherToClassUnmapping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>


                    </div>

                </fieldset>

            </div>




        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function onClickShowData1() {


            var divteachingclass6 = document.getElementById('<%= divteachingclass6.ClientID %>');
            divteachingclass6.classList.add('d-none');


            var divteachingclass7 = document.getElementById('<%= divteachingclass7.ClientID %>');
            divteachingclass7.classList.add('d-none');

            var text1 = document.getElementById("text1");
            if (text1.value === "") {
                divteachingclass6.classList.add('d-none');
                divteachingclass7.classList.add('d-none');
            }
            else {
                divteachingclass6.classList.remove('d-none');
                divteachingclass7.classList.remove('d-none');
            }
        }






    </script>




</asp:Content>
