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
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <%--   <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>--%>
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
    <%--  <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>--%>
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
              <div class="row align-items-end    ">
                  <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Material Name<span style="color: red">*</span></label>
                           <input type="text" id="Code" class="form-control" autocomplete="off"  placeholder="Enter Material Name" />
                         <%-- <select type="text" id="Name" class="form-select select2" autocomplete="off" placeholder="Enter Material Name">
                              <option value="">Select</option>
                              <option>Cement</option>
                              <option>Sand</option>
                              <option>Steel</option>
                              <option>Bricks</option>
                              <option>Concrete</option>
                              <option>Tiles</option>
                          </select>--%>
                      </div>
                  </div>
                  <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Material ID/Code <span style="color: red">*</span></label>
                          <input type="text" id="Code" class="form-control" autocomplete="off"  placeholder="MAT004 - Cement" />
                      </div>
                  </div>
                  <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Material Unit<span style="color: red">*</span></label>

                        <%--  <input type="text"  id="Unit" class="form-control" autocomplete="off" placeholder="Tons (T)" />--%>
                           <select type="text" required="required" id="Unit" class="form-select select2" autocomplete="off" placeholder="Enter Material Unit">
                              <option value="select">Select</option>
                              <option value="kg">Kilograms (kg)</option>
                              <option value="ton"  >Tons (T)</option>
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
                              Enter Approved Brand/Company Name<span style="color: red">*</span></label>
                          <input type="text" id="Brand" class="form-control" autocomplete="off"  placeholder="Brand003 - DEF Industries" />
                      </div>
                  </div>
                  <%-- <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Material ID/Code <span style="color: red">*</span></label>
                          <select type="text"  id="Code" class="form-select select2" autocomplete="off" placeholder="Enter Material ID/Code">
                              <option value="">Select</option>
                              <option value="MAT001" selected="selected">MAT001 - Concrete</option>
                              <option value="MAT002">MAT002 - Steel</option>
                              <option value="MAT003">MAT003 - Bricks</option>
                              <option value="MAT004">MAT004 - Cement</option>
                              <option value="MAT005">MAT005 - Sand</option>
                              <option value="MAT006">MAT006 - Gravel</option>
                              <option value="MAT007">MAT007 - Paint</option>
                          </select>
                      </div>
                  </div>
                  <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Material Unit<span style="color: red">*</span></label>
                          <select type="text" required="required" id="Unit" class="form-select select2" autocomplete="off" placeholder="Enter Material Unit">
                              <option value="select">select</option>
                              <option value="kg">Kilograms (kg)</option>
                              <option value="ton"  selected="selected">Tons (T)</option>
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
                              Enter Approved Brand/Company Name<span style="color: red">*</span></label>
                          <select type="text" required="required" id="Brand" class="form-select select2" autocomplete="off" placeholder="Approved Brand/Company Name">
                              <option value="">Select</option>
                              <option value="Brand001">Brand001 - XYZ Corp</option>
                              <option value="Brand002">Brand002 - ABC Ltd.</option>
                              <option value="Brand003"  selected="selected">Brand003 - DEF Industries</option>
                              <option value="Brand004">Brand004 - GHI Supplies</option>
                              <option value="Brand005">Brand005 - JKL Enterprises</option>
                              <option value="Brand006">Brand006 - MNO Manufacturing</option>
                              <option value="Brand007">Brand007 - PQR Technologies</option>
                          </select>
                      </div>
                  </div>--%>




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
                                          <th>Material Name</th>
                                          <th>Material ID/Code</th>
                                          <th>Material Unit</th>
                                          <th>Approved Brand/Company Name</th>
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
          <%--<fieldset>
              <legend>Quantity Requirements</legend>
              <div class="row align-items-end    ">
                  <%-- <div class="col-md-4">
                      <div class="form-group">
                          <label>
                              Enter Total Quantity per Project<span style="color: red">*</span></label>
                          <input type="number" id="Quantity" class="form-control" autocomplete="off" placeholder="Enter Quantity per Project" />
                      </div>
                  </div>--%>
                 <%-- <div class="col-md-6">
                      <div class="form-group">
                          <label>
                              Enter Total Project Quantity<span style="color: red">*</span></label>
                          <input type="number" id="Project" class="form-control" autocomplete="off" placeholder=" Enter Total Project Quantity" />
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="form-group">
                          <label>
                              Enter Buffer Quantity<span style="color: red">*</span></label>
                          <input type="number" id="Buffer" class="form-control" autocomplete="off" placeholder="Enter Buffer Quantity" />
                      </div>
                  </div>
              </div>

          </fieldset>--%>
          <%--<fieldset>
              <legend>Supplier Details</legend>
              <div class="row align-items-end">
                  <%--   <div class="col-md-3">
    <div class="form-group">
        <label>
            Enter Supplier Name
   <span style="color: red;">*</span>
        </label>
        <input type="text" class="form-control" placeholder="Enter Supplier Name" id="txtSupplierName" />
    </div>
