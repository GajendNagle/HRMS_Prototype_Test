<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProgressMilestone.aspx.cs" Inherits="mis_Material_Master_ProgressMilestone" %>

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
                        <li class="breadcrumb-item">Progress Millstone Monitoring</li>
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
                            Technical Millstone Process 
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
                <legend>Technical Millstone Process</legend>

                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Project Number</label>
                            <select class="form-control select2" id="ProjectNo" onchange="autoPopulateFields();">
                                <option value="0">Select</option>
                                <option value="1">PR0001</option>
                                <option value="2">PR0002</option>
                                <option value="3">PR0003</option>
                                <option value="4">PR0004</option>
                                <option value="5">PR0005</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3" id="labName">
                        <div class="form-group">
                            <label>Laboratory Name</label>
                            <input type="text" class="form-control" id="labNameInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="sampleTestingSubject">
                        <div class="form-group">
                            <label>Sample Testing Subject</label>
                            <input type="text" class="form-control" id="sampleTestingInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="materialName">
                        <div class="form-group">
                            <label>Select Material Name</label>
                            <input type="text" class="form-control" id="materialNameInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="materialId">
                        <div class="form-group">
                            <label>Material ID/Code</label>
                            <input type="text" class="form-control" id="materialIdInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="materialUnit">
                        <div class="form-group">
                            <label>Material Unit</label>
                            <input type="text" class="form-control" id="materialUnitInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="materialDesc">
                        <div class="form-group">
                            <label>Material Description</label>
                            <input type="text" class="form-control" id="materialDescInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="projectLocation">
                        <div class="form-group">
                            <label>Enter Project Location</label>
                            <input type="text" class="form-control" id="projectLocationInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="natureSample">
                        <div class="form-group">
                            <label>Nature of Sample</label>
                            <input type="text" class="form-control" id="natureSampleInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="sampleQuantity">
                        <div class="form-group">
                            <label>Enter Quantity of Sample</label>
                            <input type="number" class="form-control" id="sampleQuantityInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="sampleReceiveDate">
                        <div class="form-group">
                            <label>Sample Receive Date</label>
                            <input type="date" class="form-control" id="sampleReceiveDateInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="castingDate">
                        <div class="form-group">
                            <label>Date of Casting</label>
                            <input type="date" class="form-control" id="castingDateInput" readonly />
                        </div>
                    </div>

                    <div class="col-md-3" id="labSampleId">
                        <div class="form-group">
                            <label>Enter LAB Sample ID</label>
                            <input type="text" class="form-control" id="labSampleIdInput" />
                        </div>
                    </div>

                    <div class="col-md-3" id="testingDate">
                        <div class="form-group">
                            <label>Date of Testing</label>
                            <input type="date" class="form-control" id="testingDateInput" />
                        </div>
                    </div>

                    <div class="col-md-3" id="labIsId">
                        <div class="form-group">
                            <label>Enter Lab IS ID</label>
                            <input type="text" class="form-control" id="labIsIdInput" />
                        </div>
                    </div>

                    <div class="col-md-3" id="uploadLabReport">
                        <div class="form-group">
                            <label>Upload Lab Report</label>
                            <input type="file" class="form-control" id="uploadLabReportInput" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Status</label>
                            <select class="form-select select2" id="statusSelect">
                                <option>Select</option>
                                <option>Pass</option>
                                <option>Fail</option>
                            </select>
                        </div>
                    </div>


                </div>

                <hr />
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display='block'">Save</button>
                    <a href="ProgressMilestone.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>Sr.No.
                                        </th>
                                        <th>Project No.
                                        </th>
                                        <th>Order Date<br />
                                        </th>
                                        <th>Order No
                                        </th>
                                        <th>RFP No
                              
                                        </th>
                                        <th>RFP Date
                              
                                        </th>
                                        <th>Millstone
                              
                                        </th>
                                        <th>Millstone</th>
                                        <th>Work Completion Date</th>
                                        <th>Work Completion %</th>
                                        <th>Visit Date
                              
                                        </th>
                                        <th>Completion %</th>
                                        <th>Work Millstone Status</th>
                                        <th>View Document<br />
                                        </th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>PR0001</td>
                                    <td>02/05/2024</td>
                                    <td>ORD2345</td>
                                    <td>RFP004</td>
                                    <td>03/05/2024</td>
                                    <td>Technical</td>
                                    <td>Building Foundation</td>
                                    <td>05/09/2024</td>
                                    <td>50%</td>
                                    <td>21/04/2024</td>
                                    <td>50%</td>
                                    <td>Pending</td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                    <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-edit"></i></span>
                                        <span class="btn btn-outline-danger"><i class="fa fa-trash"></i></span></td>
                                </tr>


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
        // Sample data for the projects (can be fetched from an API or database)
        const projectData = {
            1: {
                labName: "Lab A",
                sampleTestingSubject: "Concrete Strength Test",
                materialName: "Cement",
                materialId: "CEM123",
                materialUnit: "Kg",
                materialDesc: "High-Quality Cement",
                projectLocation: "Project Location A",
                natureSample: "Solid",
                sampleQuantity: 100,
                sampleReceiveDate: "2024-01-15",
                castingDate: "2024-01-20",
                labSampleId: "LAB-001",
                testingDate: "2024-02-05",
                labIsId: "IS-001",
                status: "Pass"
            },
            2: {
                labName: "Lab B",
                sampleTestingSubject: "Soil Test",
                materialName: "Sand",
                materialId: "SND456",
                materialUnit: "Ton",
                materialDesc: "Fine Sand",
                projectLocation: "Project Location B",
                natureSample: "Granular",
                sampleQuantity: 50,
                sampleReceiveDate: "2024-02-10",
                castingDate: "2024-02-15",
                labSampleId: "LAB-002",
                testingDate: "2024-03-01",
                labIsId: "IS-002",
                status: "Fail"
            },
            // Add more projects as needed...
        };

        function autoPopulateFields() {
            const projectNo = document.getElementById('ProjectNo').value;

            // Clear previous values
            if (projectNo !== "0") {
                document.getElementById('labNameInput').value = projectData[projectNo].labName || '';
                document.getElementById('sampleTestingInput').value = projectData[projectNo].sampleTestingSubject || '';
                document.getElementById('materialNameInput').value = projectData[projectNo].materialName || '';
                document.getElementById('materialIdInput').value = projectData[projectNo].materialId || '';
                document.getElementById('materialUnitInput').value = projectData[projectNo].materialUnit || '';
                document.getElementById('materialDescInput').value = projectData[projectNo].materialDesc || '';
                document.getElementById('projectLocationInput').value = projectData[projectNo].projectLocation || '';
                document.getElementById('natureSampleInput').value = projectData[projectNo].natureSample || '';
                document.getElementById('sampleQuantityInput').value = projectData[projectNo].sampleQuantity || '';
                document.getElementById('sampleReceiveDateInput').value = projectData[projectNo].sampleReceiveDate || '';
                document.getElementById('castingDateInput').value = projectData[projectNo].castingDate || '';
                document.getElementById('labSampleIdInput').value = projectData[projectNo].labSampleId || '';
                document.getElementById('testingDateInput').value = projectData[projectNo].testingDate || '';
                document.getElementById('labIsIdInput').value = projectData[projectNo].labIsId || '';
                document.getElementById('statusSelect').value = projectData[projectNo].status || 'Select';
            }
        }

    </script>
</asp:Content>

