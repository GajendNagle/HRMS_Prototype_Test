<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Registergrievance.aspx.cs" Inherits="mis_Scheme_Registergrievance"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Register Grievance </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Laptop Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="Registergrievance.aspx" title="click to go on">Register Grievance</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <div class="mt-3">
                    <fieldset>
                        <legend>Register Grievance </legend>

                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                             <label class="font-bold">Class 12th Roll Number (MP Board)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="In English" autocomplete="off" />
                            </div>
                                </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                <label class="font-bold">Mobile No<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="In English" autocomplete="off" />
                            </div>
                                </div>                        

                             
                            <div class="col-md-3">
                                <div class="form-group">
                                <label class="font-bold">Grievance Type <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">में पात्र हू पर मेरा नाम पोर्टल में पात्र छात्रों में दर्ज नहीं हैं।</option>
                                    <option value="14">मुझे लैपटॉप के लिए राशि प्राप्त नहीं हुई हैं।</option>
                                    <option value="16">अन्य</option>
                                   
                                </select>
                            </div>
                                </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                <label class="font-bold">Details<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="In English" autocomplete="off" />
                            </div>
                                </div>

                            <div class="col-lg-12 mt-5">

                                <div class="col-lg-12">

                                    <div class="row justify-content-center">
                                        <div class="col-lg-3 text-center">
                                            <img src="../../img/captcha.png" width="150" />
                                        </div>
                                        <div class="col-lg-12"></div>
                                        <div class="col-lg-4 text-center">
                                            <label class="font-bold">Please enter the code shown above</label>
                                        </div>
                                        <div class="col-lg-12"></div>

                                        <div class="col-lg-1 ">
                                            <div class="form-group">
                                                <input type="text" class="form-control text-center" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowDetails" class="btn btn-success btn-rounded" onclick="Show();"> Register Grievance</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    
                </div>

            </div>
        </div>
    </div>
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>



