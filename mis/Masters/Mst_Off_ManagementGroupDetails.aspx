<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_ManagementGroupDetails.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SchoolTypeCategory" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Management Group Detail Master Data</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पृष्ठ के माध्यम से  प्रबंधन समूह विवरण को  Registered  किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Management Group Detail Master
                        <br />
                        प्रबंधन समूह विवरण मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Management Group Detail Master</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Management Group
                                <br />
                                प्रबंधन समूह का चयन करे<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A- State Government">A- State Government</option>
                                <option value="B– Govt. Aided">B– Govt. Aided</option>
                                <option value="C- Private Unaided">C- Private Unaided</option>
                                <option value="D- Central Government">D- Central Government</option>
                                <option value="E- Others">E- Others</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Management Group Details(In English)<br />
                                प्रबंधन समूह विवरण दर्ज करे(अंग्रेज़ी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" placeholder="Enter Management Group Details" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Management Group Details(In Hindi)<br />
                                प्रबंधन समूह विवरण दर्ज करे(हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder="प्रबंधन समूह का विवरण दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Management Details Code No.
                                <br />
                                प्रबंधन विवरण कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input checked="checked" class="form-check-input" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="Mst_Loc_NagarPalika.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Management Group Details / प्रबंधन समूह विवरण</legend>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                <tr>
                                    <th>Sr.No.
                                        <br />
                                        सरल क्र.</th>
                                    <th>Select Management Group
                                        <br />
                                        प्रबंधन समूह का चयन करें</th>
                                    <th>Management Group Details(In English)<br />
                                        प्रबंधन समूह विवरण(अंग्रेज़ी में)</th>
                                    <th>Management Group Details(In Hindi)<br />
                                        प्रबंधन समूह विवरण (हिंदी में)</th>
                                    <th>Management Details Code No.
                                        <br />
                                        प्रबंधन विवरण कोड संख्या</th>
                                    <th>Status(Active/InActive)
                                        <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action<br />
                                        कार्यवाहीं</th>
                                </tr>
                                    </thead>
                                <tr>
                                    <td>1</td>
                                    <td>A - State Government</td>
                                    <td>Department of Education</td>
                                    <td>शिक्षा विभाग</td>
                                    <td>01</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>A - State Government</td>
                                    <td>Tribal Welfare Department</td>
                                    <td>आदिम जाति कल्याण विभाग</td>
                                    <td>02</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>A - State Government</td>
                                    <td>Local Body</td>
                                    <td>स्थानीय निकाय</td>
                                    <td>03</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>A - State Government</td>
                                    <td>Other State Govt. Managed</td>
                                    <td>अन्य राज्य सरकार प्रबंधित</td>
                                    <td>06</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>A - State Government</td>
                                    <td>Minority Affairs Dept.</td>
                                    <td>अल्पसंख्यक कार्य विभाग</td>
                                    <td>89</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>A - State Government</td>
                                    <td>Social Welfare Department</td>
                                    <td>समाज कल्याण विभाग</td>
                                    <td>90</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>A - State Government</td>
                                    <td>Ministry of Labour</td>
                                    <td>श्रम मंत्रालय</td>
                                    <td>91</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>B - Govt. Aided</td>
                                    <td>Government Aided</td>
                                    <td>सरकारी सहायता प्राप्त</td>
                                    <td>04</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>B - Govt. Aided</td>
                                    <td>Partially Govt. Aided</td>
                                    <td>आंशिक रूप से सरकारी. सहायता प्राप्त</td>
                                    <td>07</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>C - Private Unaided</td>
                                    <td>Private Unaided (Recognized)</td>
                                    <td>निजी गैर सहायता प्राप्त (मान्यता प्राप्त)</td>
                                    <td>05</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>D - Central Government</td>
                                    <td>Kendriya Vidyalaya </td>
                                    <td>केन्द्रीय विद्यालय</td>
                                    <td>92</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>D - Central Government</td>
                                    <td>Jawahar Navodaya Vidyalaya</td>
                                    <td>जवाहर नवोदय विद्यालय</td>
                                    <td>93</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>D - Central Government</td>
                                    <td>Sainik School</td>
                                    <td>सैनिक स्कूल</td>
                                    <td>94</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>D - Central Government</td>
                                    <td>Railway School</td>
                                    <td>रेलवे स्कूल</td>
                                    <td>95</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>D - Central Government</td>
                                    <td>Central Tibetan School </td>
                                    <td>सेंट्रल तिब्बती स्कूल</td>
                                    <td>96</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>D - Central Government</td>
                                    <td>Other Central Govt./PSU Schools </td>
                                    <td>अन्य केंद्रीय सरकार/पीएसयू स्कूल</td>
                                    <td>101</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>D - Central Government</td>
                                    <td>Sainik School </td>
                                    <td>सैनिक स्कूल</td>
                                    <td>102</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>E - Others</td>
                                    <td>Unrecognized</td>
                                    <td>गैर मान्यता प्राप्त</td>
                                    <td>08</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>E - Others</td>
                                    <td>Madrasa Private Unaided (Recognized) </td>
                                    <td>मदरसा निजी गैर सहायता प्राप्त (मान्यता प्राप्त)</td>
                                    <td>97</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>E - Others</td>
                                    <td>Madrasa Aided (Recognized)</td>
                                    <td>मदरसा सहायता प्राप्त (मान्यता प्राप्त)</td>
                                    <td>99</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>E - Others</td>
                                    <td>Madarsa Unrecognized</td>
                                    <td>मदरसा गैर मान्यता प्राप्त</td>
                                    <td>98</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

