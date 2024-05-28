<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BlockWiseEnrollmentandSanctionofScholarships.aspx.cs" Inherits="mis_Scheme_BlockWiseEnrollmentandSanctionofScholarships" %>

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
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Block-Wise Enrollment and Sanction of Scholarships</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active"><a href="DistrictWiseEnrollmentandSanctionofScholarships.aspx" title="click to go on">District-Wise Enrollment and Sanction of Scholarships</a></li>
                    <li class="breadcrumb-item active">Block-Wise Enrollment and Sanction of Scholarships</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details</legend>
               
                <div class="row">
                   
                    <div class="col-md-12 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnRegisterStudents" Text="छात्रवृत्ति प्राप्त करने वाले छात्रों की जिला-वार स्वीकृती की संक्षिप्त रिपोर्ट देखें " CssClass="btn btn-success btn-rounded" />
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th>Total Enrollment Reported [Admissions/Promotions to Higher Class]</th>
                                                <th>Students whose Profile [Income,% of marks obtained in previous class, occupation of parents] has been Updated/Reported</th>
                                                <th>Students [Out of B], who are eligible end entitled for one or more Scholarships</th>
                                                <th>Amount [Scholarships/financial assitance] entitled to the eligible Students</th>
                                                <th>Students [Out of C] who have been sanctioned one or more Scholarship/financial assitance</th>
                                                <th>Amount [Scholarships/financial assitance] sanctioned to students</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        S. No.
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        Block
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (A)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (B)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (C)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (D)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (E)
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        (F)
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>1
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lnkDistrict" href="SchoolWiseEnrollmentandSanctionofScholarships.aspx" style="color: Blue;">PATI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblEnrollment">24376</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblApplication">24116</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblNoneZeroApplication">14792</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblAmount">10423920</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblSanction">14636</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl04_lblSanctionAmount">10384220</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert">
                                                <td>2
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl05$lnkDistrict','')" style="color: Blue;">NIWALI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblEnrollment">23056</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblApplication">22346</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblNoneZeroApplication">15352</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblAmount">12969100</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblSanction">14930</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl05_lblSanctionAmount">12815690</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl06$lnkDistrict','')" style="color: Blue;">THIKRI</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblEnrollment">29979</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblApplication">29344</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblNoneZeroApplication">18453</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblAmount">16877025</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblSanction">17444</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl06_lblSanctionAmount">16404005</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert">
                                                <td>4
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl07$lnkDistrict','')" style="color: Blue;">SENDHWA</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblEnrollment">61430</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblApplication">58636</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblNoneZeroApplication">36250</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblAmount">30934530</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblSanction">34787</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl07_lblSanctionAmount">30419650</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5
                                                </td>
                                                <td>
                                                    <div style="text-align: left">

                                                        <a id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lnkDistrict" href="javascript:__doPostBack('ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$gvStudentList$ctl08$lnkDistrict','')" style="color: Blue;">RAJ PUR</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblEnrollment">41163</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblApplication">40561</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblNoneZeroApplication">26827</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblAmount">22101600</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblSanction">26352</span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="text-align: center">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_gvStudentList_ctl08_lblSanctionAmount">21954940</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">Total</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">1,37,88,727</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">1,36,64,067</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">68,94,077</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">3,71,89,26,825</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">68,10,493</div>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: Center">3,683,468,350</div>
                                                </td>
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
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

</asp:Content>

