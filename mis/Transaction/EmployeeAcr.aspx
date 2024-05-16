<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeAcr.aspx.cs" Inherits="mis_Transaction_EmployeeAcr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

            .tab-menu:hover {
                color: #16603ae3;
            }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
        }
    </style>
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="https://schooledutest.tserver.co.in/css/site.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप </h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active"></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar ">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                                <a class="nav-link  text-white" href="#" role="button"><b class="font-16 font-bold "><i class="fa fa-home mt-1"></i></b></a>

                                <a class="nav-link text-white" href="EmployeeAcr.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Employee ACR</b></a>
                                <a class="nav-link text-white" href="EmployeeAcrFill.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Fill ACR Form</b></a>
                                <a class="nav-link text-white" href="AcrReport.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;ACR Report </b></a>
                            </ul>
                              





                        </div>
                    </div>
                </nav>


                <section runat="server" id="show">
                    <div class="row page-titles mb-4">
                        <div class="col-md-5 align-self-center">
                        </div>

                    </div>

                    <div class="card-header card-border-info">
                    </div>
                    <fieldset>
                        <legend>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>वार्षिक प्रतिवेदन अवधि वर्ष <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <%-- <asp:TextBox runat="server" ID="txtfinancialyear" class="form-control" autocomplete="off" placeholder="2023-2024"></asp:TextBox>--%>

                                    <%--                                    <input required data-msg="Select Year of Establishment" maxlength="9" autocomplete="off" class="form-control datepickerYear00" placeholder="YYYY" type="text" data-val-required="Select Years of Establishment" id="EstablishmentYear" name="EstablishmentYear" />--%>
                                    <input onkeypress="return NumberOnly();" maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2021-22" type="text" data-val="true" value="" />


                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>विभाग का नाम <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtDepartment" class="form-control" autocomplete="off" placeholder="शिक्षा विभाग"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>जिला  का नाम <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="TextBox1" class="form-control" autocomplete="off" placeholder="भोपाल"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        कर्मचारी आई.डी
                                     <span class="fa-pull-right" style="color: red">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="TextBox4" class="form-control" autocomplete="off" placeholder="EDP4561231556"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>नाम (उप नाम सहित) <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtName" class="form-control" autocomplete="off" placeholder="गोपाल वर्मा"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>पिता/पति का नाम <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtFatherName" class="form-control" autocomplete="off" placeholder="राम वर्मा"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>जन्मतिथि <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="TXTDOB" class="form-control" autocomplete="off" placeholder="22-07-1989"></asp:TextBox>

                                </div>
                            </div>



                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>धारित पद का नाम <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="Txtdesignetion" class="form-control" autocomplete="off" placeholder="सहायक शिक्षक"></asp:TextBox>
                                    <%-- <select class="form-control select2">
                                    <option value="Indore">Ministry (मंत्रालय)</option>
                                    <option value="Gwalior">Executive (कार्यकारी)</option>
                                    <option value="Jabalpur">Teaching (शिक्षण)</option>
                                </select>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>संस्था का नाम<span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" placeholder="DPI"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>जी.पी.एफ.खाता क्रमांक <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtAccuntNo" class="form-control" autocomplete="off" placeholder="654456123789"></asp:TextBox>


                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>वर्तमान पद पर नियुक्ति  दिनांक <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:TextBox runat="server" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" placeholder="12/04/2024"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>विभाग में प्रथम  नियुक्ति  दिनांक <span class="fa-pull-right" style="color: red">*</span>  </label>
                                    <asp:TextBox runat="server" ID="TXTfIRSTJINGDATE" TextMode="Date" class="form-control" autocomplete="off" placeholder="12/04/2024"></asp:TextBox>

                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>विभाग में पद नाम <span class="fa-pull-right" style="color: red">*</span>  </label>
                                    <asp:TextBox runat="server" ID="TextBox3" class="form-control" autocomplete="off" placeholder="सहायक शिक्षक"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>प्रथम संस्था का नाम <span class="fa-pull-right" style="color: red">*</span>  </label>
                                    <asp:TextBox runat="server" ID="TextBox2" class="form-control" autocomplete="off" placeholder="DPI"></asp:TextBox>

                                </div>
                            </div>



                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">धारित पद <span class="fa-pull-right" style="color: red">*</span> </label>
                                    <asp:DropDownList runat="server" ID="ddlDESINATIONTYPE" CssClass="form-control select2">

                                        <asp:ListItem>स्थाई</asp:ListItem>
                                        <asp:ListItem>अस्थाई</asp:ListItem>
                                        <asp:ListItem>स्थानापन्न</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-md-3 text-center mt-4">
                                <div class="form-group">
                                    <button type="button" class="Alert-Save btn btn-success btn-rounded  ">
                                        Send to Principal
                                    </button>


                                    <a href="EmployeeAcr.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </section>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
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
                        text: "Do you want to Send this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Send Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
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
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script>////$(document).ready(function () {
        ////            $('.datepicker').datepicker({
        ////                format: 'dd/mm/yyyy',
        ////                autoclose: true // Add autoclose option
        ////            });
        ////        });

        //$(document).ready(function () {
        //    $('.datepickerYear00').datepicker({
        //        // format: "yyyy",
        //        //weekStart: 1,
        //        // orientation: "bottom",
        //        // viewMode: "years",
        //        // minViewMode: "years",
        //        format: "yyyy-yyyy",
        //        weekStart: 1,
        //        orientation: "bottom",
        //        changeMonth: true,
        //        changeYear: true,
        //        minViewMode: "years"

        //    });
        //});
        $(document).ready(function () {
            //$('.datepickerYear').datepicker({
            //    format: 'yyyy-yyyy',
            //    viewMode: 'years',
            //    minViewMode: 'years',
            //    autoclose: true // Add autoclose option
            //});
            $('.datepickerYear').datepicker({
                format: "yyyy",
                minViewMode: 2,
                autoclose: true
            }).on('hide', function (e) {
                var selectedYear = parseInt(e.target.value); // Convert to integer
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            });

            // Triggering the datepicker to show


            $('.datepickerMonthYear').datepicker({
                format: 'mm/yyyy', // Set the format to display month and year
                viewMode: 'months', // Set view mode to display months
                minViewMode: 'months', // Set min view mode to display months
                autoclose: true // Add autoclose option
            });
        });</script>

</asp:Content>

