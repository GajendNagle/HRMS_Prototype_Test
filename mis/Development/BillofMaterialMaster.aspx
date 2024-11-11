<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BillofMaterialMaster.aspx.cs" Inherits="mis_Development_BillofMaterialMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')">
                                <span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Bill of Material Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Bill of Material</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Material Details</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Material Name<span style="color: red">*</span></label>
                            <input type="text" id="Name" class="form-control" autocomplete="off" placeholder="Enter Material Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Unit Name<span style="color: red">*</span></label>
                            <select type="text" required="required" id="Unit" class="form-select select2" autocomplete="off" placeholder="Enter Material Unit">
                                <option value="select">Select</option>
                                <option value="kg">Kilograms (kg)</option>
                                <option value="ton">Tons (T)</option>
                                <option value="m3">Cubic Meter (m³)</option>
                                <option value="m2">Square Meter (m²)</option>
                                <option value="liter">Liter (L)</option>
                                <option value="piece">Piece</option>
                                <option value="unit">Unit</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Material ID/Code  <span style="color: red">*</span></label>
                            <input type="text" id="Code" class="form-control" autocomplete="off" placeholder="Enter Material ID/Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Material Type<span style="color: red">*</span></label>
                            <select class="form-select select2" id="type" required>
                                <option value="">Select Material Type</option>
                                <option value="gradeCement">Grade Cement</option>
                                <option value="fineRiverSand">Fine River Sand</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                               Enter Brand Name<span style="color: red">*</span></label>
                            <input type="text" id="Brand" class="form-control" autocomplete="off" placeholder="Enter Brand Name" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Material Description <span style="color: red">*</span></label>
                            <textarea class="form-control" id="Description" rows="1" autocomplete="off" placeholder=" Enter Material Description "></textarea>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="button" class="btn-sm btn-success text-white" value="Add" onclick="addDataA()" />
                        </div>
                    </div>
                </div>
                <fieldset id="fielsetA" style="display: none">
                    <legend>Details / विवरण</legend>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center" id="TableA">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Material Unit</th>
                                            <th>Material Name</th>
                                            <th>Material ID/Code</th>
                                            <th>Material Type</th>
                                            <th>Brand Name</th>
                                            <th>Material Description </th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbodyA"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </fieldset>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg">Save</button>
                    <a href="BillofMaterialMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function addDataA() {
            // Ensure the table is visible
            document.getElementById("fielsetA").style.display = 'block';

            // Get the values from the form
            let materialName = document.getElementById("Name").value;
            let materialCode = document.getElementById("Code").value;
            let unit = document.getElementById("Unit").value;
            let materialType = document.getElementById("type").value;
            let brandName = document.getElementById("Brand").value;
            let description = document.getElementById("Description").value;

            // Validate that required fields are filled
            if (!materialName || !materialCode || !unit || !materialType || !brandName || !description) {
                alert('Please fill all the required fields.');
                return;
            }

            // Get the table and insert a new row
            let table = document.getElementById('TableA');
            let tbody = table.getElementsByTagName('tbody')[0];

            // Insert a new row at the end of the table
            let newRow = tbody.insertRow();

            // Insert data into the new row
            newRow.insertCell(0).innerHTML = tbody.rows.length; // Serial Number
            newRow.insertCell(1).innerHTML = unit;
            newRow.insertCell(2).innerHTML = materialName;
            newRow.insertCell(3).innerHTML = materialCode;
            newRow.insertCell(4).innerHTML = materialType;
            newRow.insertCell(5).innerHTML = brandName;
            newRow.insertCell(6).innerHTML = description;

            // Add action buttons (Edit/Delete)
            let actionCell = newRow.insertCell(7);
            actionCell.innerHTML = '<a class="Alert-Edit" href="javascript:void(0);" onclick="editRow(this)"><i class="fa fa-pen"></i></a> | <a class="Alert-Delete" href="javascript:void(0);" onclick="deleteRow(this)"><i class="fa fa-trash"></i></a>';

            // Clear the input fields after adding the row
            document.getElementById("Name").value = '';
            document.getElementById("Code").value = '';
            document.getElementById("Unit").value = 'select';
            document.getElementById("type").value = '';
            document.getElementById("Brand").value = '';
            document.getElementById("Description").value = '';
        }

        // Edit Row Function
        function editRow(button) {
            // Get the row index
            let row = button.parentNode.parentNode;
            let cells = row.getElementsByTagName('td');

            // Fill input fields with the selected row's data
            document.getElementById("Name").value = cells[2].innerHTML;
            document.getElementById("Code").value = cells[3].innerHTML;
            document.getElementById("Unit").value = cells[1].innerHTML;
            document.getElementById("type").value = cells[4].innerHTML;
            document.getElementById("Brand").value = cells[5].innerHTML;
            document.getElementById("Description").value = cells[6].innerHTML;

            // Optionally remove the row from table or flag it for editing
            row.remove();
        }

        // Delete Row Function
        function deleteRow(button) {
            let row = button.parentNode.parentNode;
            row.remove();
        }
    </script>
</asp:Content>
