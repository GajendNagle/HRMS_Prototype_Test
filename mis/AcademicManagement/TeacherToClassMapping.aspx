<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherToClassMapping.aspx.cs" Inherits="mis_AcademicManagement_TeacherToClassMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .align-middle {
            vertical-align: middle !important;
        }

        #divsave {
            display: none;
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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Teacher To Class Mapping</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">

        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Teacher To Class Mapping</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card-body">
            <div runat="server" id="div">
                <fieldset>
                    <legend>Teacher To Class Mapping/
                        <br />
                        शिक्षक से कक्षा मेपिंग </legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <label>
                                Enter Teacher Unique Id /<br />
                                शिक्षक की यूनिक आईडी दर्ज करें<span style="color: red;">*</span>
                            </label>
                            <input id="text1" autocomplete="off" placeholder="Enter Teacher Unique Id" class="form-control " type="text" />
                        </div>

                        <div class="col-md-2 mt-4 text-center ">
                            <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData1()">Search</button>
                        </div>
                    </div>


                    <hr />

                </fieldset>


            </div>



            <div id="divteachingclass6" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher Information</legend>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल क्रमांक</th>
                                                    <th scope="col">Teacher Name /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Designation Name /<br />
                                                        पद का नाम</th>
                                                    <th scope="col">Panel Name/<br />
                                                        पैनल का नाम</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" class="align-middle"><span>1</span></td>
                                                    <td align="center" class="align-middle"><span>राम प्रसाद सिंह</span></td>
                                                    <td align="center"><span>माध्यमिक शिक्षक</span></td>
                                                    <td align="center"><span>HSS-3</span></td>

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

            <div id="divteachingclass7" runat="server" class="d-none">
                <fieldset>
                    <legend>Map Teacher To Class / शिक्षक को कक्षा से मैप करें </legend>

                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center " runat="server">
                                <thead>
                                    <tr>
                                        <th>Sr.No<br />
                                            सरल क्रमांक </th>
                                        <th>Class
                            <br />
                                            कक्षा
                                        </th>
                                        <th>Subjects
                            <br />
                                            विषय</th>
                                       <%-- <th>Map / Unmap<br />
                                            मैप / अनमैप</th>--%>
                                        <th>Action
            <br />
                                            कार्यवाही</th>

                                    </tr>

                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1
                                        </td>
                                        <td>
                                            <select cssclass="form-control select2" id="ddlClass" class="form-control select2" style="width: 190px;" onchange="myaddbtn()">
                                                <option value="0">--Select--</option>
                                                <option>1st class</option>
                                                <option>2nd class</option>
                                                <option>3rd class</option>
                                                <option>4th class</option>
                                                <option>5th class</option>
                                                <option>6th class</option>
                                                <option>7th class</option>
                                                <option>8th class</option>
                                                <option>9th class</option>
                                                <option>10th class</option>
                                                <option>11th class</option>
                                                <option>12th class</option>
                                            </select></td>
                                        <td align="center" valign="middle"><span>
                                            <select id="a1" class="form-control select2">
                                                <option selected="selected" value="0">--Select --</option>

                                                <option value="Science">Science</option>
                                                <option value="Social Science">Social Science</option>
                                                <option value="Mathes">Mathes</option>
                                                <option value="English">English</option>
                                                <option value="Hindi">Hindi</option>
                                            </select></span></td>
                                      <%--  <td align="center" valign="middle">
                                            <span>
                                                <span class="form-check d-inline-block">
                                                    <input class="form-check-input" type="radio" name="11" id="a2" value="Map">
                                                    <label class="form-check-label" for="map">
                                                        Map
   
                                                    </label>
                                                </span>

                                                <span class="form-check d-inline-block">
                                                    <input class="form-check-input" type="radio" name="11" id="a3" value="Unmap">
                                                    <label class="form-check-label" for="unmap">
                                                        Unmap
   
                                                    </label>
                                                </span>
                                            </span></td>--%>

                                        <td id="btnaction">
                                            <button type="button" onclick="addData()" class="btn btn-success">Map</button>
                                        </td>


                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </fieldset>

            </div>
            <div class="row justify-content-center" id="divsave">

                <div class="col-md-12">
                    <div class="form-group">
                        <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="TeacherToClassMapping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>


            </div>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function onClickShowData1() {


            var divteachingclass6 = document.getElementById('<%= divteachingclass6.ClientID %>');
            divteachingclass6.classList.add('d-none');


            var divteachingclass7 = document.getElementById('<%= divteachingclass7.ClientID %>');
            divteachingclass7.classList.add('d-none');

            var text1 = document.getElementById("text1");
            if (text1.value === "") {
                divteachingclass6.classList.add('d-none');
                divteachingclass7.classList.add('d-none');
            }
            else {
                divteachingclass6.classList.remove('d-none');
                divteachingclass7.classList.remove('d-none');
            }
        }






    </script>


    <script>
        function addData() {
            document.getElementById("divsave").style.display = "block";
            // Get input values
            let classValue = document.getElementById("ddlClass").value;
            let subjectValue = document.getElementById("a1").value;

            // Get selected radio button value
            let mapValue = document.querySelector('input[name="11"]:checked') ? document.querySelector('input[name="11"]:checked').value : "";

            // Check if all necessary values are selected
            //if (classValue === "0" || subjectValue === "0" || mapValue === "") {
            //    alert("Please select Class, Subject, and Map/Unmap option.");
            //    return;
            //}

            // Get the table and insert a new row at the end
            let table = document.getElementById("<%= Table1.ClientID %>");

            // Prevent adding more than 12 rows
            if (table.rows.length - 1 >= 12) {
                alert("Maximum 12 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert data into the new row
            let newRow = table.insertRow(table.rows.length);
            newRow.insertCell(0).innerHTML = table.rows.length - 1;  // Serial number
            newRow.insertCell(1).innerHTML = classValue;              // Selected Class
            newRow.insertCell(2).innerHTML = subjectValue;            // Selected Subject
           // newRow.insertCell(3).innerHTML = mapValue;                // Map/Unmap value

            // Action buttons (Delete)
            let actionButtonTd = newRow.insertCell(3);
            actionButtonTd.innerHTML = '<a href="javascript:void(0);" class="Alert-Delete" onclick="deleteRow(this)"><i class="fa fa-trash"></i></a>';

            clearInputs(); // Clear the input fields after adding the row
        }

        function clearInputs() {
            // Reset dropdowns and radio buttons
            document.getElementById("ddlClass").selectedIndex = 0;
            $('#ddlClass').trigger('change');  // Trigger change for select2 dropdown reset

            
        }

        function deleteRow(button) {
            // Find the row to delete
            let row = button.closest("tr");
            row.parentNode.removeChild(row);
        }
    </script>

</asp:Content>

