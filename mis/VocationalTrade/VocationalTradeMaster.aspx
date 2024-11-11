<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalTradeMaster.aspx.cs" Inherits="mis_Masters_VocationalTradeMaster" %>

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
                        <li class="breadcrumb-item"><span>Vocational Trade Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए  Vocational Trade को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vocational Trade Master /  वोकेशनल ट्रेड मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add Vocational Trade /  वोकेशनल ट्रेड जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Vocational Trade Name <br />
                                (In English)

                               <span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Vocational Trade" onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group"> 
                            <label>
                                

                                वोकेशनल ट्रेड का नाम दर्ज करें <br />
                                (हिंदी में) <span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" placeholder="वोकेशनल ट्रेड का नाम दर्ज करे" onkeypress="return lettersOnly();" />
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
                <legend>Vocational Trade Master Details / वोकेशनल ट्रेड मास्टर विवरण</legend>
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
                                        <th>Name of the Vocational Trade(In English)<br />
                                            वोकेशनल ट्रेड का नाम (अंग्रेजी में)</th>
                                        <th>Name of the Vocational Trade (in Hindi)<br />
                                            वोकेशनल ट्रेड का नाम (हिंदी में)</th>
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
                                    <td>कृषि</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>BEAUTY AND WELLNESS</td>
                                    <td>सौंदर्य और कल्याण</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Electronics and Hardware</td>
                                    <td>इलेक्ट्रॉनिक्स और हार्डवेयर</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Health Care</td>
                                    <td>स्वास्थ्य देखभाल</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>IT-ITES</td>
                                    <td>आईटी-आईटीईएस</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>BFSI (Banking, Financial Services, and Insurance)</td>
                                    <td>बैंकिंग, वित्तीय सेवाएँ और बीमा (बीएफएसआई)</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Private Security</td>
                                    <td>निजी सुरक्षा</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Retail</td>
                                    <td>खुदरा</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Tourism and Hospitality</td>
                                    <td>पर्यटन और आतिथ्य</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Physical Education And Sports</td>
                                    <td>शारीरिक शिक्षा और खेल</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Automotive</td>
                                    <td>ऑटोमोटिव</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Media and Entertainment</td>
                                    <td>मीडिया और मनोरंजन</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Plumbing</td>
                                    <td>प्लंबिंग</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Apparel</td>
                                    <td>वस्त्र</td>
                                    <td>InActive</td>
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

