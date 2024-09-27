<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityManagementReport.aspx.cs" Inherits="mis_SpecialSchoolManagement_SecurityManagementReport" %>

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

                        <li class="breadcrumb-item">Security Management Report</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Security Management Report / सुरक्षा प्रबंधन रिपोर्ट</div>
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
                    <legend>School Security / स्कूल सुरक्षा
                      
                    </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select Academic Year /<br />
                                शैक्षणिक वर्ष चुनें <span style="color: red;">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                        <div class="col-md-3">
                            <label>
                                UDISE Code/<br />
                                यूडीआईएसई कोड<span style="color: red;">*</span>

                            </label>
                            <input type="text" id="inputUDISE" class="form-control">
                        </div>

                        <div class="col-md-2 text-center ">
                            <button type="button" id="btn1" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData()">Search</button>
                        </div>
                    </div>


                    <hr />

                </fieldset>


            </div>


            <div id="Divsecurityguard" runat="server" class="d-none divs_open_close">
                <fieldset>
                    <legend>School Security / स्कूल सुरक्षा </legend>

                    <div class="row align-items-end">



                        <div class="col-lg-12 " runat="server" id="Div3">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">

                                                    <th class="mt-0" scope="col">Sr. No. /<br />
                                                        सरल क्रमांक
                                                    </th>


                                                    <th class="mt-0" scope="col">Security Facilities /
                                                        <br />
                                                        सुरक्षा सुविधा
                                                    </th>
                                                    <th scope="col">Numbers of Facilities/<br />
                                                        सुविधाओ की संख्या
                                                    
                                                    </th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                                <tr role="row">

                                                    <th class="mt-0" scope="col">1
                                                    </th>


                                                    <th class="mt-0" scope="col">Guards
                                                    </th>
                                                    <th scope="col">6
                                                    
                                                    </th>

                                                </tr>

                                                <tr role="row">

                                                    <th class="mt-0" scope="col">2
                                                    </th>


                                                    <th class="mt-0" scope="col">Camera
                                                    </th>
                                                    <th scope="col">12
                                                    
                                                    </th>

                                                </tr>

                                                <tr role="row">

                                                    <th class="mt-0" scope="col">3
                                                    </th>


                                                    <th class="mt-0" scope="col">Warden
                                                    </th>
                                                    <th scope="col">5
                                                    
                                                    </th>

                                                </tr>
                                            </tbody>
                                        </table>

                                      <%--  <div class="col-md-4">
                                            <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>

                                            <button type="button" class="btn btn-outline-danger w-lg btn-border">Clear</button>
                                        </div>--%>
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
    <script>


        function onClickShowData() {
            var inputUDISE = document.getElementById("inputUDISE");
            if (inputUDISE.value == "") {
                // Handle case where UDISE code is not entered, e.g., show an error message.
            } else {
                var Divsecurityguard = document.getElementById('<%= Divsecurityguard.ClientID %>');
                // Corrected line: set display to block
                Divsecurityguard.classList.remove('d-none');
            }
        }

    </script>
</asp:Content>

