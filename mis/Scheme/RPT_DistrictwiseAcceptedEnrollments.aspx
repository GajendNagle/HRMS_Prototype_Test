<%@ Page Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RPT_DistrictwiseAcceptedEnrollments.aspx.cs" Inherits="mis_Scheme_DistrictwiseAcceptedEnrollments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .table-custom th {
            text-align: right !important;
            width: 20% !important;
        }

        .table-custom td {
            width: 30% !important;
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">Brief report of District wise acceptance of students receiving scholarship</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Brief report of District wise acceptance of students receiving scholarship <br /> छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संक्षिप्त रिपोर्ट 
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">

            <fieldset>
                <legend>Brief report of District wise acceptance of students receiving<br />छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संक्षिप्त रिपोर्ट </legend>
                <div class="row">

                    <div class="col-lg-12">
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Academic Year<br />शैक्षणिक वर्ष<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <%-- <option value="--Select--">--Select--</option>--%>
                                        <option value="2021-22">2021-22</option>
                                        <option value="2024-25">2024-25</option>
                                        <option value="2023-24">2023-24</option>
                                        <option value="2022-23">2022-23</option>

                                        <option value="2020-21">2020-21</option>
                                        <option value="2019-20">2019-20</option>
                                        <option value="2018-19">2018-19</option>
                                        <option value="2017-18">2017-18</option>
                                        <option value="2016-17">2016-17</option>
                                        <option value="2015-16">2015-16</option>
                                        <option value="2014-15">2014-15</option>

                                    </select>
                                </div>
                            </div>


                            <div class="col-lg-12">

                                <div class="row justify-content-center">
                                    <div class="col-lg-3 text-center">
                                        <img src="../../img/captcha.png" width="150" />
                                    </div>
                                    <div class="col-lg-12"></div>
                                    <div class="col-lg-4 text-center">
                                        <label class="font-bold">Please enter the code shown above</label>
                                    </div>
                                    <div class="col-lg-12"></div>

                                    <div class="col-lg-2 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control text-center" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <hr />
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnShowSummary" CssClass="btn btn-success btn-border w-lg" Text="View Report" OnClick="btnShowSummary_Click" />
                                    <a href="RPT_DistrictwiseAcceptedEnrollments.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset runat="server" id="dv_StudentSummary">
                <legend>Brief report of District wise acceptance of students receiving<br />छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला बार स्वीकृति की संक्षिप्त रिपोर्ट</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Total Enrollment Reported [Admissions/Promotions to Higher Class]<br />रिपोर्ट किया गया कुल नामांकन [उच्च कक्षा में प्रवेश/पदोन्नति]</th>
                                    <th>Student whose Profile [Income,% of marks obtained in previousclass, occupation of parents] has been Updated/Reported<br />छात्र जिसका प्रोफ़ाइल [आय, पिछली कक्षा में प्राप्त अंकों का प्रतिशत, माता-पिता का व्यवसाय] अपडेट/रिपोर्ट किया गया है</th>
                                    <th>Student [Out of B], who are eligible and entiteled for one or more Scholarships<br />छात्र [बी में से], जो एक या अधिक छात्रवृत्ति के लिए पात्र और हकदार हैं</th>
                                    <th>Amount [ Scholarships/Financial assistance] entiteled to the eligible Students<br />पात्र छात्रों के लिए पात्र राशि [छात्रवृत्ति/वित्तीय सहायता]</th>
                                    <th>Student [Out of C], who has been sanctioned one or more Scholarship/Financial assistance<br />छात्र [सी में से], जिसे एक या अधिक छात्रवृत्ति/वित्तीय सहायता स्वीकृत की गई है</th>
                                    <th>Amount [ Scholarships/Financial assistance] sanctioned to students<br />छात्रों को स्वीकृत राशि [छात्रवृत्ति/वित्तीय सहायता]</th>

                                </tr>
                                <tr>
                                    <th>S.No.<br />सरल क्र.</th>
                                    <th>District<br />जिला</th>
                                    <th>(A)</th>
                                    <th>(B)</th>
                                    <th>(C)</th>
                                    <th>(D)</th>
                                    <th>(E)</th>
                                    <th>(F)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1 </td>
                                    <td>AGAR MALWA</td>
                                    <td>12976</td>
                                    <td>87654</td>
                                    <td>1253464</td>
                                    <td>3746375</td>
                                    <td>3576487</td>
                                    <td>3543656</td>
                                </tr>
                                <tr>
                                    <td>2 </td>
                                    <td>ALIRAJPUR</td>
                                    <td>12970</td>
                                    <td>87650</td>
                                    <td>1253460</td>
                                    <td>3746370</td>
                                    <td>3576480</td>
                                    <td>3543650</td>
                                </tr>
                                <tr>
                                    <td>3 </td>
                                    <td>ANUPPUR</td>
                                    <td>12971</td>
                                    <td>87651</td>
                                    <td>1253461</td>
                                    <td>3746371</td>
                                    <td>3576481</td>
                                    <td>3543651</td>
                                </tr>
                                <tr>
                                    <td>4 </td>
                                    <td>ASHOKNAGAR</td>
                                    <td>12972</td>
                                    <td>87652</td>
                                    <td>1253462</td>
                                    <td>3746372</td>
                                    <td>3576482</td>
                                    <td>3543652</td>

                                </tr>
                                <tbody>
                        </table>
                    </div>
                </div>
            </fieldset>







        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>



