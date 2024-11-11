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
                            <label>
                                Select Project Number
                            </label>
                            <select class="form-control select2" id="ProjectNo" onchange="ShowHide()">
                                <option value="0">Select</option>
                                <option value="1">PR0001</option>
                                <option value="2">PR0002</option>
                                <option value="3">PR0003</option>
                                <option value="3">PR0004</option>
                                <option value="3">PR0005</option>

                            </select>

                        </div>
                    </div>
                    <div class="col-md-3" id="orderdate" style="display:none">
                        <div class="form-group">
                            <label>
                                Select Order Date
  <br />
                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3" id="orderno" style="display:none">
                        <div class="form-group">
                            <label>
                                Enter Order No.
  <br />
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Order No." />
                        </div>
                    </div>
                    <div class="col-md-3" id="RFPNo" style="display:none">
                        <div class="form-group">
                            <label>
                                 RFP No
  <br />
                            </label>
                            <input type="text" class="form-control" placeholder="Enter RFP No" />
                        </div>
                    </div>
                    <div class="col-md-3" id="RFPdate" style="display:none">
                        <div class="form-group">
                            <label>
                                 RFP Date
                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3" id="Milestone" style="display:none">
                        <div class="form-group">
                            <label>
                                Millstone 
                            </label>
                            <select class="form-control select2">
                                <option>Technical</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Milestones" style="display:none">
                        <div class="form-group">
                            <label>
                                Select Millstone 
                            </label>
                            <select class="form-control select2">

                                <option>Building Foundation</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="WorkCom" style="display:none">
                        <div class="form-group">
                            <label>
                                Work Completion Date
         <br />
                            </label>

                            <input type="date" class="form-control" value="2024-05-09" />


                        </div>
                    </div>
                    <div class="col-md-3" id="workComple" style="display:none">
                        <div class="form-group">
                            <label>
                                Work Completion %
                            </label>
                            <input type="text" class="form-control" value="50%" id="B3" />
                        </div>
                    </div>
                    <div class="col-md-3" id="visitdate" style="display:none">
                        <div class="form-group">
                            <label>Visit Date</label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-3" id="upload" style="display:none">
                        <div class="form-group">
                            <label>Photograph and Document Uploaded </label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3" id="completionPracent" style="display:none">
                        <div class="form-group">
                            <label>Completion %</label>
                            <input type="text" class="form-control" placeholder="Enter Completion %" />
                        </div>
                    </div>
                    <div class="col-md-3" id="workmilestone" style="display:none">
                        <div class="form-group">
                            <label>Work Millstone Status </label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Completed</option>
                                <option>Pending</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4" id="workdes" style="display:none">
                        <div class="form-group">
                            <label>Work Description</label>
                            <input type="text" class="form-control" placeholder="Enter Work Description" />
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
        function ShowHide() {
            var ProjectNo = document.getElementById('ProjectNo')
            if (ProjectNo.value == "1") {
                orderdate.style.display="block"
                orderno.style.display="block"
                RFPNo.style.display="block"
                RFPdate.style.display="block"
                Milestone.style.display="block"
                Milestones.style.display="block"
                WorkCom.style.display="block"
                workComple.style.display="block"
                visitdate.style.display="block"
                upload.style.display="block"
                completionPracent.style.display="block"
                workmilestone.style.display="block"
                workdes.style.display="block"
            }
            else if (ProjectNo.value == "2") {
                orderdate.style.display = "block"
                orderno.style.display = "block"
                RFPNo.style.display = "block"
                RFPdate.style.display = "block"
                Milestone.style.display = "block"
                Milestones.style.display = "block"
                WorkCom.style.display = "block"
                workComple.style.display = "block"
                visitdate.style.display = "block"
                upload.style.display = "block"
                completionPracent.style.display = "block"
                workmilestone.style.display = "block"
                workdes.style.display = "block"
            }

            else if (ProjectNo.value == "3") {
                orderdate.style.display = "block"
                orderno.style.display = "block"
                RFPNo.style.display = "block"
                RFPdate.style.display = "block"
                Milestone.style.display = "block"
                Milestones.style.display = "block"
                WorkCom.style.display = "block"
                workComple.style.display = "block"
                visitdate.style.display = "block"
                upload.style.display = "block"
                completionPracent.style.display = "block"
                workmilestone.style.display = "block"
                workdes.style.display = "block"
            }
            else {
                orderdate.style.display = "none"
                orderno.style.display = "none"
                RFPNo.style.display = "none"
                RFPdate.style.display = "none"
                Milestone.style.display = "none"
                Milestones.style.display = "none"
                WorkCom.style.display = "none"
                workComple.style.display = "none"
                visitdate.style.display = "none"
                upload.style.display = "none"
                completionPracent.style.display = "none"
                workmilestone.style.display = "none"
                workdes.style.display = "none"
            }
        }
    </script>
</asp:Content>

