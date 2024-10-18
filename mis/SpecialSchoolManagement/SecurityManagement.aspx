<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityManagement.aspx.cs" Inherits="mis_SpecialSchoolManagement_SecurityManagement" %>

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
                            <a href="#Security Management" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Special School Management</span></a>
                        </li>

                        <li class="breadcrumb-item">OIS Security Management</li>
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
                        <div class="headertext btn btn-primary rounded-pill">OIS Security Management /ओ.आई.एस सुरक्षा प्रबंधन</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext ">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divSecurity">
                <fieldset>
                    <legend>OIS Security / ओ.आई.एस सुरक्षा
                      
                    </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select Academic Year /<br />
                                शैक्षणिक वर्ष चुनें <span style="color: red;">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                        <%-- <div class="col-md-3">
                            <label>
                                UDISE Code/<br />
                                यूडीआईएसई कोड<span style="color: red;">*</span>

                            </label>
                            <input type="text" id="inputUDISE" class="form-control">
                        </div>--%>

                        <div class="col-md-2   text-center ">
                            <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData()">Search</button>
                        </div>
                    </div>


                    <hr />

                </fieldset>


            </div>

            <div id="divsecurity1" runat="server" class="d-none">
                <fieldset>
                    <legend>Available Security Facilities </legend>

                    <div class="row align-items-end">

                        <div class="col-lg-12 " runat="server" id="s">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr role="row">
                                                    <th class="mt-0">Sr No. /<br />
                                                        सरल क्रमांक
                                                    </th>
                                                    <th class="mt-0 " >Security Facilities /
                                                        <br />
                                                        सुरक्षा सुविधा
                                                    </th>
                                                    <th class="mt-0 ">Actions /
                                                        <br />
                                                        कार्यवाही
                                                    </th>
                                                    <th class="mt-0 " >Numbers of Facilities /<br />
                                                        सुविधाओ की संख्या
                                                    </th>
                                                </tr>



                                                <tr role="row">
                                                    <td class="mt-0">1
                                                    </td>
                                                    <td class="mt-0" >Guards
                                                    </td>
                                                    <td scope="col">

                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" name="option1" value="yes">
                                                            Yes
   
                                                        </label>
                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" name="option1" checked value="no">
                                                            No
   
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input id="text1" value="0" style="width: 25%; margin: 0 auto" autocomplete="off" class="form-control " type="text" />
                                                    </td>
                                                </tr>




                                                <tr role="row">
                                                    <td class="mt-0">2
                                                    </td>
                                                    <td class="mt-0">Camera
                                                    </td>
                                                    <td scope="col">

                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" name="option2" value="yes">
                                                            Yes
   
                                                        </label>
                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" name="option2" value="no" checked>
                                                            No
   
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input id="text2" value="0" style="width: 25%; margin: 0 auto" autocomplete="off" class="form-control " type="text" />
                                                    </td>
                                                </tr>


                                                <tr role="row">
                                                    <td class="mt-0" style="font-size: large" scope="col">3
                                                    </td>

                                                    <td class="mt-0" style="font-size: large" scope="col">Warden
                                                    </td>
                                                    <td scope="col">

                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" name="option3" value="yes">
                                                            Yes
   
                                                        </label>
                                                        <label style="margin-right: 30px;">
                                                            <input type="radio" checked name="option3" value="no">
                                                            No
   
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <input id="text3" value="0" style="width: 25%; margin: 0 auto" autocomplete="off" class="form-control " type="text" />
                                                    </td>
                                                </tr>

                                            </thead>

                                        </table>

                                    </div>

                                    <div class="col-md-4">
                                        <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>

                                        <button type="button" class="btn btn-outline-danger w-lg btn-border">Clear</button>
                                    </div>
                                </div>


                            </div>


                        </div>



                    </div>
                </fieldset>
            </div>
            <%--          <div id="Divsecurityguard" runat="server" class=" divs_open_close">
                <fieldset>
                    <legend>School And Classrooms Security </legend>

                    <div class="row align-items-end">

                        

                        <div class="col-lg-12 " runat="server" id="Div3">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">

                                                    <th class="mt-0" scope="col">Enter Number of Security Guards:
                                                    </th>


                                                </tr>
                                                <tr>
                                                    <td scope="col">

                                                        <input type="text" class="form-control">
                                                    </td>
                                                </tr>
                                            </thead>

                                        </table>
                                    </div>
                                </div>



                                <div class="col-md-2   text-center mt-4">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                </div>

                                <div class="col-md-1   text-center mt-4">
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border">Clear</button>
                                </div>

                            </div>
                        </div>

                      
                    </div>
                </fieldset>
            </div>
            <div id="Divfireextinquishers" runat="server" class=" divs_open_close">
                <fieldset>
                    <legend>School And Classrooms Security </legend>

                    <div class="row align-items-end">

                        

                        <div class="col-lg-12 " runat="server" id="Div9">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">

                                                    <th class="mt-0" scope="col">Enter Number of Fire Extinquishers:
                                                    </th>


                                                </tr>
                                                <tr>
                                                    <td scope="col">

                                                        <input type="text" class="form-control">
                                                    </td>
                                                </tr>
                                            </thead>

                                        </table>
                                    </div>
                                </div>



                                <div class="col-md-2   text-center mt-4">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                </div>

                                <div class="col-md-1   text-center mt-4">
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border">Clear</button>
                                </div>

                            </div>
                        </div>

                        
                    </div>
                </fieldset>
            </div>
            <div id="Divfirealarms" runat="server" class="divs_open_close">
                <fieldset>
                    <legend>School And Classrooms Security </legend>

                    <div class="row align-items-end">

                        
                        <div class="col-lg-12 " runat="server" id="Div15">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">

                                                    <th class="mt-0" scope="col">Enter Number of Fire Alarms:
                                                    </th>


                                                </tr>
                                                <tr>
                                                    <td scope="col">

                                                        <input type="text" class="form-control">
                                                    </td>
                                                </tr>
                                            </thead>

                                        </table>
                                    </div>
                                </div>



                                <div class="col-md-2   text-center mt-4">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                </div>

                                <div class="col-md-1   text-center mt-4">
                                    <button type="button" class="btn btn-outline-danger w-lg btn-border">Clear</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            --%>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


    <script>
        function onClickShowData() {
            // var inputUDISE = document.getElementById("inputUDISE");

            var divsecurity1 = document.getElementById('<%=divsecurity1.ClientID %>');
            divsecurity1.classList.remove("d-none");


        }


    </script>
    <script>
        // Function to toggle visibility of rows based on the selection of Security Guards
        function toggleRows1(selectedValue) {
            var text1 = document.getElementById("text1");
            if (selectedValue) {
                text1.value = 5; // Set the value to 5 when "Yes" is selected
            } else {
                text1.value = 0; // Clear the value when "No" is selected (optional)
            }
        }

        // Function to toggle visibility of rows based on the selection of Security Camera
        function toggleRows2(selectedValue) {
            var text2 = document.getElementById("text2");
            if (selectedValue) {
                text2.value = 15; // Set the value to 5 when "Yes" is selected
            } else {
                text2.value = 0; // Clear the value when "No" is selected (optional)
            }
        }

        // Function to toggle visibility of rows based on the selection of Security Warden
        function toggleRows3(selectedValue) {
            var text3 = document.getElementById("text3");
            if (selectedValue) {
                text3.value = 8; // Set the value to 5 when "Yes" is selected
            } else {
                text3.value = 0; // Clear the value when "No" is selected (optional)
            }
        }

    </script>

</asp:Content>

