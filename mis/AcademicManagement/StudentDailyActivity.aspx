<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentDailyActivity.aspx.cs" Inherits="mis_AcademicManagement_StudentDailyActivity" %>

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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management
                            </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Daily Activity</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="marqueecontainer border-0">
                <div class="headertext btn btn-primary rounded-pill d-flex align-items-center mt-1 fw-semibold">
                    विद्यार्थी प्रबंधन
                </div>
                <div>
                    <marquee style="width: 100%; margin-top: 0.5rem;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-dark fw-semibold ">
                        <b>NOTE</b> - टीचर द्वारा लिया गया एक्शन   Form को Save करें|
                    </marquee>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Daily Activity  /
विद्यार्थी की दैनिक गतिविधि</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select To Date /<br />
                                समाप्ति तिथि का चयन करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control datepicker" id="toDate" placeholder="dd/mm/yyyy" />
                            <span id="toDateError" class="error text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class /<br />
                                कक्षा का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group ">
                            <button class="btn w-lg btn-success btn-border" onclick="showDiv() return true" style="margin-top: 3.2rem">Search</button>

                        </div>
                    </div>
                </div>
                <div id="activitydiv">
                    <fieldset>
                        <legend>Student Activity /
                        छात्र गतिविधि</legend>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="">
                                        <tr>
                                            <th>Sr.No./<br />
                                                सरल क्रमांक</th>
                                            <th>Subject /<br />
                                                विषय</th>
                                            <th>Home Wrok /<br />
                                                दैनिक शैक्षणिक कार्य</th>
                                            <th>Activity /<br />
                                                गतिविधि</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>1</td>
                                            <td>Mathematics<br />
                                                गणित</td>
                                            <td>
                                                <input type="text" id="txtHomework" class="form-control" placeholder="Enter Homework">
                                            </td>

                                            <td>

                                                <input type="text" class="form-control" placeholder="Solve puzzle problem">
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Science<br />
                                                विज्ञान</td>
                                            <td>
                                                <input type="text" id="Science" class="form-control" placeholder="Enter Homework">
                                            </td>

                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>English<br />
                                                अंग्रेज़ी</td>
                                            <td>
                                                <input type="text" id="English" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>

                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>History<br />
                                                इतिहास</td>
                                            <td>
                                                <input type="text" id="History" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Geography<br />
                                                भूगोल</td>
                                            <td>
                                                <input type="text" id="Geography" class="form-control" placeholder="Enter Homework">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" placeholder="Enter Activity">
                                            </td>
                                        </tr>


                                    </tbody>
                                </table>
                                <hr />
                                  <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                                        <a href="TeacherManagement.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </fieldset>
        </div>

    </div>




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function showDiv() {
            document.getElementById('activitydiv').style.display = 'block';
        }
</script>
</asp:Content>


