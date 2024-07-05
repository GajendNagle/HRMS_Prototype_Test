
<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

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
                            <span>Master Data</span>
                        </li>
                        <li class="breadcrumb-item">Development Master Data</li>
                        <li class="breadcrumb-item">Financial Resource Mapping Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए वित्तीय स्रोत को  Map किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-10">
                    <h4 class="card-title">Financial Resource-Work Category Mapping Master /  वित्तीय स्रोत - कार्य की श्रेणी मेपिंग मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add Mapping / मेपिंग जोड़े</legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Resource /<br />
                                वित्तीय स्रोत के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">CM Rise Building Construction</option>
                                <option value="B">Build Construction</option>
                                <option value="C">Drinking Water System</option>
                               
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Search</button>
                        <a href="Mst_FinancialResourceMap.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Mapping Details / मेपिंग विवरण</legend>
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
                                <tr>
                                    <th>Sr.No. /<br />
                                        क्रमांक</th>
                                    <th>Status(Active/InActive)
      <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Work Category  / 
     <br />
                                        कार्य की श्रेणी
                                    </th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" class="form-check-input">
                                    </td>
                                    <td>School Repair/Construction</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>
                                        <input type="checkbox" id="vehicle" name="vehicle1" value="Bike" class="form-check-input">
                                    </td>
                                    <td>Drinking Water System</td>
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
</asp:Content>

