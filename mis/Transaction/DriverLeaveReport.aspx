<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DriverLeaveReport.aspx.cs" Inherits="mis_Transaction_DriverLeaveReport" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Driver / Attender Registration</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Driver Registration</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="bx bx-plus label-icon align-middle  me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">


            <fieldset id="FsDetails" class="d-none">
                <legend>Report / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row" id="tableData">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            क्रमांक</th>
                                        <th>Driver Attender 
                     <br />
                                            ड्राइवर अटेंडर</th>
                                        <th>Vehicle No.<br />
                                            गाड़ी का नंबर</th>
                                        <th>Leave From Date 

                     <br />
                                            छुट्टी तिथि  से       </th>
                                        <th>Leave To Date
                                            <br />
                                            छुट्टी  तिथि तक</th>
                                        <th>Document
                     <br />
                                            दस्तावेज़</th>



                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Attender</td>
                                    <td>MP04AB1196</td>
                                    <td>25/07/2024</td>
                                    <td>28/07/2024</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Driver</td>
                                    <td>MP04CD5154</td>
                                    <td>28/07/2024</td>
                                    <td>05/08/2024</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        //document.getElementsByClassName("Driver").innerText = "block";
        function showTable() {
            document.getElementById("tableData").style.display = "block";
            document.getElementById("tablefd").style.display = "block";
            document.getElementById("searchbtn").style.display = "block";
        }

        function textchange() {
            if ($("#Reg").val() == "1") {
                $(".Driver").each(function () { this.innerText = 'Driver ' });
                $(".Reg").each(function () { this.innerText = 'चालक' });
            }
            else {
                $(".Driver").each(function () { this.innerText = 'Attender' });
                $(".Reg").each(function () { this.innerText = 'सहायक' });
            }

        }

        var a = 1
        function funBack() {
            document.querySelector('#FsDetails').classList.toggle('d-none');
            document.querySelector('#RegDetail').classList.toggle('d-none');
            document.querySelector('#dtls').classList.toggle('d-none');
            document.querySelector('#InfoRpt').classList.toggle('d-none');
            if (a == 1) {

                document.querySelector('#btnBack').innerHTML = '<i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back';
                a = 2;
            }
            else {
                document.querySelector('#btnBack').innerHTML = "<i class='bx bx-plus label-icon align-middle  me-2'></i>View Details";
                a = 1;
            }

        }
    </script>
    <script>

        function toggleSection1() {
            var dropdown1 = document.getElementById("dropdown1");
            var section1 = document.getElementById("section1");
            var section2 = document.getElementById("section2");
            var section3 = document.getElementById("section3");
            var section4 = document.getElementById("section4");
            if (dropdown1.value === "1") {
                section1.style.display = "block";
                section2.style.display = "block";
                section3.style.display = "block";
                section4.style.display = "block";
            } else if (dropdown1.value === "2") {
                section1.style.display = "none";
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "none";
                section4.style.display = "block";

            } else {
                section1.style.display = "none";
                section2.style.display = "none";
                section3.style.display = "none";
                section4.style.display = "none";
            }
        }

    </script>
</asp:Content>
