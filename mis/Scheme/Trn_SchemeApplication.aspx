<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_SchemeApplication.aspx.cs" Inherits="mis_Payroll_Page021223_Trn_SchemaManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <style>
        .topbar .top-navbar {
            min-height: 50px;
            padding: 27px;
        }

        .caret {
            display: none;
        }

        .btn .caret {
            display: none;
            /* margin-left: 0; */
        }

        .btn-default {
            background-color: #fff !important;
        }

            .btn-default:hover {
                background-color: #fff !important;
            }


        #show {
            display: none;
        }

        span.multiselect-native-select {
            position: relative
        }

            span.multiselect-native-select select {
                border: 0 !important;
                clip: rect(0 0 0 0) !important;
                height: 1px !important;
                margin: -1px -1px -1px -3px !important;
                overflow: hidden !important;
                padding: 0 !important;
                position: absolute !important;
                width: 1px !important;
                left: 50%;
                top: 30px
            }

        .multiselect-container {
            position: absolute;
            list-style-type: none;
            margin: 0;
            padding: 0
        }

            .multiselect-container .input-group {
                margin: 5px
            }

            .multiselect-container > li {
                padding: 0
            }

                .multiselect-container > li > a.multiselect-all label {
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group label {
                    margin: 0;
                    padding: 3px 20px 3px 20px;
                    height: 100%;
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group-clickable label {
                    cursor: pointer
                }

                .multiselect-container > li > a {
                    padding: 0
                }

                    .multiselect-container > li > a > label {
                        margin: 0;
                        height: 100%;
                        cursor: pointer;
                        font-weight: 400;
                        padding: 3px 0 3px 30px
                    }

                        .multiselect-container > li > a > label.radio, .multiselect-container > li > a > label.checkbox {
                            margin: 0
                        }

                        .multiselect-container > li > a > label > input[type=checkbox] {
                            margin-bottom: 5px
                        }

        .btn-group > .btn-group:nth-child(2) > .multiselect.btn {
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px
        }

        .form-inline .multiselect-container label.checkbox, .form-inline .multiselect-container label.radio {
            padding: 3px 20px 3px 40px
        }

        .form-inline .multiselect-container li a label.checkbox input[type=checkbox], .form-inline .multiselect-container li a label.radio input[type=radio] {
            margin-left: -20px;
            margin-right: 0
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Scheme Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Scheme Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Scheme Master</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Academic Year<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="General">2024</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Scheme Applied By Department<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="स्कूल शिक्षा विभाग">स्कूल शिक्षा विभाग</option>
                                <option value="अनुसूचित जाति कल्याण विभाग">अनुसूचित जाति कल्याण विभाग</option>
                                <option value="जन जातीय कार्य विभाग">जन जातीय कार्य विभाग</option>
                                <option value="म.प्र. पिछड़ा वर्ग  अल्पसंख्यक विभाग">म.प्र. पिछड़ा वर्ग  अल्पसंख्यक विभाग </option>
                                <option value="सामाजिक न्याय विभाग">सामाजिक न्याय विभाग</option>
                                <option value="विमुक्त घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजातीय कल्याण विभाग">विमुक्त घुमक्कड़ एवं अर्द्ध घुमक्कड़ जनजातीय कल्याण विभाग</option>
                                <option value="महिला एवं बाल विकास विभाग">महिला एवं बाल विकास विभाग</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Scheme Type (In English)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="In English" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>योजना का प्रकार (हिंदी में)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="हिंदी में" autocomplete="off" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Student Catagory<span style="color: red">*</span></label>
                            <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                <option value="General">General</option>
                                <option value="OBC">OBC</option>
                                <option value="SC">SC</option>
                                <option value="ST">ST</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Scheme Applied for<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>Boy</option>
                                <option>Girl</option>
                                <option>Both</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Day Scholar<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>


                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Day Scholar Amount for Boy<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Total Eligible Scheme Amount" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Day Scholar Amount for Girl<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Total Eligible Scheme Amount" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Hosteller Status<span style="color: red"></span></label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>छात्रावासी</option>
                                <option>गैर छात्रावासी</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Hosteller Amount for Boy</label>
                            <input type="text" class="form-control" placeholder="Enter Total Eligible Scheme Amount" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Hosteller Amount for Girl</label>
                            <input type="text" class="form-control" placeholder="Enter Total Eligible Scheme Amount" autocomplete="off" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Scheme Apply From<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Scheme Apply To<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Applicable Class<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">कक्षा 1 से 5 तक</option>
                                <option value="--Select--">कक्षा 6 से 8 तक</option>
                                <option value="--Select--">कक्षा 9 से 12 तक</option>
                                <option value="--Select--">कक्षा 11 से 12 तक</option>
                                <option value="--Select--">कक्षा 1 से 10 तक</option>
                                <option value="--Select--">कक्षा 3 से 10 तक</option>
                                <option value="--Select--">कक्षा 9 से 10 तक</option>
                                <option value="--Select--">कक्षा 1 से 8 तक</option>
                                <option value="--Select--">कक्षा 6 में प्रवेश पर</option>
                                <option value="--Select--">कक्षा 9 में प्रवेश पर</option>
                                <option value="--Select--">कक्षा 11 में प्रवेश पर</option>
                                <option value="--Select--">कक्षा 12 में प्रवेश पर</option>
                                <option value="--Select--">कक्षा 11</option>
                                <option value="--Select--">कक्षा 12</option>
                            </select>
                        </div>
                    </div>
                    <%--   <div class="col-md-3">
                            <div class="form-group">
                                <label>Applicable Class To<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">I Class</option>
                                    <option value="--Select--">II Class</option>
                                    <option value="--Select--">III Class</option>
                                    <option value="--Select--">IV Class</option>
                                    <option value="--Select--">V Class</option>
                                    <option value="--Select--">VI Class</option>
                                    <option value="--Select--">VII Class</option>
                                    <option value="--Select--">VIII Class</option>
                                    <option value="--Select--">IX Class</option>
                                    <option value="--Select--">X Class</option>
                                    <option value="--Select--">XI Class</option>
                                    <option value="--Select--">XII Class</option>
                                </select>
                            </div>
                        </div>--%>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>For Goverment School</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Yes</option>
                                <option value="--Select--">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>BPL</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Yes</option>
                                <option value="--Select--">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>PWD</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Yes</option>
                                <option value="--Select--">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>PWD %</label>
                            <input type="text" class="form-control" placeholder="Enter PWD %" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Siblings</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">1</option>
                                <option value="--Select--">2</option>
                                <option value="--Select--">3</option>
                                <option value="--Select--">4</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Is Education GAP</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Yes</option>
                                <option value="--Select--">No</option>
                            </select>
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Father Occupation</label>
                            <input type="text" class="form-control" placeholder="Enter Father Occupation" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Vimukt Status</label>
                            <input type="text" class="form-control" placeholder="Enter Vimukt Status" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Family Income(IN Rs.)</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Less Then 50000</option>
                                <option value="--Select--">50000 - 100000</option>
                                <option value="--Select--">100000 - 150000</option>
                                <option value="--Select--">150000 - 200000</option>
                                <option value="--Select--">200000 - 250000</option>
                                <option value="--Select--">More Then 250000</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                minority
                            </label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Muslims</option>
                                <option value="--Select--">Sikhs</option>
                                <option value="--Select--">Christians</option>
                                <option value="--Select--">Buddhists</option>
                                <option value="--Select--">Jain</option>
                                <option value="--Select--">Parsis</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Last Year Passing %</label>
                            <input type="text" class="form-control" placeholder="Enter Last Year Passing %" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Remark</label>
                            <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>IsActive<span style="color: red">*</span></label>
                            <br />
                            <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                        </div>
                    </div>


                    <%-- <div class="col-md-3">
                        </div>
                        
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Hostel SS Amount for Boy<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Scheme Amount" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Hostel SS Amount for Girl<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Scheme Amount" autocomplete="off" />
                            </div>
                        </div>--%>
                </div>

                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class=" Alert-Confirmation btn btn-success  btn-rounded">Save</button>

                            <a href="Trn_SchemeApplication.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>

        <div id="show">
            <fieldset>
                <legend>Details</legend>
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
                    <div class="table-responsive col-md-12">
                        <table class="table">
                            <tr>
                                <th>Sr.No.<br />

                                    <th>Academic Year</th>
                                <th>Scheme Applied By Department</th>
                                <th>Scheme Type</th>
                                <th>योजना का प्रकार</th>

                                <th>Scheme Catagory</th>
                                <th>Applicable For</th>
                                <%--     <th>Scheme Amount for Boy</th>
                                        <th>Scheme Amount for Girl</th>--%>
                                <th>View more</th>
                                <th>Status</th>

                            </tr>
                            <tr>
                                <td>1</td>

                                <td>2023</td>
                                <td>स्कूल षिक्षा विभाग</td>
                                <td>Education Development Scholarship” to the only daughter (recognized by Madhya Pradesh Secondary Education Board and approved by the Board
All non-government higher secondary schools running the curriculum of Class 11 and 12</td>

                                <td>इकलौती बेटी को ‘‘शिक्षा विकास छात्रवृति (म.प्र. माध्यमिक शिक्षा मण्डल से मान्यता प्राप्त एवं मण्डल
का पाठ्यक्रम संचालित करने वाले समस्त अशासकीय हायर सेकेण्ड्री विद्यालय) कक्षा 11 एवं 12</td>
                                <td>OBC</td>
                                <td>Boy</td>
                                <%--     <td>2000</td>
                                        <td>3000</td>--%>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                </td>
                                <td>Active</td>

                            </tr>
                            <tr>
                                <td>2</td>

                                <td>2023</td>
                                <td>अनुसूचित जाति कल्याण विभाग</td>
                                <td>State Government SC Scholarship (Fresh & Renewal) Class 1 to 5 (Only for Girls)</td>
                                <td>राज्य शासन अ.जा. छात्रवृत्ति (नवीन एवं नवीनीकरण) कक्षा 1 से 5 (केवल बालिकाओं के लिए)</td>

                                <td>OBC</td>
                                <td>Boy</td>
                                <%--     <td>2000</td>
                                       <td>3000</td>--%>
                                <td>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                </td>
                                <td>Active</td>

                            </tr>
                            <tr>
                                <td>3</td>

                                <td>2023</td>
                                <td>विमुक्त, घुमक्कड एवं अर्द्ध घुमक्कड जनजाति कल्याण विभाग</td>
                                <td>State Scholarship (Primary Level) Class 1 to 5</td>
                                <td>राज्य छात्रवृत्ति (प्राथमिक स्तर) कक्षा 1 से 5</td>

                                <td>OBC</td>
                                <td>Boy</td>
                                <%--     <td>2000</td>
       <td>3000</td>--%>
                                <td>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                </td>
                                <td>Active</td>

                            </tr>

                            <tr>
                                <td>4</td>

                                <td>2023</td>
                                <td>म.प्र. पिछड़ा वर्ग अल्पसंख्यक विभाग</td>
                                <td>Post Matric Backward Class Scholarship A- Non Hosteller
class 11th
class 12th
B-students
class 11th
class 12th</td>
                                <td>पोस्ट मेट्रिक पिछडा़ वर्ग छात्रवृत्ति ए- गैर छात्रावासी
कक्षा 11वीं
कक्षा 12वीं
बी-छात्रावासी
कक्षा 11वीं
कक्षा 12वीं</td>

                                <td>OBC</td>
                                <td>Boy</td>
                                <%--     <td>2000</td>
       <td>3000</td>--%>
                                <td>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                </td>
                                <td>Active</td>
                            </tr>

                            <tr>
                                <td>5</td>

                                <td>2023</td>
                                <td>सामाजिक न्याय विभाग म.प्र.</td>
                                <td>दव्यांग विद्यार्थियों के लिए छात्रवृत्ति योजना कक्षा 1 से 8 तक कक्षा 9 से 12
                                </td>
                                <td>Scholarship Scheme for Disabled Students Class 1 to 8 Class 9 to 12</td>

                                <td>OBC</td>
                                <td>Boy</td>
                                <%--     <td>2000</td>
       <td>3000</td>--%>
                                <td>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                </td>
                                <td>Active</td>
                            </tr>


                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li>
                                <strong>Academic Year</strong>
                                <ul>
                                    <li>User Should be able to select year, and the field should be in a <strong>calendar format</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Type (In English)</strong>
                                <ul>
                                    <li>User should be able to enter the <strong>Scheme Type (In English)</strong> and the text field should accept <strong>only English letters</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>योजना का प्रकार (हिंदी में)</strong>
                                <ul>
                                    <li>User should be able to enter the <strong>Scheme Type (In Hindi)</strong> and the text field should accept <strong>only Hindi letters</strong>.</li>
                                </ul>
                            </li>

                            <li>
                                <strong>Scheme Applied By</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Scheme Applied By </strong>from the dropdown and the data will be populated from the <strong>Management Detail Master</strong> and data cascade from <strong>Management Group</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Student Category</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Student Category </strong>from the dropdown and the data will be populated from the <strong>Category Master</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Applicable Class From</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Applicable Class From </strong>from the dropdown and the data will be populated from the <strong>School Class Name Master</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Applicable Class To</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Applicable Class To </strong>from the dropdown and the data will be populated from the <strong>School Class Name Master</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Applied for</strong>
                                <ul>
                                    <li>User should be able to select the <strong>Scheme Applied for </strong>and data in dropdown should (Boy, Girl, and Both).</li>
                                    <li>If select  <strong>Boy</strong> then , Scheme Amount for Boy field is Visible. </li>
                                    <li>If select  <strong>Girl</strong> then , Scheme Amount for Girl field is Visible. </li>
                                    <li>If select  <strong>Both</strong> then , both fields are Visible. </li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Amount for Boy</strong>

                                <ul>
                                    <li>User should be able to enter the <strong>Scheme Amount for Boy</strong> and the text field should accept <strong>only 2 Places Decimal Values.</strong> </li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Amount for Girl</strong>
                                <ul>
                                    <li>User should be able to enter the <strong>Scheme Amount for Girl</strong> and the text field should accept <strong>only 2 Places Decimal Values.</strong> </li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Apply From</strong>
                                <ul>
                                    <li>User should be able to select or enter the <strong>Scheme Apply From</strong> and the field should accept <strong>Date Only.</strong> </li>
                                </ul>
                            </li>
                            <li>
                                <strong>Scheme Apply To</strong>
                                <ul>
                                    <li>User should be able to select or enter the <strong>Scheme Apply To</strong> and the field should accept <strong>Date Only.</strong> </li>
                                </ul>
                            </li>
                            <li>
                                <strong>For Goverment School</strong>
                                <ul>
                                    <li>User will be select the status in the Drop down – Yes/No. </li>
                                </ul>
                            </li>
                            <li>
                                <strong>BPL</strong>
                                <ul>
                                    <li>User will be select the status in the Drop down – Yes/No.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>PWD</strong>
                                <ul>
                                    <li>User will be select the status in the Drop down – Yes/No.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>PWD %</strong>
                                <ul>
                                    <li>User will be entering the status of PWD percentage.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Sibling</strong>
                                <ul>
                                    <li>User will be select the sibling status in the Drop down.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>In Education Gap</strong>
                                <ul>
                                    <li>User will be select the status in the Drop down – Yes/No</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Father Occupation</strong>
                                <ul>
                                    <li>User will be able to enter father occupation in text field.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Vimukt Status</strong>
                                <ul>
                                    <li>User will be able to enter status in text field.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Family Financial Income</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Family Financial Income</strong> and the field should be drop down.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Last Year Passing %</strong>
                                <ul>
                                    <li>User will be able to enter last year passing percentage in text field.</li>
                                    <li>It should be numeric with special character.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Remark</strong>
                                <ul>
                                    <li>User should be able to enter the <strong>Scheme Details</strong>.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Save</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>On save button click form field should be validated. </li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                    <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                    <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                </ul>

                            </li>
                            <li>
                                <strong>Clear</strong>
                                <ul>
                                    <li>User should be able to click on Clear button. </li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Excel</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>PDF</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Searchbox</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                </ul>
                            </li>
                            <li><strong>Eye Icon (Gridview)</strong>
                                <ul>
                                    <li>User will able to see Scheme all information in pop-up by clicking on Eye Icon <strong>Hyperlink</strong> in gridview.</li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    <!-- Add the Modal -->
    <!--for UDISE CODE CLICK Add the Modal -->
    <!-- sample modal content -->
    <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xxl" style="width: 100%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myLargeModalLabel">Scheme Master</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Scheme Details</legend>
                        <div class="row">
                            <%--     <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Applicable For</label>
                                        <input type="text" class="form-control" readonly placeholder="Boy" autocomplete="off" />
                                    </div>
                                </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Scheme Amount for Boy</label>
                                    <input type="text" class="form-control" readonly placeholder="2000" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Scheme Amount for Girl</label>
                                    <input type="text" class="form-control" readonly placeholder="3000" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Scheme Apply From</label>
                                    <input type="text" class="form-control" placeholder="14/12/2020" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Scheme Apply To</label>
                                    <input type="text" class="form-control" placeholder="14/12/2025" readonly />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Applicable Class From</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option selected value="--Select--">I Class</option>
                                        <option value="--Select--">II Class</option>
                                        <option value="--Select--">III Class</option>
                                        <option value="--Select--">IV Class</option>
                                        <option value="--Select--">V Class</option>
                                        <option value="--Select--">VI Class</option>
                                        <option value="--Select--">VII Class</option>
                                        <option value="--Select--">VIII Class</option>
                                        <option value="--Select--">IX Class</option>
                                        <option value="--Select--">X Class</option>
                                        <option value="--Select--">XI Class</option>
                                        <option value="--Select--">XII Class</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Applicable Class To</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">I Class</option>
                                        <option value="--Select--">II Class</option>
                                        <option value="--Select--">III Class</option>
                                        <option value="--Select--">IV Class</option>
                                        <option value="--Select--">V Class</option>
                                        <option value="--Select--">VI Class</option>
                                        <option value="--Select--">VII Class</option>
                                        <option value="--Select--">VIII Class</option>
                                        <option value="--Select--">IX Class</option>
                                        <option value="--Select--">X Class</option>
                                        <option value="--Select--">XI Class</option>
                                        <option selected value="--Select--">XII Class</option>
                                    </select>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>For Goverment School</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--" selected>Yes</option>
                                        <option value="--Select--">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>BPL</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--" selected>Yes</option>
                                        <option value="--Select--">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>PWD</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--" selected>Yes</option>
                                        <option value="--Select--">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>PWD %</label>
                                    <input type="text" class="form-control" readonly placeholder="5%" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Siblings</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">1</option>
                                        <option selected value="--Select--">2</option>
                                        <option value="--Select--">3</option>
                                        <option value="--Select--">4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Is Education GAP</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Yes</option>
                                        <option selected value="--Select--">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Father Occupation</label>
                                    <input type="text" class="form-control" placeholder="Helper" readonly autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Family Income(IN Rs.)</label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Less Then 50000</option>
                                        <option value="--Select--">50000 - 100000</option>
                                        <option value="--Select--">100000 - 150000</option>
                                        <option value="--Select--">150000 - 200000</option>
                                        <option value="--Select--">200000 - 250000</option>
                                        <option selected value="--Select--">More Then 250000</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Last Year Passing %</label>
                                    <input type="text" class="form-control" readonly placeholder="87%" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Remark</label>
                                    <input type="text" class="form-control" readonly placeholder="Remark" autocomplete="off" />
                                </div>
                            </div>

                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>

            <!-- /.modal-content -->
        </div>

        <!-- /.modal-dialog -->

    </div>
    <!-- /.modal -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            });
        });
    </script>
</asp:Content>
