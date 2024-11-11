<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalSchemeMaster.aspx.cs" Inherits="mis_VocationalTrade_VocationalSchemeMaster" %>

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
                            <a href="#VocationalTrade" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('VocationalTrade')"><span>Vocational Trade</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vocational Scheme Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए  Vocational Scheme को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-8">
                    <h4 class="card-title">Vocational Scheme Master /  वोकेशनल योजना मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add Vocational Scheme /  वोकेशनल योजना जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Vocational Scheme Name (In English)<br />

                                वोकेशनल योजना का नाम दर्ज करें (अंग्रेजी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Vocational Scheme" onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Vocational Scheme Name (In Hindi)<br />

                                वोकेशनल योजना का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" placeholder="वोकेशनल योजना का नाम दर्ज करें" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input checked="checked" type="checkbox" data-val="true" class="form-check-input" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
					<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="Mst_Loc_State.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Vocational Scheme Master Details / वोकेशनल योजना मास्टर विवरण</legend>
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
                                  <br />
                                            सरल क्र.</th>
                                        <th>Name of the Vocational Scheme (In English)<br />
                                            वोकेशनल योजना  का नाम (अंग्रेजी में)</th>
                                        <th>Name of the Vocational Scheme (in Hindi)<br />
                                            वोकेशनल योजना  का नाम (हिंदी में)</th>
                                        <th>Status(Active/InActive)
                                  <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                                      <br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>C224</td>
                                    <td>सी224</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>C1200</td>
                                    <td>सी1200</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>C269</td>
                                    <td>सी269</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>C549</td>
                                    <td>सी546</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>PMSHRI</td>
                                    <td>पीएमश्री</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>STAR</td>
                                    <td>स्टार</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>STARS-NEW</td>
                                    <td>स्टार्स -न्यू</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
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