</div>--%>

              <%--    <div class="col-md-3">
                      <div class="form-group">

                          <label>
                              Enter Material Supplier Name<span style="color: red; font-weight: bold">*</span>
                          </label>
                          <input type="text" class="form-control" placeholder=" Enter Material Supplier Name" />


                      </div>
                  </div>

                  <div class="col-md-3">
                      <div class="form-group">

                          <label>
                              Enter Supplier Code<span style="color: red; font-weight: bold">*</span>
                          </label>
                          <input type="text" class="form-control" placeholder=" Enter Supplier Code" />

                      </div>
                  </div>
                  <div class="col-md-3">
                      <div class="form-group">
                          <label>
                              Enter Lead Time
                              <span style="color: red;">*</span>
                          </label>
                          <input type="time" class="form-control" placeholder=" Enter Lead Time" id="txtSupplierName" />
                      </div>
                  </div>
                  <div class="col-md-3">
                      <div class="form-group">

                          <label>
                              Select  Procurement Status
                          </label>
                          <select class="select2">
                              <option>Select</option>
                              <option value="pending">Pending</option>
                              <option value="approved">Approved</option>
                              <option value="delivered">Delivered</option>
                          </select>
                      </div>
                  </div>
              </div>
          </fieldset>--%>
                     <%--  <fieldset>
               <legend>Procurement Status</legend>
               <div class="row align-items-end">
                   <div class="col-md-4">
                       <div class="form-group">
                           <label>
                               Enter Material Required Date
             <span style="color: red;">*</span>
                           </label>
                           <input type="date" class="form-control" placeholder=" Enter Lead Time" />
                       </div>
                   </div>
                   <div class="col-md-4">
                       <div class="form-group">
                           <label>
                               Enter Duration of Use
                               <span style="color: red;">*</span>
                           </label>
                           <input type="text" class="form-control" placeholder="Enter Duration of Use" />
                       </div>
                   </div>
                   <div class="col-md-4">
                       <div class="form-group">
                           <label>
                               Enter Delivery Schedule
  <span style="color: red;">*</span>
                           </label>
                           <input type="text" class="form-control" placeholder="Enter Delivery Schedule" />
                       </div>
                   </div>
               </div>
           </fieldset>
           <fieldset>
               <legend>Notes and Remarks </legend>
               <div class="row align-items-end">
                   <div class="col-md-6">
                       <div class="form-group">
                           <label>
                               Enter Special Instructions
                               <span style="color: red;">*</span>
                           </label>
                           <input type="text" class="form-control" placeholder="Enter Special Instructions" />
                       </div>
                   </div>
                   <div class="col-md-6">
                       <div class="form-group">
                           <label>
                               Enter Version/Revision
<span style="color: red;">*</span>
                           </label>
                           <input type="text" class="form-control" placeholder="Enter Version/Revision" />
                       </div>
                   </div>
               </div>
           </fieldset>--%>
             <hr />
 <div class="row">
     <div class="col-md-12">
         <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
         <a href="BillofMaterialMaster.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
     </div>
 </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function addDataA() {
            debugger;
            document.getElementById("fielsetA").style.display = 'block';

            let ddl1 = document.getElementById("Name").value;
            let ddl2 = document.getElementById("Code").value;
            let ddl3 = document.getElementById("Unit").value;
            let ddl4 = document.getElementById("Brand").value;
            let ddl5 = document.getElementById("Description").value;


            // Get the table and insert a new row at the end
            let table = document.getElementById('TableA');
            let newRow = table.getElementsByTagName('tbody')[0].insertRow();
            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 1;
            newRow.insertCell(1).innerHTML = ddl1;
            newRow.insertCell(2).innerHTML = ddl2;
            newRow.insertCell(3).innerHTML = ddl3;
            newRow.insertCell(4).innerHTML = ddl4;
            newRow.insertCell(5).innerHTML = ddl5;

            newRow.insertCell(6);
            const actionButtonTd = newRow.cells[6];
            actionButtonTd.innerHTML += '<a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a>';

            // Clear input fields after adding the row
            //  clearInputs2();
        };
    </script>
</asp:Content>

