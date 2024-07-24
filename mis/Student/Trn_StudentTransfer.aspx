<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_StudentTransfer.aspx.cs" Inherits="mis_Student_Trn_StudentTransfer" %>

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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                    <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                        <span>ACR</span></a>
                </li>--%>
                        <li class="breadcrumb-item"><span>Student Promotion & TC</span></li>
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
                        <div class="headertext btn btn-primary rounded-pill">छात्र पदोन्नति एवं स्थानांतरण</div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();"
                                onmouseout="this.start();"
                                direction="left"
                                behavior="scroll"
                                scrollamount="7"
                                class="Marqueetext">
                                Student Promotion & TC /छात्र पदोन्नति एवं स्थानांतरण
                            </marquee>
                        </div>
                    </div>
                </div>
                <%--<div class="col-xxl-2 col-md-12 text-end"> <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a> </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Promotion & TC /छात्र पदोन्नति एवं स्थानांतरण</legend>
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
                                Student  Class
                                        <br />
                               छात्र की कक्षा
                            </label>
                            <select class="form-select select2">
                                <option value="0">--Select--</option>
                                <option value="1">1st</option>
                                <option value="2">2nd</option>
                                <option value="3">3rd</option>
                                <option value="4">4th</option>
                                <option value="5">5th</option>
                                <option value="6">6th</option>
                                <option value="7">7th</option>
                                <option value="8">8th</option>
                                <option value="9">9th</option>
                                <option value="10">10th</option>
                                <option value="11">11th</option>
                                <option value="12">12th</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="$('#fsStudentDtails').css('display','block')">Search</button>
                            <a href="Trn_StudentTransfer.aspx" class="btn btn-outline-danger w-lg">Clear</a>
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
                                        <th>Action
                                            <br />गतिविधि
                                             <br />
                                            <input type="checkbox" name="Check" id="CheckAll" />
                                            
                                           </th>
                                        <th>Student Id
                                            <br />
                                            छात्र आई डी </th>
                                        <th>Student Name
                                            <br />
                                            छात्र का नाम</th>
                                        <th>Father Name
                                            <br />
                                            पिता का नाम</th>
                                        <th>Date of Birth
                                            <br />
                                            जन्म की तारीख</th>
                                        <th style="width:0px"> Percentage %
                                            <br />
                                            प्रतिशत % 

                                        </th>
                                        <th>Result Status
                                            <br />
                                            परिणाम स्थिति</th>
                                        <th>School
                                            <br />
                                            स्कूल</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>

                                            1</td>
                                        <td>

                                            <input type="checkbox" name="Check" value="1" />
                                            </td>
                                        <td>2430440585</td>
                                        <td>Manoj Ahirwav</td>
                                        <td>Maakhan Ahirwar</td>
                                        <td>26/05/2001</td>
                                        <td>
                                            <input type="text" name="percent"  placeholder="Enter Percentage"  class="form-control " />
                                        </td>
                                        <td>
                                            <input type="radio" name="ManojPF" value="Pass" id="ManojPass" checked="checked" />
                                            <label for="ManojPass">Pass</label><br />
                                            <input type="radio" name="ManojPF" value="Pass" id="ManojFail" />
                                            <label for="ManojFail">Fail</label>
                                        </td>
                                        <td>
                                            <input type="radio" name="ManojSc" value="Pass" id="ManojSame" checked="checked" />
                                            <label for="ManojSame">Same</label><br />
                                            <input type="radio" name="ManojSc" value="Pass" id="ManojOther" />
                                            <label for="ManojOther">Other</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            2</td>
                                        <td>

                                            <input type="checkbox" name="Check" value="2" />
                                            </td>
                                        <td>2430440554</td>
                                        <td>Santosh Mishra</td>
                                        <td>Vishnu Mishra</td>
                                        <td>21/04/2001</td>
                                        <td>
                                            <input type="text" name="percent" placeholder="Enter Percentage" class="form-control" />
                                        </td>
                                        <td>
                                            <input type="radio" name="SantoshPF" value="Pass" id="SantoshPass" checked="checked" />
                                            <label for="SantoshPass">Pass</label><br />
                                            <input type="radio" name="SantoshPF" value="Pass" id="SantoshFail" />
                                            <label for="SantoshFail">Fail</label>
                                        </td>
                                        <td>
                                            <input type="radio" name="SantoshSc" value="Pass" id="SantoshSame" checked="checked" />
                                            <label for="SantoshSame">Same</label><br />
                                            <input type="radio" name="SantoshSc" value="Pass" id="SantoshOther" />
                                            <label for="SantoshOther">Other</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            3</td>
                                        <td>

                                            <input type="checkbox" name="Check" value="3" />
                                            </td>
                                        <td>2430440748</td>
                                        <td>Vishal Varma</td>
                                        <td>Dheeraj Varma</td>
                                        <td>02/06/2002</td>
                                        <td>
                                            <input type="text" name="percent" placeholder="Enter Percentage" class="form-control" />
                                        </td>
                                        <td>
                                            <input type="radio" name="VishalPF" value="Pass" id="VishalPass" checked="checked" />
                                            <label for="VishalPass">Pass</label><br />
                                            <input type="radio" name="VishalPF" value="Pass" id="VishalFail" />
                                            <label for="VishalFail">Fail</label>
                                        </td>
                                        <td>
                                            <input type="radio" name="VishalSc" value="Pass" id="VishalSame" checked="checked" />
                                            <label for="VishalSame">Same</label><br />
                                            <input type="radio" name="VishalSc" value="Pass" id="VishalOther" />
                                            <label for="VishalOther">Other</label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="col-md-12 text-center">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg" >Save</button>
                            <a href="Trn_StudentTransfer.aspx" class="btn btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById('CheckAll').addEventListener('change', function () {
            let checkboxes = document.getElementsByName('Check');
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = this.checked;
                }, this);
            });
    </script>
</asp:Content>

