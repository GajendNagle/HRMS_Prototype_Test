<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalTradeSubMaster.aspx.cs" Inherits="mis_Masters_VocationalTradeSubMaster" %>

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
                        <li class="breadcrumb-item"><span>Vocational Trade Sub Master</span></li>
                    </ol>           
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए  Vocational Trade Sub Type को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |         
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-8">
                    <h4 class="card-title">Vocational Trade Sub Master /   वोकेशनल ट्रेड उप मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="bg"></span>
            <fieldset>
                <legend>Add Vocational Trade Sub Type /  वोकेशनल सब ट्रेड  प्रकार जोड़ें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Vocational Trade Type
                            <br />
                                वोकेशनल ट्रेड प्रकार का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control form-select">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="2">Solanaceous Crop Cultivator</asp:ListItem>
                                <asp:ListItem Value="3">Assistant Beauty Therapist</asp:ListItem>
                                <asp:ListItem Value="4">Home Health Aid Trainee</asp:ListItem>
                                <asp:ListItem Value="5">Domestic Data Entry Operator</asp:ListItem>
                                <asp:ListItem Value="6">Microfinance Executive</asp:ListItem>
                                <asp:ListItem Value="7">Junior Field Technician Home Appliances</asp:ListItem>
                                <asp:ListItem Value="8">Security Guard</asp:ListItem>
                                <asp:ListItem Value="9">Food & Beverage Service Assistant</asp:ListItem>
                                <asp:ListItem Value="10">Sewing Machine Operator</asp:ListItem>
                                <asp:ListItem Value="11">Retail Store Operations Assistant</asp:ListItem>
                                <asp:ListItem Value="12">Physical Education Assistant - Early Year</asp:ListItem>
                                <asp:ListItem Value="13">Four Wheeler Service Assistant</asp:ListItem>
                                <asp:ListItem Value="14">Electrical Vehicle Service Assistant</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Vocational Trade Sub Type Name     <br /> (In English)
                         

                              <%--  वोकेशनल ट्रेड उप का प्रकार दर्ज करें(अंग्रेज़ी में)--%><span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Vocational Trade Sub Type" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                              <%--  Enter  Vocational Trade Sub Type  (In Hindi)--%>
        
                           
                                वोकेशनल सब ट्रेड का प्रकार का नाम दर्ज करें  <br /> (हिंदी में)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="वोकेशनल ट्रेड उप का प्रकार दर्ज करे" />
                        </div>
                    </div>
           <%--          <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Is Lab Exist 
                            <br />
                               क्या लैब मौजूद है<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control form-select">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                                <asp:ListItem Value="3">No</asp:ListItem>                             
                            </asp:DropDownList>
                        </div>
                    </div>--%>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input checked="checked" type="checkbox" class="form-check-input" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
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
                <legend>Vocational Trade Sub Type Details / वोकेशनल सब ट्रेड का प्रकार विवरण</legend>
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
                                        <th>Vocational Trade Type
                                        <br>
                                            वोकेशनल ट्रेड प्रकार</th>
                                        <th>Vocational Trade Sub Type  (In English)
                                        <br />
                                            वोकेशनल ट्रेड उप प्रकार (अंग्रेज़ी में)</th>
                                        <th>Vocational Trade Sub Type (In Hindi)
                                        <br />
                                            वोकेशनल ट्रेड उप प्रकार (हिंदी में)</th>
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
                                    <td>Agriculture</td>
                                    <td>Solanaceous Crop Cultivator</td>
                                    <td>सोलनसियस फसल उत्पादक</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>BEAUTY AND WELLNESS</td>
                                    <td>Assistant Beauty Therapist</td>
                                    <td>सहायक सौंदर्य चिकित्सक</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Electronics and Hardware</td>
                                    <td>Home Health Aid Trainee</td>
                                    <td>घरेलू स्वास्थ्य सहायक प्रशिक्षु</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Health Care</td>
                                    <td>Domestic Data Entry Operator</td>
                                    <td>घरेलू डेटा एंट्री ऑपरेटर</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>IT-ITES</td>
                                    <td>Microfinance Executive</td>
                                    <td>माइक्रोफाइनेंस कार्यकारी </td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>BFSI (Banking, Financial Services, and Insurance)</td>
                                    <td>Junior Field Technician Home Appliances</td>
                                    <td>जूनियर फील्ड तकनीशियन </td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Private Security</td>
                                    <td>Security Guard</td>
                                    <td>सुरक्षा गार्ड</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Retail</td>
                                    <td>Food & Beverage Service Assistant</td>
                                    <td>खाद्य और पेय सेवा सहायक </td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Tourism and Hospitality</td>
                                    <td>Sewing Machine Operator</td>
                                    <td>सिलाई मशीन ऑपरेटर</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Physical Education And Sports</td>
                                    <td>Retail Store Operations Assistant</td>
                                    <td>खुदरा स्टोर संचालन सहायक</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Automotive</td>
                                    <td>Physical Education Assistant - Early Year</td>
                                    <td>शारीरिक शिक्षा सहायक - प्रारंभिक वर्ष </td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Media and Entertainment</td>
                                    <td>Four Wheeler Service Assistant</td>
                                    <td>चार पहिया सेवा सहायक</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Plumbing</td>
                                    <td>Electrical Vehicle Service Assistant</td>
                                    <td>इलेक्ट्रिक वाहन सेवा सहायक</td>
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

