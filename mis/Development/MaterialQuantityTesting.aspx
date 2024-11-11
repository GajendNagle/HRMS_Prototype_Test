<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MaterialQuantityTesting.aspx.cs" Inherits="mis_Material_Master_MaterialQuantityTesting" %>

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
                            Material Quality Testing Status Update 
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
                <legend>Material Quality Testing Status Update</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="projectNo" class="form-label">Select Project No</label>
                            <select class="form-select" id="projectNo" onchange="autoFetchData()" required>
                                <option value="">Select Project</option>
                                <option value="P001">Project 001</option>
                                <option value="P002">Project 002</option>
                                <option value="P003">Project 003</option>
                            </select>
                        </div>
                    </div>

                    <!-- Laboratory Name (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="labName" class="form-label">Enter Laboratory Name</label>
                            <input type="text" class="form-control" id="labName" disabled placeholder="Enter Laboratory Name" />
                        </div>
                    </div>

                    <!-- Sample Testing Subject (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="testingSubject" class="form-label">Sample Testing Subject</label>
                            <input type="text" class="form-control" id="testingSubject" disabled placeholder="Sample Testing Subject" />
                        </div>
                    </div>

                    <!-- Material Name (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialName" class="form-label">Select Material Name</label>
                            <select class="form-select" id="materialName" onchange="autoFetchMaterialDetails()" required>
                                <option value="">Select Material</option>
                                <option value="Cement">Cement</option>
                                <option value="Sand">Sand</option>
                                <option value="Steel">Steel</option>
                            </select>
                        </div>
                    </div>

                    <!-- Material ID/Code (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialId" class="form-label">Material ID/Code</label>
                            <input type="text" class="form-control" id="materialId" disabled placeholder="Enter Material ID/Code" />
                        </div>
                    </div>

                    <!-- Material Unit (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialUnit" class="form-label">Material Unit</label>
                            <input type="text" class="form-control" id="materialUnit" disabled placeholder="Enter Material Unit" />
                        </div>
                    </div>

                    <!-- Material Description (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="materialDescription" class="form-label">Material Description</label>
                            <input type="text" class="form-control" id="materialDescription" disabled placeholder="Enter Material Description" />
                        </div>
                    </div>

                    <!-- Project Location (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="projectLocation" class="form-label">Enter Project Location</label>
                            <input type="text" class="form-control" id="projectLocation" disabled placeholder="Enter Project Location" />
                        </div>
                    </div>

                    <!-- Nature of Sample (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="natureOfSample" class="form-label">Nature of Sample</label>
                            <input type="text" class="form-control" id="natureOfSample" disabled placeholder="Enter Nature of Sample" />
                        </div>
                    </div>

                    <!-- Quantity of Sample (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="quantityOfSample" class="form-label">Enter Quantity of Sample</label>
                            <input type="number" class="form-control" id="quantityOfSample" disabled placeholder="Enter Quantity of Sample" />
                        </div>
                    </div>

                    <!-- Sample Receive Date (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="sampleReceiveDate" class="form-label">Sample Receive Date</label>
                            <input type="text" class="form-control" id="sampleReceiveDate" disabled placeholder="Enter Sample Receive Date" />
                        </div>
                    </div>

                    <!-- Date of Casting (Auto Fetch) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfCasting" class="form-label">Date of Casting</label>
                            <input type="text" class="form-control" id="dateOfCasting" disabled placeholder="Enter Date of Casting" />
                        </div>
                    </div>

                    <!-- LAB Sample ID -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="labSampleId" class="form-label">Enter LAB Sample ID</label>
                            <input type="text" class="form-control" id="labSampleId" required placeholder="Enter LAB Sample ID" />
                        </div>
                    </div>

                    <!-- Date of Testing (Calendar Picker) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="dateOfTesting" class="form-label">Date of Testing</label>
                            <input type="date" class="form-control" id="dateOfTesting" required placeholder="Enter Date of Testing" />
                        </div>
                    </div>

                    <!-- Lab IS ID -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="labIsId" class="form-label">Enter Lab IS ID</label>
                            <input type="text" class="form-control" id="labIsId" required placeholder="Enter Lab IS ID" />
                        </div>
                    </div>

                    <!-- Upload Lab Report -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="labReport" class="form-label">Upload Lab Report</label>
                            <input type="file" class="form-control" id="labReport" placeholder="Upload Lab Report" />
                        </div>
                    </div>

                    <!-- Status (Pass/Fail) -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Status</label>
                            <select class="form-select select2">
                                <option value="">Select Status</option>
                                <option value="Pass">Pass</option>
                                <option value="Fail">Fail</option>
                            </select>
                        </div>
                    </div>


                </div>
                <hr />
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display='block'">Save</button>
                    <a href="MaterialQuantityTesting.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>
            <fieldset id="table1" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
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
                                        <th>LAB Sample ID</th>
                                        <th>Date of Testing</th>
                                        <th>Lab IS ID</th>
                                        <th>Status</th>
                                        <th>Lab Report</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1001</td>
                                        <td>XYZ Lab</td>
                                        <td>Concrete</td>
                                        <td>Cement</td>
                                        <td>CEM1234</td>
                                        <td>kg</td>
                                        <td>Portland Cement</td>
                                        <td>Building Site 1</td>
                                        <td>Fresh Sample</td>
                                        <td>50 kg</td>
                                        <td>2024-10-01</td>
                                        <td>2024-10-02</td>
                                        <td>LABC1234</td>
                                        <td>2024-10-03</td>
                                        <td>IS123</td>
                                        <td>Completed</td>
                                        <td>Report 001</td>
                                    </tr>
                                    <tr>
                                        <td>1002</td>
                                        <td>ABC Lab</td>
                                        <td>Steel</td>
                                        <td>Steel Bar</td>
                                        <td>STB5678</td>
                                        <td>meter</td>
                                        <td>Reinforced Steel Bar</td>
                                        <td>Construction Yard</td>
                                        <td>Stored Sample</td>
                                        <td>100 bars</td>
                                        <td>2024-10-05</td>
                                        <td>2024-10-06</td>
                                        <td>LABS5678</td>
                                        <td>2024-10-07</td>
                                        <td>IS124</td>
                                        <td>Testing</td>
                                        <td>Report 002</td>
                                    </tr>
                                    <tr>
                                        <td>1003</td>
                                        <td>DEF Lab</td>
                                        <td>Concrete</td>
                                        <td>Sand</td>
                                        <td>SND0012</td>
                                        <td>ton</td>
                                        <td>Fine River Sand</td>
                                        <td>Construction Site</td>
                                        <td>Fresh Sample</td>
                                        <td>10 tons</td>
                                        <td>2024-10-08</td>
                                        <td>2024-10-09</td>
                                        <td>LABS0012</td>
                                        <td>2024-10-10</td>
                                        <td>IS125</td>
                                        <td>Completed</td>
                                        <td>Report 003</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        // Auto fetch data for the selected project
        function autoFetchData() {
            let projectNo = document.getElementById('projectNo').value;

            if (projectNo === 'P001') {
                document.getElementById('labName').value = 'Lab A';
                document.getElementById('testingSubject').value = 'Concrete Testing';
                document.getElementById('projectLocation').value = 'Location A';
                document.getElementById('natureOfSample').value = 'Concrete Sample';
                document.getElementById('quantityOfSample').value = '50';
                document.getElementById('sampleReceiveDate').value = '2023-11-01';
                document.getElementById('dateOfCasting').value = '2023-11-01';
            } else if (projectNo === 'P002') {
                document.getElementById('labName').value = 'Lab B';
                document.getElementById('testingSubject').value = 'Soil Testing';
                document.getElementById('projectLocation').value = 'Location B';
                document.getElementById('natureOfSample').value = 'Soil Sample';
                document.getElementById('quantityOfSample').value = '100';
                document.getElementById('sampleReceiveDate').value = '2023-11-05';
                document.getElementById('dateOfCasting').value = '2023-11-06';
            }
            // More conditions can be added for other projects
        }

        // Auto fetch material details
        function autoFetchMaterialDetails() {
            let materialName = document.getElementById('materialName').value;

            if (materialName === 'Cement') {
                document.getElementById('materialId').value = 'CMT001';
                document.getElementById('materialUnit').value = 'kg';
                document.getElementById('materialDescription').value = 'Portland Cement';
            } else if (materialName === 'Sand') {
                document.getElementById('materialId').value = 'SND001';
                document.getElementById('materialUnit').value = 'm³';
                document.getElementById('materialDescription').value = 'Fine River Sand';
            } else if (materialName === 'Steel') {
                document.getElementById('materialId').value = 'STL001';
                document.getElementById('materialUnit').value = 'kg';
                document.getElementById('materialDescription').value = 'Reinforced Steel';
            }
            // Add more conditions for other materials
        }
    </script>

</asp:Content>

