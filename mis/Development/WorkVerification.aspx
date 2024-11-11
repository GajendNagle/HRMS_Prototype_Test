<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="WorkVerification.aspx.cs" Inherits="mis_Construction_WorkVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .has-search .form-control {
            padding-left: 2.375rem;
        }

        .has-search .form-control-feedback {
            position: absolute;
            z-index: 2;
            display: block;
            width: 2.375rem;
            height: 2.375rem;
            line-height: 2.375rem;
            text-align: center;
            pointer-events: none;
            color: #aaa;
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
                        <li class="breadcrumb-item"><span>Work Verification</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Work Verification (According To MileStone)
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                            <%--    इस पृष्ठ के माध्यम से कार्य के सत्यापन का विवरण प्राप्त किया जाता है।--%>     Work Verification
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Work Verification (According To MileStone)</legend>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Project Number<%--<br />
                                प्रोजेक्ट नंबर का चयन करें--%><span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option value="">--Select--</option>
                                <option value="1">PR1001</option>
                                <option value="2">PR1002</option>
                                <option value="3">PR1003</option>
                                <option value="4">PR1004</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Project Work Order No.<%--<br />
                                प्रोजेक्ट आदेश नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="PR1001" readonly class="form-control" placeholder="Enter Project Order No." />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Project Start Date<%--<br />
                                परियोजना दिनांक--%><span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="01/01/2024" readonly />
                        </div>
                    </div>
                            <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Project End  Date<%--<br />
                                परियोजना दिनांक--%><span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="01/01/2024" readonly />
                        </div>
                    </div>
               
                                     <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Project Duration <%--<br />
                                परियोजना दिनांक--%><span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="150 Days" readonly />
                        </div>
                    </div>
               
                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                RFP No.<%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="RPF123" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                RFP Date<%--<br />
                                आरएफपी दिनांक--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="01/10/2024" readonly class="form-control" />
                        </div>
                    </div>
                               <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                Vendor Name <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="R.K Construction" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>
                                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                GSTN No. <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="23AAAA0000AZ5" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>

                                           <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                Tender No. <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="55558924" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>


                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                Select Millstone
                                <span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddldis">
                                <option value="0">--Select--</option>
                                <option value="1">M1</option>
                                <option value="2">M2</option>
                                <option value="3">M3</option>
                                <option value="3">M4</option>
                                <option value="3">M5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 " id="div3" style="display: none">
                        <div class="form-group">
                            <label>
                                Work Completion Date
             <br />
                            </label>
                            <input type="date" class="form-control" value="2024-05-09" readonly />
                        </div>
                    </div>
                    <div class="col-md-4 " id="div4" style="display: none">
                        <div class="form-group">
                            <label>
                                Work Completion %
                            </label>
                            <input type="text" class="form-control" value="50%" id="B3" readonly />
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                Field Visit Date<span style="color: red">*</span>
                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="form-group">
                            <label>
                                Upload Photograph & Documents
                               <%-- फोटोग्राफ और दस्तावेज़ अपलोड करें--%><span style="color: red">*</span>
                            </label>
                            <input type="file" class="form-control" multiple />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Verification Status<%--<br />
                                कार्य सत्यापन स्थिति का चयन करें--%><span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option value="1">Completed</option>
                                <option value="2">Pending</option>
                            </select>
                        </div>
                    </div>
               
                    <div class="col-md-6 mt-2">
                        <div class="form-group">
                            <label>
                                Enter Work Description<%--<br />
                                कार्य का विवरण दर्ज करें--%><span style="color: red">*</span>
                            </label>
                            <textarea class="form-control" rows="1" placeholder="Enter Work Description"></textarea>
                        </div>
                    </div>
                </div>

                <hr style="margin-top: -25px;" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Save</button>
                            <a href="#" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="searchdetails" style="display: none">
                <fieldset id="gridid">

                    <legend>Details / विवरण </legend>
                   
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center nowrap">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.<%--<br />
                                                सरल क्र.--%></th>
                                            <th>Project Order No.<%--<br />
                                                परियोजना आदेश संख्या--%></th>
                                            <th>Project Date<%--<br />
                                                परियोजना दिनांक--%></th>
                                            <th>RFP No.<%--<br />
                                                आरएफपी संख्या--%></th>
                                            <th>RFP Date<%--<br />
                                                आरएफपी दिनांक--%></th>
                                            <th>Millstone Type<%--<br />
                                                मिलस्टोन प्रकार--%></th>
                                            <th>Visit Date<%--<br />
                                                यात्रा की दिनांक--%></th>
                                            <th> Verification Status<%--<br />
                                                कार्य सत्यापन स्थिति--%></th>
                                            <th> Description<%--<br />
                                                कार्य का विवरण--%></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>PR1001</td>
                                            <td>01-01-2024</td>
                                            <td>RFP001</td>
                                            <td>10-01-2024</td>
                                            <td>M1</td>
                                            <td>15-01-2024</td>
                                            <td>Completed</td>
                                            <td>Work completed as per specifications</td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>PR1001</td>
                                            <td>01-02-2024</td>
                                            <td>RFP002</td>
                                            <td>20-02-2024</td>
                                            <td>M2</td>
                                            <td>25-02-2024</td>
                                            <td>Pending</td>
                                            <td>Work pending for verification</td>

                                        </tr>

                                    </tbody>
                                </table>
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
        function btnsearch(event) {
            var x = document.getElementById("searchdetails");
            var y = document.getElementById("btncontainer");
            x.style.display = "block";
            y.style.display = "block";
        }
    </script>
    <script>
        $(document).ready(function () {
            $('#ddldis').change(function () {
                var selectedValue = $(this).val();

                // Show div3 whenever a value other than '0' is selected
                if (selectedValue !== '0') {
                    $('#div3').show();
                    $('#div4').show();
                } else {
                    $('#div3').hide();
                    $('#div4').show();
                }
            });
        });
    </script>
</asp:Content>
