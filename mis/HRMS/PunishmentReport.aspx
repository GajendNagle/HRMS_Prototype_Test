<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PunishmentReport.aspx.cs" Inherits="mis_HRMS_PunishmentReport" %>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Punishment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>PUNSIHMENT SYSTEM </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>PUNSIHMENT REPORT</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Punishment Report   / 
                           निलंबित रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <fieldset>


                        <legend>Generate Punishment Order /  निलंबित ऑर्डर जनरेट करें
                        </legend>
                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Select Punishment Status /
                                        <br />
                                        निलंबित स्थिति का चयन करें <span style="color: red">*</span>
                                    </label>
                                    <%--     <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
                                    </asp:TextBox>--%>
                                    <select id="Ptype" class="form-select select2">
                                        <option value="">--Select--</option>
                                        <option value="1">Punishment Order Report </option>
                                        <option value="2">Restore Punishment Order Report</option>
                                    </select>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <%--    <asp:Button type="button" ID="Button1" OnClick="Button1_Click" Text="Search" runat="server" class="btn btn-info btn-border w-lg" />--%>
                                    <input type="button" id="btnshow" class="btn btn-info w-lg" value="Search" onclick="Showtbl()" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="div1" style="display: none">
                        <fieldset>
                            <legend>Punishment Order Details / निलंबित आदेश का विवरण </legend>
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
                                                    <th>Employee Name & Code /<br />
                                                        कर्मचारी का नाम और कोड</th>
                                                     <th>OIS Name & Code /
                                        <br />
                                                        ओआईएस नाम एवं कोड</th>
                                                    <th>Designation<br />
                                                        पद का नाम</th>
                                                    <th>Punishment Type 
                                        <br />
                                                        निलंबित का प्रकार </th>
                                                    <th>Remark
                                                    <br />
                                                        टिप्पणी</th>

                                                    <th>Punishment Order No .
                                                    <br />
                                                        निलंबित आदेश संख्या </th>
                                                    <th>Punishment Order Date
                                                    <br />
                                                        निलंबित आदेश दिनांक</th>

                                             
                                                    <th>View Document
                                                    <br />
                                                        दस्तावेज़ देखें</th>
                                                    <th>View Punishment Order
                                                    <br />
                                                        आदेश देखें</th>

                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Arjun Talwar (AR4781) </td>
                                                 <td> HSS School Raisen 021234S010</td>
                                                <td>Teacher SS1-Hindi</td>
                                                <td>पदोन्नति रोकना </td>
                                                <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                                <td>SUS242012 </td>
                                                <td>29/07/2024</td>
                                               
                                                
                                                
                                                <td id="Document1"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                                <td id="Document2"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Keshav Maharaj (KR2385) </td>
                                                <td>HSS School Sehore  021234S010</td>
                                                <td>Teacher SS1-English</td>
                                                <td>वेतन-वृद्धि रोकना</td>
                                                    <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                                <td>SUS242013</td>
                                                <td> 29/07/2024</td>
                                                
                                            
                                                <td id="Document3"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                                <td id="Document4"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>

                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div id="div2" style="display: none">
                        <fieldset>
                            <legend>Restore Punishment Order Details / निलंबित आदेश बहाल करने का विवरण </legend>
                            <div class="row justify-content-end">
                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
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
                                                    <th>Employee Name & Code /<br />
                                                        कर्मचारी का नाम और कोड</th>
                                                     <th>OIS Name & Code /
                                        <br />
                                                        ओआईएस नाम एवं कोड</th>
                                                    <th>Designation<br />
                                                        पद का नाम</th>
                                                    <th>Punishment Type 
                                        <br />
                                                        निलंबित का प्रकार </th>
                                                    <th>Punishment Remark
                                                    <br />
                                                       निलंबित टिप्पणी</th>

                                                    <th>Restore Order No .
                                                    <br />
                                                        पुनर्स्थापित आदेश संख्या </th>
                                                    <th>Restore Order Date
                                                    <br />
                                                        पुनर्स्थापित आदेश दिनांक</th>
                                                    <th>Restore Remark
                                                    <br />
                                                       पुनर्स्थापित टिप्पणी</th>
                                             
                                                    <th>View Document
                                                    <br />
                                                        दस्तावेज़ देखें</th>
                                                    <th>View Restore Order
                                                    <br />
                                                        पुनर्स्थापित आदेश देखें</th>

                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Shreyas Kumar (SA4781) </td>
                                                <td>HSS School Badi 021234S010</td>
                                                <td>Teacher SS1-Hindi</td>
                                                 <td>पदोन्नति रोकना </td>
                                                   <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription1"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                                <td>RESP89758 </td>
                                                <td>01/08/2024 </td>
                                      <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription1"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                             
                                               
                                                <td id="Document5"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                                <td id="Document6"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Sunil Narayan (SU2385) </td>
                                                 <td>HSS School Raisen 021234S010</td>
                                                <td>Teacher SS1-English</td>
                                                 <td>वेतन-वृद्धि रोकना</td>
                                                <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription1"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                                <td>RESP242013 </td>
                                                <td>02/08/2024 </td>
                                                   <td>
                                                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription1"><i class="	far fa-comment-alt"></i></button>
                                                </td>
                                                <td id="Document7"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>
                                                <td id="Document8"><a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a></td>

                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="modal" id="WorkDescription">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                                    <h4 class="modal-title text-white">Punishment Remark</h4>
                                    <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal Body -->
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">


                                            <div class="form-group">
                                                <%--  <h5>Work Description</h5>--%>
                                                <p class="border p-2 border-primary fs-5 rounded-4">
                                                    आपको प्रमोशन रोकने के मामले में निलंबित किया जाता है। प्रमोशन रोकने के कारण आपकी सेवाएं निलंबित की जाती हैं।
                                                </p>
                                                <%--   <textarea class="form-control" rows="1" style="resize: vertical" placeholder="project approval & Installment Creation/ परियोजना अनुमोदन एवं किस्त निर्माण

"></textarea>--%>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal Footer -->
                                    <%--    <div class="modal-footer justify-content-center">

                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                  <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal" id="WorkDescription1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                                    <h4 class="modal-title text-white">Restore Punishment Remark</h4>
                                    <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal Body -->
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">


                                            <div class="form-group">
                                                <%--  <h5>Work Description</h5>--%>
                                                <p class="border p-2 border-primary fs-5 rounded-4">
                                                    "प्रमोशन रोकने के दंड को बहाल करने का निर्णय लिया गया है, जिससे कर्मचारी को अपने करियर में आगे बढ़ने का अवसर मिलेगा। इस निर्णय से कर्मचारी को अपनी क्षमताओं को पूरा करने और संगठन में योगदान करने के लिए प्रेरित किया जाएगा।"
                                                </p>
                                                <%--   <textarea class="form-control" rows="1" style="resize: vertical" placeholder="project approval & Installment Creation/ परियोजना अनुमोदन एवं किस्त निर्माण

"></textarea>--%>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal Footer -->
                                    <%--    <div class="modal-footer justify-content-center">

                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                  <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        function Showtbl() {
            var id = document.getElementById("Ptype").value;
            var div1 = document.getElementById("div1");
            var div2 = document.getElementById("div2");
            console.log(id);
            if (id == 1) {
                div1.style.display = "block";
                div2.style.display = "none";
            }
            if (id == 2) {
                div1.style.display = "none";
                div2.style.display = "block";
            }
            if (id == 0) {
                div1.style.display = "none";
                div2.style.display = "none";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

