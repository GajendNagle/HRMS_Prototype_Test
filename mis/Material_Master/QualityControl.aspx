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
                            <label>
                                Select Project No.
                            </label>
                            <select class="form-control select2">
                                <option value="3">PR0001</option>
                                <option value="3">PR0002</option>
                                <option value="3">PR0003</option>
                                <option value="3">PR0004</option>
                                <option value="3">PR0005</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Material Name<span style="color: red">*</span></label>
                            <select type="text" id="Name" class="form-select select2" autocomplete="off" placeholder="Enter Material Name">
                                <option>Cement</option>
                                <option>Sand</option>
                                <option>Steel</option>
                                <option>Bricks</option>
                                <option>Concrete</option>
                                <option>Tiles</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Material ID/Code <span style="color: red">*</span></label>
                            <input type="text" id="Code" class="form-control" autocomplete="off" readonly placeholder="MAT004 - Cement" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Material Unit<span style="color: red">*</span></label>
                            <input type="text" readonly id="Unit" class="form-control" autocomplete="off" placeholder="Tons (T)" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Approved Brand/Company Name<span style="color: red">*</span></label>
                            <input type="text" id="Brand" class="form-control" autocomplete="off" readonly placeholder="Brand003 - DEF Industries" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Material Description <span style="color: red">*</span></label>
                            <textarea class="form-control" id="Description" rows="1" autocomplete="off" placeholder=" Enter Material Description "></textarea>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Laboratory Name
                            </label>
                            <select class="form-control select2">
                                <option>Ambile Testing and Research Labs</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Material Name 
                            </label>
                            <select class="form-control select2" id="materialn">
                                <option value="0">Select</option>
                                <option value="Cement">Cement </option>
                                <option value="Glass Windows">Glass Windows</option>
                                <option value="Glass Windows">Concrete </option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Material quantity  
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Material quantity  " id="materialQuantity" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Material Collection Date  
                            </label>
                            <input type="date" class="form-control" id="collectiondate" />
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="addData2()">Add</button>
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
                                        <th>Sr.No.
                                        </th>
                                        <th>Material Name 
                                        </th>
                                        <th>Material quantity 
                                        </th>
                                        <th>Material Collection Date 
                                        </th>
                                        <th>Status</th>
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
        function addData2() {
            // Show the fieldset (assuming it's for displaying data)
            document.getElementById("fielset").style.display = 'block';

            // Get the values from input fields
            let name = document.getElementById("materialn").value;
            let email = document.getElementById("materialQuantity").value;
            let mobile = document.getElementById("collectiondate").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById('table1');
            let newRow = table.getElementsByTagName('tbody')[0].insertRow();

            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 1; // Row number
            newRow.insertCell(1).innerHTML = name;                   // Name
            newRow.insertCell(2).innerHTML = email;                  // Email
            newRow.insertCell(3).innerHTML = mobile;                 // Mobile

            // Add actions (Edit and Delete buttons) in the last cell
            let actionButtonTd = newRow.insertCell(4);
            actionButtonTd.innerHTML = '<a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a>';

            // Clear input fields after adding the row
            clearInputs2();
        };

        // Function to clear input fields after adding a row
        function clearInputs2() {
            // Clear values of the input fields
            document.getElementById("materialn").value = '';
            document.getElementById("materialQuantity").value = '';
            document.getElementById("collectiondate").value = '';
        };
    </script>

</asp:Content>

