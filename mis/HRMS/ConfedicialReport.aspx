<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ConfedicialReport.aspx.cs" Inherits="mis_Transaction_ConfedicialReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ddlPosition {
            position: relative;
            bottom: 20px;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee ACR Apply</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>
    <div class="col-md-5 align-self-center">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
            <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <div class="card-title color_black">
                        PART-1 Basic Information
भाग-एक सामान्य जानकारी
                    </div>
                </div>
            </div>
        </div>
   
        <div class="card-body">

            <div runat="server" id="show">

                <fieldset>
                    <legend>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Financial Year/<br />
                                    वार्षिक प्रतिवेदन अवधि वर्ष <span class="fa-pull-right" style="color: red">*</span>
                                </label>
                                <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
                                    <asp:ListItem>2020-2021</asp:ListItem>
                                    <asp:ListItem>2021-2022</asp:ListItem>
                                    <asp:ListItem>2022-2023</asp:ListItem>
                                    <asp:ListItem>2023-2024</asp:ListItem>
                                    <asp:ListItem>2024-2025</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Name/
                                                        <br />
                                    नाम  <span class="fa-pull-right" style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation/
                                                        <br />
                                    पद नाम <span style="color: red">*</span>
                                </label>
                                <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                                    <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                                    <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                                    <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                                    <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID/<br />
                                    कर्मचारी आई.डी
                           <span class="fa-pull-right" style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Birth/<br />
                                    जन्मतिथि<span style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TXTDOB" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                            </div>
                        </div>
                        <%--  <div class="col-md-3">
                       <div class="form-group">
                           <label>Date of Birth(जन्मतिथि)/ शब्दों में <span class="fa-pull-right" style="color: red">*</span> </label>
                           <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

                       </div>
                   </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                  
                                    Institution of Posting/<br />
                                    पदस्थी शाला/स्थान<span style="color: red;">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 select2" autocomplete="off">
                                    <asp:ListItem>भोपाल</asp:ListItem>
                                    <asp:ListItem>बैतूल</asp:ListItem>
                                    <asp:ListItem>इंदौर </asp:ListItem>
                                    <asp:ListItem>जबलपुर</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                  
                                    Dise Code of Institution/<br />
                                    पदस्थी शाला का डाइस कोड<span style="color: red;">*</span></label>
                                <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" placeholder="St Theresa Girls School/489754554"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                
                                    Date OF First Posting and designation/<br />
                                    प्रथम नियुक्ति का दिनांक एवं पद<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" value="1992-09-17" TextMode="Date"></asp:TextBox>

                            </div>
                        </div>


                    </div>
                    <div class="row align-items-end">

                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    Date OF  Posting/Pramotion/<br />
                                    वर्तमान पद पर नियुक्ति/ पदोन्नति दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control" autocomplete="off" value="1996-12-23" TextMode="Date"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    Date OF Filiing of annual Immovabel Property Return/<br />
                                    स्थाई संपत्ती विवरण दाखिल करने का दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date"></asp:TextBox>

                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="Alert-Save  btn w-lg btn-success btn-border">
                                    Save/Next
                                </button>


                                <a href="ConfedicialReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        //animation: false,
                        //customClass: {
                        //    popup: 'animated tada'
                        //}
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'TeacherFillReport.aspx';
                            });
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>

