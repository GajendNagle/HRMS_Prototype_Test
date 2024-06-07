<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_ManagementGroupDetails.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SchoolTypeCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Management Group Details Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=OfficeMaster" title="click to go on">Office Masters</a></li>
                        <li class="breadcrumb-item active">Management Group Details Master</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Management Group Detail Master</legend>

                    <div class="row form-group">

                        <div class="col-md-3">
                            <label class="font-weight-bold">Management Group<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A- State Government">A- State Government</option>
                                <option value="B– Govt. Aided">B– Govt. Aided</option>
                                <option value="C- Private Unaided">C- Private Unaided</option>
                                <option value="D- Central Government">D- Central Government</option>
                                <option value="E- Others">E- Others</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">Management Group Details<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" placeholder="Enter Management Group Details" onkeypress="return lettersOnly();" />
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">प्रबंधन समूह विवरण (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" autocomplete="off" placeholder="प्रबंधन समूह का विवरण दर्ज करे" />
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">Management Details Code No.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl03" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                     
                        <div class="col-md-1 mt-4">
                            <label class="font-weight-bold">Is Active</label>
                            <br />
                            <input id="ContentBody_ctl04" type="checkbox" name="ctl00$ContentBody$ctl04" checked="checked" />
                        </div>
                          <div class="col-md-3 mt-4 ">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_Off_ManagementGroupDetails.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
              
                </fieldset>
                <fieldset>
                    <legend>Management Group Details </legend>
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
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Select Management Group</th>
                                        <th>Management Group Details (In English)</th>
                                        <th>प्रबंधन समूह विवरण (हिंदी में)</th>
                                        <th>Management Details Code No.</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>A - State Government</td>
                                        <td>Department of Education</td>
                                        <td>शिक्षा विभाग</td>
                                        <td>01</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>A - State Government</td>
                                        <td>Tribal Welfare Department</td>
                                        <td>आदिम जाति कल्याण विभाग</td>
                                        <td>02</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr> 
                                    <tr>
                                        <td>3</td>
                                        <td>A - State Government</td>
                                        <td>Local Body</td>
                                        <td>स्थानीय निकाय</td>
                                        <td>03</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>A - State Government</td>
                                        <td>Other State Govt. Managed</td>
                                        <td>अन्य राज्य सरकार प्रबंधित</td>
                                        <td>06</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>A - State Government</td>
                                        <td>Minority Affairs Dept.</td>
                                        <td>अल्पसंख्यक कार्य विभाग</td>
                                        <td>89</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr> 
                                    <tr>
                                        <td>6</td>
                                        <td>A - State Government</td>
                                        <td>Social Welfare Department</td>
                                        <td>समाज कल्याण विभाग</td>
                                        <td>90</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>A - State Government</td>
                                        <td>Ministry of Labour</td>
                                        <td>श्रम मंत्रालय</td>
                                        <td>91</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>B - Govt. Aided</td>
                                        <td>Government Aided</td>
                                        <td>सरकारी सहायता प्राप्त</td>
                                        <td>04</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr> 
                                    <tr>
                                        <td>9</td>
                                        <td>B - Govt. Aided</td>
                                        <td>Partially Govt. Aided</td>
                                        <td>आंशिक रूप से सरकारी. सहायता प्राप्त</td>
                                        <td>07</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>C - Private Unaided</td>
                                        <td>Private Unaided (Recognized)</td>
                                        <td>निजी गैर सहायता प्राप्त (मान्यता प्राप्त)</td>
                                        <td>05</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>D - Central Government</td>
                                        <td>Kendriya Vidyalaya </td>
                                        <td>केन्द्रीय विद्यालय</td>
                                        <td>92</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>D - Central Government</td>
                                        <td>Jawahar Navodaya Vidyalaya</td>
                                        <td>जवाहर नवोदय विद्यालय</td>
                                        <td>93</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>D - Central Government</td>
                                        <td>Sainik School</td>
                                        <td>सैनिक स्कूल</td>
                                        <td>94</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>D - Central Government</td>
                                        <td>Railway School</td>
                                        <td>रेलवे स्कूल</td>
                                        <td>95</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>D - Central Government</td>
                                        <td>Central Tibetan School </td>
                                        <td>सेंट्रल तिब्बती स्कूल</td>
                                        <td>96</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>D - Central Government</td>
                                        <td>Other Central Govt./PSU Schools </td>
                                        <td>अन्य केंद्रीय सरकार/पीएसयू स्कूल</td>
                                        <td>101</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>D - Central Government</td>
                                        <td>Sainik School </td>
                                        <td>सैनिक स्कूल</td>
                                        <td>102</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>E - Others</td>
                                        <td>Unrecognized</td>
                                        <td>गैर मान्यता प्राप्त</td>
                                        <td>08</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>E - Others</td>
                                        <td>Madrasa Private Unaided (Recognized) </td>
                                        <td>मदरसा निजी गैर सहायता प्राप्त (मान्यता प्राप्त)</td>
                                        <td>97</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>E - Others</td>
                                        <td>Madrasa Aided (Recognized)</td>
                                        <td>मदरसा सहायता प्राप्त (मान्यता प्राप्त)</td>
                                        <td>99</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>E - Others</td>
                                        <td>Madarsa Unrecognized</td>
                                        <td>मदरसा गैर मान्यता प्राप्त</td>
                                        <td>98</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp<a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
               <%-- <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li>
                                    <strong>Management Group</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Management Group </strong>from the dropdown and the data will be populated from the <strong>School Management Group Master</strong>.</li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Management Group Details (In English)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Management Group Details in English </strong>and the text field should accept <strong>only English letters.</strong> </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>प्रबंधन समूह विवरण (हिंदी में)</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Management Group Details in Hindi</strong> and the text field should accept <strong>only Hindi letters.</strong> </li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Code No.</strong>

                                    <ul>
                                        <li>User should be able to enter the <strong>Code Number</strong> and the text field should accept<strong> only numerical values</strong>.</li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Is Active (Checkbox)</strong>
                                    <ul>
                                        <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                        <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                        <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
                                    </ul>

                                </li>

                                <li>
                                    <strong>Save</strong>
                                    <ul>
                                        <li>User should be able to click on save button.</li>
                                        <li>On save button click form field should be validated. </li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                        <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                        <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                    </ul>

                                </li>
                                <li>
                                    <strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button. </li>
                                        <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>


                                <li>
                                    <strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                    </ul>
                                </li>


                                <li>
                                    <strong>Action (Edit)</strong>
                                    <ul>
                                        <li>On Clicking The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The Form?</li>
                                        <li>On Choose Yes Button, The Form Will Come In The Editable Format.</li>
                                        <li>After Editing The Form, On Clicking The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update.</li>
                                        <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                        <li>On Doing Cancel,</li>
                                        <li>The data will not be edited.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Action (Delete)</strong>
                                    <ul>
                                        <li>If User Wants To Delete Any Data - Then User Can Clicking The Delete Icon</li>
                                        <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The Data?</li>
                                        <li>On Doing YES,</li>
                                        <li>The Data Will Be Deleted And The Popup Message Will Be Shown</li>
                                        <li>Popup Message - Data Deleted Successfully.</li>
                                        <li>On Doing Cancel,</li>
                                        <li>The data will not be deleted.</li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

