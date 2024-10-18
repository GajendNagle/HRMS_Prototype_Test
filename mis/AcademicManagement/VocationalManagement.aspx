<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VocationalManagement.aspx.cs" Inherits="mis_AcademicManagement_AcademicManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Vocational Management Report</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>District-wise Vocational schools / जिला-वार व्यावसायिक विद्यालय</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>District / जिला <span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddl_value">
                            <option value="Select">Select</option>
                            <option value="Sheopur">Sheopur</option>
                            <option value="Morena">Morena</option>
                            <option value="Bhind">Bhind</option>
                            <option value="Gwalior">Gwalior</option>
                            <option value="Datia">Datia</option>
                            <option value="Shivpuri">Shivpuri</option>
                            <option value="Guna">Guna</option>
                            <option value="Tikamgarh">Tikamgarh</option>
                            <option value="Chhatarpur">Chhatarpur</option>
                            <option value="Panna">Panna</option>
                        </select>
                    </div>
                    <div class="col">
                        <button class="btn btn-info btn-rounded w-55" onclick="return myFunction()">Show List</button>
                    </div>
                </div>

                <br />

                <div class="row" id="hideshowTable1" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Gwalior">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Sheopur</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                <div class="row" id="hideshowTable2" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Gwalior">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Morena</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>




                <div class="row" id="hideshowTable3" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Gwalior">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Bhind</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable4" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">

                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Gwalior">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Gwalior</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable5" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Datia">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Datia</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <div class="row" id="hideshowTable6" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Shivpuri</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable7" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Guna">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Guna">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Guna</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable8" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Tikamgarh">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Tikamgarh</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable9" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Chhatarpur</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row" id="hideshowTable10" style="display: none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-center">
                                        <th>S.No.</th>
                                        <th>District</th>
                                        <th>School</th>
                                        <th>Dise code</th>
                                        <th>Vocational Trades</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr data-district="Sheopur">
                                        <td style="text-align: center">1</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT. HSS EXCELLENCE VIJAYPUR</td>
                                        <td style="text-align: center">23010822925</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Morena">
                                        <td style="text-align: center">2</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT. EXC. HSS PORSA</td>
                                        <td style="text-align: center">23020107984</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Bhind">
                                        <td style="text-align: center">3</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT. EXCELLENCE H.S.S.Raun</td>
                                        <td style="text-align: center">23030200219</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>
                                    <tr data-district="Panna">
                                        <td style="text-align: center">4</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT.HSS EXCELLENCE DABRA</td>
                                        <td style="text-align: center">23040120103</td>
                                        <td>Electrical & Electronics,IT/ITeS</td>
                                    </tr>
                                    <tr data-district="Panna">
                                        <td style="text-align: center">5</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT HSS EXCELLENCE BHANDER</td>
                                        <td style="text-align: center">23050313906</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Shivpuri">
                                        <td style="text-align: center">6</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT HSS EXCELLENCE KHANIYADHANA</td>
                                        <td style="text-align: center">23060500832</td>
                                        <td>Healthcare,Phy. Edu. & Sports</td>
                                    </tr>

                                    <tr data-district="Guna">
                                        <td style="text-align: center">7</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT HSS EXCELLENCE ARON</td>
                                        <td style="text-align: center">23070105031</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">8</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GHSS EXCLENCE JATARA</td>
                                        <td style="text-align: center">23080218810</td>
                                        <td>Healthcare,IT/ITeS</td>
                                    </tr>

                                    <tr data-district="Chhatarpur">
                                        <td style="text-align: center">9</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>GOVT. HSS EXCELLENCE BIJAWAR</td>
                                        <td style="text-align: center">23090809420</td>
                                        <td>Beauty & Wellness,Travel & Tourism</td>
                                    </tr>

                                    <tr data-district="Panna">
                                        <td style="text-align: center">10</td>
                                        <td style="text-align: center">Panna</td>
                                        <td>Govt Exc. Hss Gounor</td>
                                        <td style="text-align: center">23100220627</td>
                                        <td>Banking & Financial Services,Electrical & Electronics</td>
                                    </tr>






                                </tbody>
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
        function myFunction() {
            // Get the selected district from the dropdown
            var selectedValue = document.getElementById("ddl_value").value;

            // Get all table rows
            var rows = document.querySelectorAll("#hideshowTable1 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable2 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable3 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable4 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable5 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable6 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable7 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable8 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable9 tbody tr");
            var rows = document.querySelectorAll("#hideshowTable10 tbody tr");


            // Loop through each row and hide/show based on selected value
            rows.forEach(function (row) {
                var district = row.getAttribute("data-district"); // Get the data-district attribute value

                // Check if the row's district matches the selected value
                if (district === selectedValue) {
                    row.style.display = ""; // Show row if it matches
                } else {
                    row.style.display = "none"; // Hide row if it doesn't match
                }
            });

            // If "Select" is chosen, hide the entire table
            if (selectedValue === "Select") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";

            }
            else if (selectedValue === "Sheopur") {
                document.getElementById("hideshowTable1").style.display = "block";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Morena") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "block";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }
            else if (selectedValue === "Bhind") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "block";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";

            }
            else if (selectedValue === "Gwalior") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "block";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Datia") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "block";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Shivpuri") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "block";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Guna") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "block";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";


            }

            else if (selectedValue === "Tikamgarh") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "block";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Chhatarpur") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "block";
                document.getElementById("hideshowTable10").style.display = "none";
            }

            else if (selectedValue === "Panna") {
                document.getElementById("hideshowTable1").style.display = "none";
                document.getElementById("hideshowTable2").style.display = "none";
                document.getElementById("hideshowTable3").style.display = "none";
                document.getElementById("hideshowTable4").style.display = "none";
                document.getElementById("hideshowTable5").style.display = "none";
                document.getElementById("hideshowTable6").style.display = "none";
                document.getElementById("hideshowTable7").style.display = "none";
                document.getElementById("hideshowTable8").style.display = "none";
                document.getElementById("hideshowTable9").style.display = "none";
                document.getElementById("hideshowTable10").style.display = "block";
            }

            else {
                document.getElementById("hideshowTable1").style.display = "table"; // Show table if a district is selected
            }
            return false;
        }
    </script>
</asp:Content>
