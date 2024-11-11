<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalStudentActivityReport.aspx.cs" Inherits="mis_VocationalTrade_VocationalStudentActivityReport" %>

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
            <div class="row  mb-3">
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
           <%-- </div>--%>

        <%--    <div class="card-body">--%>
                <fieldset style="margin-top:35px;" >
                    <legend>Vacational Student Activity & Visits Report /
  वोकेशनल छात्र गतिविधि एवं भ्रमण
                    </legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Academic Year /<br />
                                    शैक्षणिक वर्ष चुनें <span style="color: red">*</span></label>
                                <%--  <input type="text" class=" datepickerYear form-control datepickerYear bg-white" name="academic-year">--%>
                                <select class="form-control select2">
                                    <option value="0">--Select--</option>

                                    <option value="9">2022-23</option>
                                    <option value="9">2023-24</option>
                                    <option value="9">2024-25</option>


                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Class Name/<br />
                                    कक्षा का नाम चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="0">--ALL--</option>

                                    <option value="9">Class 9th</option>
                                    <option value="10">Class 10th</option>
                                    <option value="11">Class 11th</option>
                                    <option value="12">Class 12th</option>
                                </select>

                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnshow" class=" btn  btn-outline-success btn-border w-lg">Search</button>
                                <a href="VocationalStudentActivityReport.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                            </div>
                        </div>
                    </div>
                </fieldset>
           <%-- </div>--%>



            <fieldset id="schoolshow" style="display: none">
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
                            <input type="text" id="searchInput" class="form-control" placeholder="Search...">
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
                                    <td>Class 9th</td>
                                    <td>Agriculture</td>
                                    <td>GreenField Industries</td>
                                    <td>35</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2023-24</td>
                                    <td>Class 9th</td>
                                    <td>BEAUTY AND WELLNESS</td>
                                    <td>Radiant Bliss Industries</td>
                                    <td>54</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2022-23</td>
                                    <td>Class 10th</td>
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
            </fieldset>
        </div>

    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script type="text/javascript">
        //    function Show() {

        //        var schoolshow = document.getElementById('schoolshow');
        //        schoolshow.
        //}

        $(document).ready(function () {
            $('#btnshow').click(function () {
                $('#schoolshow').toggle();
            });
        });
    </script>
</asp:Content>

