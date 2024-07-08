<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GuestFacultyRegistrationDetailCard.aspx.cs" Inherits="mis_SankulVerification_GuestFacultyRegistrationDetailCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        fieldset {
            background-color: white;
        }

        /*.card-body {
            background-image: url('../../img/background.png');
            opacity: 0.5;*/ /* Adjust this value for desired transparency (0-1) */
        /*background-repeat:no-repeat;
            margin:100px,75px,100px,75px;
            padding:inherit;
        }*/
        /*Css Added By Sagar*/
        .page-break {
            page-break-after: always;
        }
        /*Css End By Sagar*/
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>GFMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#SankulVerification" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Sankul Verification</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Guest Faculty Registration Detail Card</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <fieldset>
                <div class="card card-border-primary">
                    <div class="card-header">
                        <div class="row text-center">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">

                                <h3><strong><b>स्कूल शिक्षा विभाग</b></strong></h3>
                                <h4><strong><b>मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>अतिथि शिक्षक प्रबंधन प्रणाली</b></strong></h4>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col-md-12">
                            <h4>अतिथि शिक्षक - सेवाएं देने हेतु पंजीयन हेतु आवेदक का विवरण</h4>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-12">
                            <h4>Details as Per Aadhaar:</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tr role="row" class="odd">
                                        <td><span>Name</span>
                                        </td>
                                        <td><span>Father's/Husband's Name</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Date of Birth</span>
                                        </td>
                                        <td><span>Gender</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Address</span>
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-12">
                            <h4>Details as Per Application:</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tr role="row" class="odd">
                                        <td><span>Name</span>
                                        </td>
                                        <td><span>Yash Vishwakarma</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Father's/Husband's Name</span>
                                        </td>
                                        <td><span>Vipul Vishwakarma</span>
                                        </td>
                                        <td><span>Mother's Name</span>
                                        </td>
                                        <td><span>Sita Vishwakarma</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Gender</span>
                                        </td>
                                        <td><span>Male</span>
                                        </td>
                                        <td><span>Date of Birth</span>
                                        </td>
                                        <td><span>10/07/1996</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Category</span>
                                        </td>
                                        <td><span>General</span>
                                        </td>
                                        <td><span>Martial Status</span>
                                        </td>
                                        <td><span>Unmarried</span>
                                        </td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Address</span>
                                        </td>
                                        <td><span>MR - 55, Indra colony patel chowk Bhopal</span>
                                        </td>
                                        <td><span>Pincode</span>
                                        </td>
                                        <td><span>464665</span>
                                        </td>

                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Mobile No.</span>
                                        </td>
                                        <td><span>8998899889</span>
                                        </td>
                                        <td><span>Email ID</span>
                                        </td>
                                        <td><span>yash"gmail.com</span>
                                        </td>

                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Govt. Teacher</span>
                                        </td>
                                        <td><span>No</span>
                                        </td>
                                        <td><span>School</span>
                                        </td>
                                        <td><span>0</span>
                                        </td>

                                    </tr>
                                    <tr role="row" class="odd">
                                        <td><span>Retirement Date</span>
                                        </td>
                                        <td><span>01/01/1900</span>
                                        </td>
                                        <td><span>School</span>
                                        </td>
                                        <td><span>0</span>
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-12">
                            <h4>Qualification Details:</h4>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">

                                <table class="table table-bordered" id="mainTable">
                                    <thead>
                                        <tr align="center" valign="middle">
                                            <th>Sr. No.
                                            </th>
                                            <th>Year</th>
                                            <th>Qualification
                                            </th>
                                            <th>Course
                                            </th>
                                            <th>Subject
                                            </th>
                                            <th>Board/University
                                            </th>
                                            <th>Roll Number
                                            </th>
                                            <th>Total Marks
                                            </th>
                                            <th>Obtained Marks
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="odd">
                                            <td align="center" valign="middle"><span>1</span>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>2010-11</a>
                                            </td>
                                            <td style="text-align: left;">
                                                <a>High School</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>All</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>All</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>MP Board</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>116528203</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>600.00</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>428.00</a>
                                            </td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td align="center" valign="middle"><span>2</span>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>2012-13</a>
                                            </td>
                                            <td style="text-align: left;">
                                                <a>HSS (11th/12th)</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>HSS PCM</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>PCM</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>MP Board</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>236319077</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>500.00</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>292.00</a>
                                            </td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td align="center" valign="middle"><span>3</span>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>2016-15</a>
                                            </td>
                                            <td style="text-align: left;">
                                                <a>Graduate</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>B.Sc</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>Computer Science</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>State Govt. University</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>14157421</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>3700.00</a>
                                            </td>
                                            <td align="center" valign="middle">
                                                <a>2362.00</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <%-- Added by sagar--%>
                        </div>
                    </div>
                    <div class="page-break mb-2"></div>
                    <div class="row">
                        <div class="col-12 mb-3">
                            <h4 class="text-center">Vocational Education Certificate Details:</h4>
                        </div>
                        <div class="col">
                            Verified By:<b> BADI- GOVT. BOYS H.S.S. BARELI</b>
                        </div>
                        <div class="col text-center">
                            Verified On:<b> 28/06/2024</b>
                        </div>
                        <div class="col text-end">
                            Verified IP:<b> 106.201.253.176</b>
                        </div>
                        <div class="col-12 my-3">
                            <p>मैं प्रमाणित करता/करती हूँ कि  उपरोक्त जानकारी मेरे ज्ञान व विश्वास से एवं दस्तावेजों के अनुसार सत्य है, किसी भी प्रकार की असत्य एवं त्रुटिपूर्ण जानकारी पाये जाने पर मेरा पंजीयन आवेदन रद्द कर दिया जायेगा |</p>
                        </div>

                    </div>
                    <div class="row mb-0">
                        <div class="col-md-12 ">
                            <div class="d-flex align-items-end justify-content-between">
                                <div style="width: 140px; height: auto; text-align: center;">

                                    <img src="/img/qr-code-logo-27ADB92152-seeklogo.com.png" class="img-fluid border border-2 p-2" />
                                    <a href="https://dpimp.in/" target="_blank"><b>dpimp.in</b></a>
                                </div>
                                <div>
                                    Current Date:<b><script>document.write(new Date().toLocaleString())</script></b>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 ">
                             <div class="row my-2">
                                 <div class="col">Print by:<b>12312321</b></div>
                                 <div class="col text-center">Print on:<b>30/06/2024</b></div>
                                 <div class="col text-end"> Print IP:<b> 106.201.253.176</b></div>
                             <//div>

                        </div>

                    </div>
                </div>
                <%-- End by sagar--%>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

