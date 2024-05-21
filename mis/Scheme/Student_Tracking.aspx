<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Student_Tracking.aspx.cs" Inherits="mis_Scheme_Student_Tracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        ody {
            padding: 0;
            margin: 0;
            font-family: 'Lato', sans-serif;
            color: #000;
        }

        .student-profile .card {
            border-radius: 10px;
        }

            .student-profile .card .card-header .profile_img {
                width: 150px;
                height: 150px;
                object-fit: cover;
                margin: 10px auto;
                border: 10px solid #ccc;
                border-radius: 50%;
            }

            .student-profile .card h3 {
                font-size: 20px;
                font-weight: 700;
            }

            .student-profile .card p {
                font-size: 16px;
                color: #000;
            }

        .student-profile .table th,
        .student-profile .table td {
            font-size: 14px;
            padding: 5px 10px;
            color: #000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Tracking</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Student Tracking</a></li>
                       <%-- <li class="breadcrumb-item active">Student Tracking</li>--%>
                          <li class="breadcrumb-item"><a href="Student_Tracking.aspx" title="click to go on">Student Tracking</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset runat="server" id="Student">
                    <legend >Student Tracking  </legend>
                    <div class="student-profile py-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">
                                        <div class="col-md-12">
                                            <div class="col-md-3">
                                                <label class="font-weight-bold">
                                                    समग्र आईडी
                                                    <span style="color: red">*</span></label>
                                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter samagr ID" />
                                            </div>

                                            <div class="row justify-content-center">
                                                <div class="col-md-3 form-group"> 
                                                    <asp:Button Text="Search"  runat="server" onclick="btnSerch_Click" id="btnSerch" class="Alert-Confirmation btn btn-success btn-rounded"></asp:Button>
                                                    <a href="Student_Tracking.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset runat="server" id="Studenttraking" visible="false">
                    <legend>Student Tracking</legend>
                    <div class="student-profile py-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-transparent text-center">

                                            <img class="profile_img" src="../dist/images/avatar-13.png" alt="">
                                        </div>
                                        <h4 style="font-weight: bold; text-align: center; color: maroon !important;" class="text-uppercase text-gray-silver">ANIKET AHIRWAR</h4>

                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="card shadow-sm">

                                        <div style="min-height: 12rem;" class="card-body">
                                            <div class="col-lg-12">
                                                <div class="card shadow-sm">
                                                    <div class="card-header bg-transparent border-0">
                                                        <h3 style="color: black;"><i class="far fa-clone pr-1"></i>General Information</h3>
                                                    </div>
                                                    <div style="min-height: 0rem;" class="card-body pt-0">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="30%">जन्म-दिनांक : </th>
                                                                <td width="2%">:</td>
                                                                <td>03/03/2007</td>
                                                                <th width="30%" class="text-gray-lighter">लिंग	</th>
                                                                <td width="2%">:</td>
                                                                <td>Boy</td>
                                                            </tr>  
                                                            <tr>
                                                                <th width="30%">पिता का नाम </th>
                                                                <td width="2%">:</td>
                                                                <td>Bhagvan Singh</td> 
                                                                <th width="30%">माता का नाम</th>
                                                                <td width="2%">:</td>
                                                                <td>Gulab Bai</td>
                                                            </tr>
                                                            <tr>
                                                                <th>पता</th>
                                                                <td>:</td>
                                                                <td colspan="4">ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                            </tr>
                                                        </table>
                                                    </div> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-transparent border-0">
                                        </div>

                                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Scholarship Details</h3>
                                        <hr>

                                        <%--     <div class="container">
                                            <h2>Example 3 </h2>
                                        </div>--%>
                                        <div id="exTab3" class="container">
                                            <ul class="nav nav-pills">
                                                <li class="active">
                                                    <button type="button" class="btn btn-primary" href="#1b" data-toggle="tab">अकादमिक ट्रैकिंग</button>
                                                   
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-success" href="#2b" data-toggle="tab">छात्रवृत्ति</button>
                                                 
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-danger" href="#3b" data-toggle="tab">साइकिल (9 th)</button>
                                              
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-warning" href="#4a" data-toggle="tab">साइकिल (6 th)</button>
                                                    
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-info" href="#5a" data-toggle="tab">CWSN ट्रैकिंग</button>
                                                  
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-dark" href="#6a" data-toggle="tab">गणवेश वितरण</button>
                                                    <%--<a href="#6a" data-toggle="tab">गणवेश वितरण</a> - |--%>
                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-success" href="#7a" data-toggle="tab">सैनिटरी पैड वितरण</button>
                                                    <%--                                                    <a href="#7a" data-toggle="tab">सैनिटरी पैड वितरण </a>--%>
                                                </li>
                                            </ul>

                                            <div class="tab-content clearfix">
                                                <div class="tab-pane active" id="1b">
                                                    <div class="card-body pt-0">

                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>

                                                                    <th style="color: white" scope="col">#</th>
                                                                    <th style="color: white" scope="col">शैक्षणिक वर्ष</th>
                                                                    <th style="color: white" scope="col">जिला</th>
                                                                    <th style="color: white" scope="col">ब्लॉक</th>
                                                                    <th style="color: white" scope="col">शाला</th>
                                                                    <th style="color: white" scope="col">कक्षा</th>
                                                                    <th style="color: white" scope="col">%</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2023-24</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12) 23320129258</td>
                                                                    <td>10 th</td>
                                                                    <td>63.40</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>2022-23</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12) 23320129258</td>
                                                                    <td>9 th</td>
                                                                    <td>32.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>2021-22</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12) 23320129258</td>
                                                                    <td>9 th</td>
                                                                    <td>55.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>2020-21</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>GOVT MS VIRAH SHYAMKHEDI (Class 1 to 8) 23320127802</td>
                                                                    <td>8 th</td>
                                                                    <td>56.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>5</td>
                                                                    <td>2019-20</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>GOVT MS VIRAH SHYAMKHEDI (Class 1 to 8) 23320127802</td>
                                                                    <td>7 th</td>
                                                                    <td>50.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>6</td>
                                                                    <td>2018-19</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>GOVT MS VIRAH SHYAMKHEDI (Class 1 to 8) 23320127802</td>
                                                                    <td>6 th</td>
                                                                    <td>55.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>7</td>
                                                                    <td>2017-18</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>PS Virah Shayam Khedi 23999999999</td>
                                                                    <td>5 th</td>
                                                                    <td>55.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>8</td>
                                                                    <td>2016-17</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>PS Virah Shayam Khedi 23999999999</td>
                                                                    <td>4 th</td>
                                                                    <td>52.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>9</td>
                                                                    <td>2015-16</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>PS Virah Shayam Khedi 23999999999</td>
                                                                    <td>3 rd</td>
                                                                    <td>80.96</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>10</td>
                                                                    <td>2014-15</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>PS Virah Shayam Khedi 23999999999</td>
                                                                    <td>2 nd</td>
                                                                    <td>46.00</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>11</td>
                                                                    <td>2013-14</td>
                                                                    <td>BHOPAL</td>
                                                                    <td>BERASIA</td>
                                                                    <td>PS Virah Shayam Khedi 23999999999</td>
                                                                    <td>2 nd</td>
                                                                    <td>58.00</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="2b">
                                                    <div class="table-responsive">

                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <thead>
                                                                <tr>
                                                                    <th style="color: white" scope="col">#</th>
                                                                    <th style="color: white" scope="col">क्लास</th>
                                                                    <th style="color: white" scope="col">शैक्षणिक वर्ष</th>
                                                                    <th style="color: white" scope="col">विभाग</th>
                                                                    <th style="color: white" scope="col">योजना</th>
                                                                    <th style="color: white" scope="col">स्वीकृत दिनाँक</th>
                                                                    <th style="color: white" scope="col">राशि</th>
                                                                    <th style="color: white" scope="col">विवरण</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>9</td>
                                                                    <td>2021-22</td>
                                                                    <td>SC Welfare Department</td>
                                                                    <td>2.1.2 राज्य शासन अनुसूचित जाति छात्रव्रत्ति (9-10)</td>
                                                                    <td>14/02/2022</td>
                                                                    <td>600</td>
                                                                    <td>[****************3476 - SBIN0001499 - STATE BANK OF INDIA Berasia]</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>8</td>
                                                                    <td>2020-21</td>
                                                                    <td>SC Welfare Department</td>
                                                                    <td>2.1.1 राज्य शासन अनुसूचित जाति छात्रव्रत्ति (6-8)</td>
                                                                    <td>11/03/2021</td>
                                                                    <td>200</td>
                                                                    <td>[****************3476 - SBIN0001499 - STATE BANK OF INDIA Berasia]</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>7</td>
                                                                    <td>2019-20</td>
                                                                    <td>SC Welfare Department</td>
                                                                    <td>2.1.1 राज्य शासन अनुसूचित जाति छात्रव्रत्ति (6-8)</td>
                                                                    <td>03/03/2020</td>
                                                                    <td>200</td>
                                                                    <td>[****************3476 - SBIN0001499 - STATE BANK OF INDIA Berasia]</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>6</td>
                                                                    <td>2018-19</td>
                                                                    <td>SC Welfare Department</td>
                                                                    <td>2.1.1 राज्य शासन अनुसूचित जाति छात्रव्रत्ति (6-8)</td>
                                                                    <td>20/02/2019</td>
                                                                    <td>200</td>
                                                                    <td>[****************3476 - SBIN0001499 - STATE BANK OF INDIA Berasia]</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="3b">
                                                    <div class="table-responsive">

                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCycle9" style="border-collapse: collapse;">
                                                            <tr>
                                                                <td>
                                                                    <div class="alert alert-error">
                                                                        आवेदन / जानकारी प्राप्त नहीं हुई या उपलब्ध नहीं है!!
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="4b">
                                                    <div class="table-responsive">

                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <tr>
                                                                <td>
                                                                    <div class="alert alert-error">
                                                                        आवेदन / जानकारी प्राप्त नहीं हुई या उपलब्ध नहीं है!!
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="5b">
                                                    <div class="table-responsive">

                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <tr>
                                                                <td>
                                                                    <div class="alert alert-error">
                                                                        आवेदन / जानकारी प्राप्त नहीं हुई या उपलब्ध नहीं है!!
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="6b">
                                                    <div class="table-responsive">

                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <tr>
                                                                <td>
                                                                    <div class="alert alert-error">
                                                                        आवेदन / जानकारी प्राप्त नहीं हुई या उपलब्ध नहीं है!!
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="7b">
                                                    <div class="table-responsive"> 
                                                        <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <tr>
                                                                <td>
                                                                    <div class="alert alert-error">
                                                                        आवेदन / जानकारी प्राप्त नहीं हुई या उपलब्ध नहीं है!!
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </fieldset>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</asp:Content>

