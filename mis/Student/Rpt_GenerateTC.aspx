<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_GenerateTC.aspx.cs" Inherits="mis_Student_Rpt_GenerateTC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .btn-check:focus + .btn-outline-info, .btn-outline-info:focus {
            box-shadow: none !important;
        }

        .btn-outline-success:focus, .btn-outline-success.focus {
            box-shadow: none;
        }

        .first {
            font: bold;
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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                    <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                        <span>ACR</span></a>
                </li>--%>
                        <li class="breadcrumb-item"><span>Generate TC </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">स्थानांतरण प्रमाणपत्र जनरेट </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();"
                                onmouseout="this.start();"
                                direction="left"
                                behavior="scroll"
                                scrollamount="7"
                                class="Marqueetext">
                                Generate TC  /स्थानांतरण प्रमाणपत्र जनरेट
                            </marquee>
                        </div>
                    </div>
                </div>
                <%--<div class="col-xxl-2 col-md-12 text-end"> <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a> </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Transfers /छात्र स्थानांतरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Academic Year 
                                        <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option selected value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>
                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                            <label>
                                Enter Samagra ID
                                        <br />
                                समग्र आईडी दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Samagra ID" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="$('#fsStudentDtails').css('display','block')">Show Student Details</button>
                            <a href="Rpt_GenerateTC.aspx" class="btn btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fsStudentDtails" style="display: none">
                <legend>Student Details/ छात्र का विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                                   <br />
                                            सरल क्र.</th>
                                        <th>Name
                                   <br />
                                            नाम </th>
                                        <th>Father Name
                                   <br />
                                            पिता का नाम</th>

                                        <th>Mother Name
                                   <br />
                                            माता का नाम</th>
                                        <th>Date Of Birth
                                   <br />
                                            जन्मतिथि
                                        </th>
                                        <th>Gender
                                   <br />
                                            लिंग</th>
                                        <th>Category
                                   <br />
                                            श्रेणी</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Manoj Ahirwav</td>
                                        <td>Ram Babu</td>
                                        <td>Seema Bai</td>
                                        <td>01/01/2024</td>
                                        <td>Male
                                        </td>
                                        <td>OBC
                                        </td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">

                    <hr />
                    <div class="form-group">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Generate TC</button>
                    </div>

                </div>
            </fieldset>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

