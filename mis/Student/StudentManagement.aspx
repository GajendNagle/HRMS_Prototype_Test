<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentManagement.aspx.cs" Inherits="mis_Student_StudentManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #hiddenField1 {
            display: none;
        }

        #hiddenField2 {
            display: none;
        }

        #hiddenField3 {
            display: none;
        }
    </style>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

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
                            <a href="#StudentManage" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Student Achievement Tracking</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
       
        <div class="card-body">
            <fieldset>
                <legend>Student Achievement Tracking/<br />
                    छात्र उपलब्धि ट्रैकिंग
                </legend>
                <div class="row my-5 align-items-end">

                    <div class="col-md-3" onclick="HideShow()">
                        <div class="form-group">
                            <label>
                                Enter Student Samagra Id/
                                <br />
                                छात्र समग्र आईडी दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" id="txt_samagraId" onblur="handleInput()" placeholder="Enter Samagra id" class="form-control" autocomplete="off" />
                        </div>
                    </div>


                    <div class="col-md-3" id="displayedField1">
                        <div class="form-group">
                            <label>
                                Student Name/<br />
                                छात्र का नाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" readonly />
                        </div>
                    </div>


                    <div class="col-md-3" id="displayedField2">
                        <div class="form-group">
                            <label>
                                Student Class No./<br />
                                छात्र की कक्षा संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" readonly />
                        </div>
                    </div>


                    <div class="col-md-3" id="displayedField3" style="display: none">
                        <div class="form-group">
                            <label>
                                Enter Student Subject/<br />
                                छात्र का विषय दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" readonly />
                        </div>
                    </div>

                    <div class="col-md-3 " id="hiddenField1">
                        <div class="form-group">
                            <label>
                                Student Name/<br />
                                छात्र का नाम <span style="color: red">*</span></label>
                            <input name="ename" type="text" placeholder="Aarti Sharma" class="form-control text-dark" autocomplete="off" readonly />
                        </div>
                    </div>


                    <div class="col-md-3 " id="hiddenField2">
                        <div class="form-group">
                            <label>
                                Student Class No./<br />
                                छात्र की कक्षा संख्या <span style="color: red">*</span></label>
                            <input name="ename" type="text" placeholder="9th" class="form-control text-dark" autocomplete="off" readonly />
                        </div>
                    </div>


                    <div class="col-md-3 " id="hiddenField3" style="display: none">
                        <div class="form-group">
                            <label>
                                Select Student Subject/<br />
                                छात्र का विषय दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" placeholder="english" class="form-control text-dark" autocomplete="off" readonly />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Achievement /
                                <br />
                                उपलब्धि का चयन करें
                            </label>
                            <select class="form-control select2" id="ddl_subjects">
                                <option value="0">-Select-</option>
                                <option value="Award">Award</option>
                                <option value="Award">Certificate </option>
                                <option value="Participation">Participation</option>
                            </select>
                        </div>
                    </div>
                </div>


                <%--  <div class="row my-5 mx-1 align-items-end form-control bg-white">

                    <label style="margin-right: 20px">
                        Achievement/उपलब्धि :-
                    </label>

                    <span class="mx-3">
                        <input type="radio" name="Achievement" id="Award" value="Award">
                        <label for="Award">Award</label>
                    </span>
                    <span class="mx-3">

                        <input type="radio" name="Achievement" id="Certificate" value="Certificate">
                        <label for="Certificate">Award</label>
                    </span>
                    <span class="mx-3">

                        <input type="radio" name="Achievement" id="Participation" value="Participation">
                        <label for="Participation">Participation</label>
                    </span>

                </div>--%>

                <div class="row align-items-end my-5">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year/<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a2" class="form-control datepickerYear2 form-select" type="text" data-val="true" required="required" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Title/<br />
                                शीर्षक दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" placeholder="Title" class="form-control" autocomplete="off" />
                        </div>
                    </div>


                    <%--  <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Achievement As/<br />
                                उपलब्धि के रूप में<span style="color: red">*</span></label>
                            <input name="ename" type="text" placeholder="Achievement" class="form-control" autocomplete="off" />
                        </div>
                    </div>--%>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload Document/<br />
                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />

                        </div>
                    </div>


                </div>

                <div class="row">
                    <%--<div class="col-md-3"> </div>--%>
                    <div class="col-md-6">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="StudentManagement.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                    <%--<div class="col-md-3"></div>--%>
                </div>

            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">

    </script>
    <script>
        function DivHide() {
            /*document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';*/
            document.getElementById("show").style.display = 'block';
            document.getElementById("divGenralInfo").style.display = 'none';
        }



        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>


    <script>
        function handleInput() {
            var txt_samagraId = document.getElementById('txt_samagraId').value.trim();
            var displayedField1 = document.getElementById('displayedField1');
            var displayedField2 = document.getElementById('displayedField2');
            //var displayedField3 = document.getElementById('displayedField3');

            var hiddenField1 = document.getElementById('hiddenField1');
            var hiddenField2 = document.getElementById('hiddenField2');
            //var hiddenField3 = document.getElementById('hiddenField3');


            if (txt_samagraId === '') {
                hiddenField1.style.display = 'none';
                hiddenField2.style.display = 'none';
                // hiddenField3.style.display = 'none';

                displayedField1.style.display = 'block';
                displayedField2.style.display = 'block';
                // displayedField3.style.display = 'block';  

            }
            else {
                hiddenField1.style.display = 'block';
                hiddenField2.style.display = 'block';
                // hiddenField3.style.display = 'block';

                displayedField1.style.display = 'none';
                displayedField2.style.display = 'none';
                //   displayedField3.style.display = 'none';  

            }
        }



    </script>
</asp:Content>

