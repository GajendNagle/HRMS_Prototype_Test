<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectCreation.aspx.cs" Inherits="mis_Development_ProjectCreation" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">Civil Construction Master Data
                        </a></li>
                        <li class="breadcrumb-item">Project Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Project Creation / परियोजना निर्माण
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Project Location / परियोजना स्थान</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select OIS Type
                          <br />
                                OIS प्रकार का चयन करें
                            </label>
                            <span style="color: red; font-weight: bold">*</span>
                            <select class="form-control select2" id="ddlProjectNo">
                                <option>Select</option>
                                <option value="1">Office</option>
                                <option value="2">Institude</option>
                                <option value="3">School</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter OIS Code<br />
                                OIS कोड दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" id="txtOisCode" placeholder="Enter OIS Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('field').style.display = ''">Search</button>
                            <%-- <a href="ProjectCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>--%>
                        </div>
                    </div>
                </div>

                <div class="row align-items-end" id="field" style="display: none;">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name
                                <br />
                                कार्यालय के नाम का चयन करें</label>
                            <select class="form-control select2" id="ddlOfficeN" onchange="OnChange()">
                                <option value="0">Select</option>
                                <option value="3">RKMP School Bhopal</option>
                                <option value="3">Nalanda School Bhopal </option>
                                <option value="3">BEO , BHOPAL</option>
                                <option value="3">DEO , BHOPAL</option>
                                <option value="3">JD , BHOPAL</option>
                                <option value="3">HO , BHOPAL</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-3" style="display: none;" id="txtAddress">
                        <div class="form-group">
                            <label>
                                Address<br />
                                पता<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" placeholder="New Market , Roshanpura Bhopal" readonly />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Project Details</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center ">
                                <thead class="nowrap">
                                    <tr>
                                       <%-- <th>Sr.No.
                                <br />
                                            क्रमांक</th>--%>
                                        <th>Project Name<br />
                                            परियोजना का नाम</th>
                                        <th>Project Group<br />
                                            परियोजना समूह</th>
                                        <th>Project Category
                                <br />
                                            परियोजना श्रेणी</th>
                                        <th>Project Location
                                                <br />
                                            परियोजना स्थान 
                                        </th>
                                        <th>Project Start Date
                                                <br />
                                            परियोजना प्रारंभ तिथि
                                        </th>
                                        <th>Project End Date
                                                <br />
                                            परियोजना समाप्ति तिथि
                                        </th>
                                        <th>Project Duration
                                                <br />
                                            परियोजना अवधि
                                        </th>
                                         <th>Project Cost<br />
                                            परियोजना लागत
                                        </th>
                                        <th>Penalty %
                                                <br />
                                            दंड प्रतिशत
                                        </th>
                                       


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <%-- <td>1</td>--%>
                                        <td>
                                            <input type="text" class="form-control" placeholder="Enter Project Name" /></td>
                                        <td>
                                            <select class="form-control select2">
                                                <option value="0">Select</option>
                                               <option value="3">स्कूल निर्माण	</option>
                                                <option value="3">सी.सी रोड कार्य	</option>
                                                <option value="3">पेयजल व्यवस्था	</option>

                                            </select></td>
                                        <td>
                                            <select class="form-control select2" onchange="OnChange()">
                                                <option value="0">Select</option>
                                                <option value="3">विद्यालय का रख-रखाव कार्य	</option>
                                                <option value="3">पेयजल व्यवस्था		</option>
                                                <option value="3">स्कूल मार्ग निर्माण	</option>

                                            </select></td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="Enter Project Location" /></td>
                                        <td>
                                            <input type="date" class="form-control" placeholder="Enter  Project Start Date" /></td>
                                        <td>
                                            <input type="date" class="form-control" placeholder="Enter  Project End Date" /></td>
                                        <td>
                                            <input type="text" class="form-control" value="15 Days" readonly /></td>
                            
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                                    <td>
                                            <select class="form-control select2" onchange="OnChange()">
                                                <option value="0">Select</option>
                                                <option value="3">5%</option>
                                                <option value="3">10%</option>
                                                <option value="3">15%</option>
                                                <option value="3">20%</option>
                                                <option value="3">25%</option>
                                                <option value="3">30%</option>
                                               
                                            </select></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
     
            <fieldset>

                <legend>Vender Details / विक्रेता विवरण</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
             <br />
                                            क्रमांक</th>
                                        <th>Vender Name<br />
                                            विक्रेता का नाम</th>
                                        <th>Address<br />
                                            पता</th>
                                        <th>GSTIN No
             <br />
                                            जीएसटीआईएन नंबर</th>
                                        <th>Tender No
                             <br />
                                            निविदा संख्या
                                        </th>
                                        <th>Security/EMD Amount
                             <br />
                                            सुरक्षा/ईएमडी राशि
                                        </th>
                                        <th>Security/EMD Certificate Issue Date
                             <br />
                                            सुरक्षा/ईएमडी प्रमाणपत्र जारी करने की तिथि
                                        </th>
                                        <th>Security/EMD Certificate Exp. Date
                             <br />
                                            सुरक्षा/ईएमडी प्रमाणपत्र समाप्ति तिथि
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <select class="form-control select2">
                                                <option value="0">Select</option>
                                                <option selected="selected">R.K Construction (23AAAAA0000A1Z5)</option>
                                            </select></td>
                                        <td><textarea class="form-control" rows="1" cols="2"></textarea></td>
                                        <td><input type="text" class="form-control" value="22AAAAA0000A1Z"/></td>
                                        <td><input type="text" class="form-control" value="TENDER245"/></td>
                                        <td><input type="text" class="form-control" value="20000"/></td>
                                        <td><input type="date" class="form-control" value="2021-02-05"/></td>
                                        <td><input type="date" class="form-control" value="2024-05-05"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
                     <fieldset>

                <legend>Project Order Details / परियोजना आदेश विवरण</legend>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
             <br />
                                            क्रमांक</th>
                                        <th>Project Order Date<br />
                                            परियोजना ऑर्डर दिनांक</th>
                                        <th>Project Order No.<br />
                                            परियोजना आदेश संख्या </th>
                                        <th>Upload Order Copy
                                        <br />
                                            ऑर्डर कॉपी अपलोड करें</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <input type="date" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>
                                   <%-- <tr>
                                        <td>2</td>
                                        <td>
                                            <input type="date" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
                       </fieldset>
            <fieldset>
                <legend>Project Documents / परियोजना दस्तावेज़</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center" id="Table1">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                            <br />
                                            क्रमांक</th>
                                        <th>Document Type<br />
                                            दस्तावेज़ प्रकार</th>
                                        <th>Document Type Details<br />
                                            दस्तावेज़ प्रकार विवरण</th>
                                        <th>Upload Document
                                            <br />
                                            दस्तावेज़ अपलोड करें</th>
                                                 <th>Action
                                           
                                            </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                         <td>
                                            <select class="form-control select2">
                                                <option value="0">Select</option>
                                               <option value="3">Technical	</option>
                                                <option value="3">Financial	</option>
                                              

                                            </select></td>

                                         <td>
                                            <select class="form-control select2">
                                                <option value="0">Select</option>
                                               <option value="3">Map</option>
                                                <option value="3">	Tender Copy</option>
                                                <option value="3">Cost Sheet	</option>
                                                <option value="3">Budget Approval	</option>

                                            </select></td>
                                       
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                        <td>
                                            <input type="button" class="btn-sm btn-success text-white" value="Add More"  /></td>
                                    </tr>

                                    <%--<tr>
                                        <td>2</td>
                                        <td>Technical</td>
                                        <td>Tender</td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Financial</td>
                                        <td>Cost Sheet</td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Financial</td>
                                        <td>Budget Approval</td>
                                        <td>
                                            <input type="file" class="form-control" /></td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Milestones / माइलस्टोन</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                            <br />
                                            क्रमांक</th>
                                        <th>Work  Name<br />
                                            कार्य  का नाम</th>
                                        <th>Work Completion Date<br />
                                            कार्य पूरा करने की दिनांक</th>
                                        <th>Work Completion %
                            <br />
                                            प्रतिशत
                                        </th>
                                        <th>Payment %<br />
                                            भुगतान प्रतिशत
                                        </th>
                                              <th>Action
                                           
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <select class="form-control select2">
                                                <option>Select</option>
                                                <option>इमारत मरम्मत</option>
                                                <option>हेंडपंप खनन</option>
                                                <option>सी.सी. सड़क निर्माण</option>
                                            </select></td>
                                        <td>
                                            <input type="date" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                       <td>
                                            <input type="button" class="btn-sm btn-success text-white" value="Add More"  onclick="funtShow()"/></td>
                                    </tr>

                                    <tr id="grid1" style="display:none">
                                        <td>2</td>
                                        <td>
                                            <select class="form-control select2">
                                                <option>Select</option>
                                                <option>इमारत मरम्मत</option>
                                                <option>हेंडपंप खनन</option>
                                                <option>सी.सी. सड़क निर्माण</option>
                                            </select></td>
                                        <td>
                                            <input type="date" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="button" class="btn-sm btn-success text-white " value="ADD" /></td>
                                    </tr>
                                    <tr id="grid2" style="display:none">
                                        <td>3</td>
                                        <td>
                                            <select class="form-control select2">
                                                <option>Select</option>
                                                <option>इमारत मरम्मत</option>
                                                <option>हेंडपंप खनन</option>
                                                <option>सी.सी. सड़क निर्माण</option>
                                            </select></td>
                                        <td>
                                            <input type="date" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="text" class="form-control" /></td>
                                        <td>
                                            <input type="button" class="btn-sm btn-success text-white" value="ADD" /></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

       

            <fieldset>
                <legend>Project Monitoring Authority / परियोजना निगरानी प्राधिकरण</legend>

                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Employee Id<br />
                                कर्मचारी आईडी दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" id="txtempid" placeholder="Enter OIS Code"  onchange="DIVShow()" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-end" id="NewField" >
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Name<br />
                                नाम
                            </label>
                            <input type="text" class="form-control" id="txtname" value="Niraj Verma"  readonly/>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation<br />
                                पद का नाम
                            </label>
                            <input type="text" class="form-control" id="txtDesignation" value="executive director"  readonly/>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Office Location<br />
                                कार्यालय स्थान
                            </label>
                            <input type="text" class="form-control" id="txtOffice" value="Bhopal" readonly />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Role
            <br />
                                भूमिका का चयन करें</label>

                            <select class="form-control select2" id="ddlrole">
                                <option>Select</option>
                                <option>Side Engg.</option>
                                <option>Inspection Officer</option>
                                <option>Purchase Officer</option>
                                <option>Auditor</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-6">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="addData2()">Add</button>
                        <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Clear</button>
                    </div>
                </div>
                <fieldset id="fielset" style="display: none">
                    <legend>Details / विवरण</legend>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center" id="table1">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                            <br />
                                                क्रमांक</th>
                                            <th>Name<br />
                                                नाम</th>
                                            <th>Designation<br />
                                                पद का नाम</th>
                                            <th>Office Location
                                            <br />
                                                कार्यालय स्थान</th>
                                            <th>Role
                               <br />
                                                भूमिका
                                            </th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody id="tbody"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" data-bs-dismiss="modal">Final Save</button>
                        </div>
                    </div>
                </fieldset>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function OnChange() {
            var ddlOfficeN = document.getElementById('ddlOfficeN');
            var Address = document.getElementById('txtAddress'); // Make sure this element exists

            txtAddress.style.display = 'block';

        }


        function  funtShow(){
            var grid1 = document.getElementById('grid1');
            var grid2 = document.getElementById('grid2');
            //grid1.style.display = "block";
            //grid2.style.display = "block";

        }
    </script>

    <script>
        function DIVShow() {
            var textbox = document.getElementById("txtempid").value;
            if (textbox === "emp1234") {
                document.getElementById('NewField').style.display = "";

            }
            //} else if (textbox === "123456") {
            //    document.getElementById('fielset1').style.display = "none";
            //    document.getElementById('fielset2').style.display = "block";
            //    document.getElementById("Show").style.display = 'block';
            //} 
            else {
                document.getElementById("Show").style.display = 'none';
            }
        }
    </script>

    <script>
        function addData2() {
            debugger;
            document.getElementById("fielset").style.display = 'block';
            let name = document.getElementById("txtname").value;
            let email = document.getElementById("txtDesignation").value;
            let mobile = document.getElementById("txtOffice").value;
            let PreviousGradea = document.getElementById("ddlrole").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById('table1');
            let newRow = table.getElementsByTagName('tbody')[0].insertRow();
            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 1;
            newRow.insertCell(1).innerHTML = name;
            newRow.insertCell(2).innerHTML = email;
            newRow.insertCell(3).innerHTML = mobile;
            newRow.insertCell(4).innerHTML = PreviousGradea;
            //newRow.insertCell(5).innerHTML = PreviousGradeab;
            //newRow.insertCell(6).innerHTML = PreviousGradec;
            //newRow.insertCell(7).innerHTML = PreviousGraded;
            //newRow.insertCell(8).innerHTML = PreviousGradee;
            //newRow.insertCell(9).innerHTML = Gradea;
            //newRow.insertCell(10).innerHTML = Gradeb;
            //newRow.insertCell(11).innerHTML = Gradec;
            //newRow.insertCell(12).innerHTML = Graded;
            //newRow.insertCell(13).innerHTML = Gradee;
            //newRow.insertCell(14).innerHTML = Gradef;
            //newRow.insertCell(15).innerHTML = Gradeg;
            //newRow.insertCell(16).innerHTML = Gradeh;
            //newRow.insertCell(17).innerHTML = Gradei;
            //newRow.insertCell(18).innerHTML = Gradej;
            //newRow.insertCell(19).innerHTML = Gradeklplp;
            //newRow.insertCell(20).innerHTML = Gradeklplphvj;
            //newRow.insertCell(21).innerHTML = Gradeklplphvasdsj;

            //const actionButtonTd = newRow.cells[20];
            //actionButtonTd.innerHTML += sghsgfhg;
            //newRow.insertCell(21);
            //const actionButtonTd = newRow.cells[21];
            //actionButtonTd.innerHTML += aidfujfh;
            //Add action field
            newRow.insertCell(5);
            const actionButtonTd = newRow.cells[5];
            actionButtonTd.innerHTML += '<a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a>';

            // Clear input fields after adding the row
            clearInputs2();
        };

        // Function to clear input fields after adding a row
        function clearInputs2() {
            let name = document.getElementById("txtAreaN").value;
            let email = document.getElementById("ddlWorkCat").value;
            let mobile = document.getElementById("ddlSubCat").value;
            let PreviousGradea = document.getElementById("txtWorkArea").value;
            let PreviousGradeab = document.getElementById("txtunit").value;
            let PreviousGradec = document.getElementById("txtInstallmentNo").value;
            let PreviousGraded = document.getElementById("txtCostAmt").value;
            let PreviousGradee = document.getElementById("ddlInstallment").value;
            let Gradea = document.getElementById("txtRelease").value;
            let Gradeb = document.getElementById("txtRemark").value;

            //document.getElementById("ddlPropertySource").value = "";
            //document.getElementById("txtPurchase").value = "";
            //document.getElementById("monumber").value = "";
            //document.getElementById("address").value = "";
        }
    </script>
</asp:Content>

