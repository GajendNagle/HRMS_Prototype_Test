<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="QualityControl.aspx.cs" Inherits="mis_Material_Master_QualityControl" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Quantity Control</li>
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
                            Material Quality Testing
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
                <legend>Material Quality Testing</legend>

                <div class="row align-items-end">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="projectNo">Select Project No</label>
                            <select id="projectNo" class="form-select select2" name="projectNo" onchange="fetchLaboratoryName()">
                                <option value="">Select Project No</option>
                                <option value="1001">1001</option>
                                <option value="1002">1002</option>
                                <option value="1003">1003</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="laboratoryName">Laboratory Name (Auto fetch)</label>
                            <input type="text" id="laboratoryName" placeholder="Laboratory Name (Auto fetch)" class="form-control" name="laboratoryName" readonly />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="testingSubject">Enter Sample Testing Subject</label>
                            <input type="text" id="testingSubject" class="form-control" placeholder="Enter Sample Testing Subject" name="testingSubject" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialName">Select Material Name</label>
                            <select id="materialName" class="form-select select2" name="materialName" onchange="fetchMaterialDetails()">
                                <option value="">Select Material</option>
                                <option value="Cement">Cement</option>
                                <option value="Steel Bar">Steel Bar</option>
                                <option value="Sand">Sand</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialCode">Material ID/Code (Auto fetch)</label>
                            <input type="text" class="form-control" placeholder="Material ID/Code (Auto fetch)" id="materialCode" name="materialCode" readonly />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialUnit">Material Unit (Auto fetch)</label>
                            <input type="text" class="form-control" id="materialUnit" name="materialUnit" placeholder="e.g., kg, meter, ton" readonly />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialDescription">Material Description (Auto fetch)</label>
                            <input type="text" class="form-control" id="materialDescription" name="materialDescription" placeholder="e.g., Portland Cement" readonly />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="projectLocation">Enter Project Location</label>
                            <input type="text" id="projectLocation" class="form-control" name="projectLocation" placeholder="Enter the project location" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="natureOfSample">Nature Of Sample (Auto fetch)</label>
                            <input type="text" id="natureOfSample" class="form-control" name="natureOfSample" placeholder="e.g., Fresh, Stored" readonly />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="quantityOfSample">Enter Quantity of Sample</label>
                            <input type="number" class="form-control" id="quantityOfSample" name="quantityOfSample" placeholder="Enter the sample quantity" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="sampleReceiveDate">Sample Receive Date</label>
                            <input type="date" class="form-control" id="sampleReceiveDate" name="sampleReceiveDate" placeholder="Select the sample receive date" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfCasting">Date of Casting</label>
                            <input type="date" class="form-control" id="dateOfCasting" name="dateOfCasting" placeholder="Select the date of casting" />
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="addData2()"">Add</button>
                        <a href="QualityControl.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fielset" style="display: none">
                <legend>Details / विवरण</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center" id="table1">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Project No</th>
                                        <th>Laboratory Name</th>
                                        <th>Testing Subject</th>
                                        <th>Material Name</th>
                                        <th>Material ID/Code</th>
                                        <th>Material Unit</th>
                                        <th>Material Description</th>
                                        <th>Project Location</th>
                                        <th>Nature of Sample</th>
                                        <th>Quantity of Sample</th>
                                        <th>Sample Receive Date</th>
                                        <th>Date of Casting</th>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                </tbody>

                            </table>
                        </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="ShowHide()">Save</button>
            <a href="QualityControl.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
        </div>
    </div>
    </fieldset>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
     <script>
         // Function to add data to the table
         function addData2() {
             const projectNo = document.getElementById('projectNo').value;
             const laboratoryName = document.getElementById('laboratoryName').value;
             const testingSubject = document.getElementById('testingSubject').value;
             const materialName = document.getElementById('materialName').value;
             const materialCode = document.getElementById('materialCode').value;
             const materialUnit = document.getElementById('materialUnit').value;
             const materialDescription = document.getElementById('materialDescription').value;
             const projectLocation = document.getElementById('projectLocation').value;
             const natureOfSample = document.getElementById('natureOfSample').value;
             const quantityOfSample = document.getElementById('quantityOfSample').value;
             const sampleReceiveDate = document.getElementById('sampleReceiveDate').value;
             const dateOfCasting = document.getElementById('dateOfCasting').value;

             // Add new row to the table
             const table = document.getElementById("tbody");
             const newRow = table.insertRow();

             newRow.innerHTML = `
                <td>${projectNo}</td>
                <td>${laboratoryName}</td>
                <td>${testingSubject}</td>
                <td>${materialName}</td>
                <td>${materialCode}</td>
                <td>${materialUnit}</td>
                <td>${materialDescription}</td>
                <td>${projectLocation}</td>
                <td>${natureOfSample}</td>
                <td>${quantityOfSample}</td>
                <td>${sampleReceiveDate}</td>
                <td>${dateOfCasting}</td>
            `;

             // Show the table by displaying the fieldset
             document.getElementById('fielset').style.display = 'block';
         }

         // Function to show/hide the fieldset when "Save" is clicked
         function ShowHide() {
             const fieldset = document.getElementById('fielset');
             fieldset.style.display = (fieldset.style.display === 'none') ? 'block' : 'none';
         }
    </script>
    <script>
        // Function to simulate fetching laboratory name based on project number
        function fetchLaboratoryName() {
            const projectNo = document.getElementById("projectNo").value;
            const laboratoryName = document.getElementById("laboratoryName");
            if (projectNo === "1001") {
                laboratoryName.value = "XYZ Lab";
            } else if (projectNo === "1002") {
                laboratoryName.value = "ABC Lab";
            } else if (projectNo === "1003") {
                laboratoryName.value = "DEF Lab";
            } else {
                laboratoryName.value = "";
            }
        }

        // Function to simulate fetching material details based on material name
        function fetchMaterialDetails() {
            const materialName = document.getElementById("materialName").value;
            const materialCode = document.getElementById("materialCode");
            const materialUnit = document.getElementById("materialUnit");
            const materialDescription = document.getElementById("materialDescription");

            if (materialName === "Cement") {
                materialCode.value = "CEM1234";
                materialUnit.value = "kg";
                materialDescription.value = "Portland Cement";
            } else if (materialName === "Steel Bar") {
                materialCode.value = "STB5678";
                materialUnit.value = "meter";
                materialDescription.value = "Reinforced Steel Bar";
            } else if (materialName === "Sand") {
                materialCode.value = "SND0012";
                materialUnit.value = "ton";
                materialDescription.value = "Fine River Sand";
            } else {
                materialCode.value = "";
                materialUnit.value = "";
                materialDescription.value = "";
            }
        }
    </script>
    

</asp:Content>

