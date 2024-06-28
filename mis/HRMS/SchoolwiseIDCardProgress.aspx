<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolwiseIDCardProgress.aspx.cs" Inherits="mis_HRMS_SchoolBlockwiseIDCardProgress" %>

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
                            <a href="#IDCardReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee ID Card Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>School Wise ID Card Progress Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">School Wise ID Card Progress Report /
                     विद्यालयवार आई.डी कार्ड प्रगति रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Wise ID Card Progress Report / विद्यालयवार आई.डी कार्ड प्रगति रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select District Name<br /> जिला का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddldistrict" class="form-control select2" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                <asp:ListItem Value="2">Raisen</asp:ListItem>
                                <asp:ListItem Value="3">Sehore</asp:ListItem>
                                <asp:ListItem Value="4">Vidisha</asp:ListItem>
                                <asp:ListItem Value="5">Gwalior</asp:ListItem>
                                <asp:ListItem Value="7">Betul</asp:ListItem>
                                <asp:ListItem Value="8">Bhind</asp:ListItem>
                                <asp:ListItem Value="9">Balaghat</asp:ListItem>
                                <asp:ListItem Value="10">Barwani</asp:ListItem>
                                <asp:ListItem Value="11">Chhatarpur</asp:ListItem>
                                <asp:ListItem Value="12">Chhindwara</asp:ListItem>
                                <asp:ListItem Value="13">Dewas</asp:ListItem>
                                <asp:ListItem Value="14">Dhar</asp:ListItem>
                                <asp:ListItem Value="15">Datia</asp:ListItem>
                                <asp:ListItem Value="16">Damoh</asp:ListItem>
                                <asp:ListItem Value="17">Burhanpur</asp:ListItem>
                                <asp:ListItem Value="18">Anuppur</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" id="Bhopal" visible="false">
                            <label>Select Block Name<br /> ब्लॉक का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="blockGroupBhopal" class="form-control select2" OnSelectedIndexChanged="blockGroupBhopal_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <%--<asp:ListItem >Berasia</asp:ListItem>
                                    <asp:ListItem >Phanda Gramin</asp:ListItem>
                                    <asp:ListItem >Phanda URBAN- New City</asp:ListItem>
                                    <asp:ListItem >Phanda URBAN- Old City</asp:ListItem>
                                     <asp:ListItem value="1">Badi</asp:ListItem>
                                    <asp:ListItem value="2">Begamganj</asp:ListItem>
                                    <asp:ListItem value="3">Gairatganj</asp:ListItem>
                                    <asp:ListItem value="4">Obedullaganj</asp:ListItem>
                                    <asp:ListItem value="5">Sanchi</asp:ListItem>
                                    <asp:ListItem value="1">Sehore</asp:ListItem>
                                    <asp:ListItem value="2">Budhani</asp:ListItem>
                                    <asp:ListItem value="3">Ichhawar</asp:ListItem>
                                    <asp:ListItem value="4">Nasrullaganj</asp:ListItem>
                                    <asp:ListItem value="5">Sehore</asp:ListItem>
                                    <asp:ListItem value="1">Basoda</asp:ListItem>
                                    <asp:ListItem value="2">Gyaraspur</asp:ListItem>
                                    <asp:ListItem value="3">Kurwai</asp:ListItem>
                                    <asp:ListItem value="4">Lateri</asp:ListItem>
                                    <asp:ListItem value="5">Sironj</asp:ListItem>
                                    <asp:ListItem value="6">Vidisha</asp:ListItem>
                                    <asp:ListItem value="1">Dabra</asp:ListItem>
                                    <asp:ListItem value="2">Bhitarwar</asp:ListItem>
                                    <asp:ListItem value="3">Ghatigaon</asp:ListItem>
                                    <asp:ListItem value="4">Morar Rural</asp:ListItem>
                                    <asp:ListItem value="5">Morar URBAN- 1</asp:ListItem>
                                    <asp:ListItem >Morar URBAN- 2</asp:ListItem>--%>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <%--<div class="col-md-3">
                            <div class="form-group" id="Raisen" visible="false">
                                <asp:DropDownList runat="server" id="blockGroupRaisen" class="form-control" onchange="filterTable()">
                                    <asp:ListItem value="0">Select</asp:ListItem>
                                    <asp:ListItem value="1">Badi</asp:ListItem>
                                    <asp:ListItem value="2">Begamganj</asp:ListItem>
                                    <asp:ListItem value="3">Gairatganj</asp:ListItem>
                                    <asp:ListItem value="4">Obedullaganj</asp:ListItem>
                                    <asp:ListItem value="5">Sanchi</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group" id="Sehore" visible="false">
                                <asp:DropDownList runat="server" id="blockGroupSehore" class="form-control" >
                                    <asp:ListItem value="0">Select</asp:ListItem>
                                    <asp:ListItem value="1">Sehore</asp:ListItem>
                                    <asp:ListItem value="2">Budhani</asp:ListItem>
                                    <asp:ListItem value="3">Ichhawar</asp:ListItem>
                                    <asp:ListItem value="4">Nasrullaganj</asp:ListItem>
                                    <asp:ListItem value="5">Sehore</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group" id="Vidisha" visible="false">
                                <asp:DropDownList runat="server" id="blockGroupVidisha" class="form-control" >
                                    <asp:ListItem value="0">Select</asp:ListItem>
                                    <asp:ListItem value="1">Basoda</asp:ListItem>
                                    <asp:ListItem value="2">Gyaraspur</asp:ListItem>
                                    <asp:ListItem value="3">Kurwai</asp:ListItem>
                                    <asp:ListItem value="4">Lateri</asp:ListItem>
                                    <asp:ListItem value="5">Sironj</asp:ListItem>
                                    <asp:ListItem value="6">Vidisha</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group" id="Gwalior" visible="false">
                                <asp:DropDownList runat="server" id="blockGwalior" CssClass="form-control" >
                                    <asp:ListItem value="6">select</asp:ListItem>
                                    <asp:ListItem value="1">Dabra</asp:ListItem>
                                    <asp:ListItem value="2">Bhitarwar</asp:ListItem>
                                    <asp:ListItem value="3">Ghatigaon</asp:ListItem>
                                    <asp:ListItem value="4">Morar Rural</asp:ListItem>
                                    <asp:ListItem value="5">Morar URBAN- 1</asp:ListItem>
                                    <asp:ListItem value="6">Morar URBAN- 2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>




                    <%--<div class="col-md-3">
                            <div class="form-group" >
                                <label>School Name/ स्कूल का नाम<span style="color: red">*</span></label>
                                 <select runat="server" id="ddlschool" class="form-control select2">
                                    <option value="0">	--select--</option> </select>
                                <select runat="server" id="ddlbhopal" class="form-control select2" visible="false">
                                    <option value="1">	Schools in Barkhedi (girls) Govt.hss Cluster</option>
                                    <option value="1">Schools in Jahangirabad (girls) Hss Cluster</option>
                                    <option value="1">Schools in Nishatpura Govt, Hss Cluster</option>
                                    <option value="1">Schools in Station Area (boys) Hss Cluster</option>
                                    <option value="1">Schools in Station Area (girls) Hss Cluster</option>
                                     </select>
                                 <select runat="server" id="ddlraisen" class="form-control select2" visible="false">
                                    <option value="2">GPS AMAPANI KHURD(1-5)</option>
                                    <option value="2">GPS GHATPURA(1-5)</option>
                                    <option value="2">GPS AMGAWAN(1-5</option>
                                    <option value="2">GPS ARJANI(1-5)</option>
                                    <option value="2">GPS BAGWADA(1-5)</option>
                                    <option value="2">GPS CHHIR PIPALIYA</option>
                                    <option value="2">GHS CHHIND</option>
                                    <option value="2">GGMS CHHIND</option>
                                    <option value="2">GHS CHANDANPIPALIYA</option> </select>
                                      <select runat="server" id="ddlsehore" class="form-control select2" visible="false">
                                    <option value="3">GMS G. SARDAR PATEL</option>
                                    <option value="3">GPS AMBEDKAR</option>
                                    <option value="3">GPS GOPALPURA</option>
                                    <option value="3">GMS ABHYAS</option>
                                    <option value="3">GPS MURLI</option>
                                    <option value="3">GPS MACHHLI BAZAR</option>
                                    <option value="3">P.S.KALLIGHATI</option>
                                          </select>
                                      <select runat="server" id="ddlvidisha" class="form-control select2" visible="false">
                                    <option value="4">GPS JAMBAR</option>
                                    <option value="4">GPS NIMKHIRIA</option>
                                    <option value="4">GHS BARRO </option>
                                    <option value="4">GMS BALA BARKHEDA</option>
                                    <option value="4">GPS SUROD</option>
                                    <option value="4">GHSS SONTHIYA</option>
                                    <option value="4">GHS CHANDANGAON</option>
                                    <option value="4">GPS GANGAI</option>
                                          </select>
                                      <select runat="server" id="ddlgwalior" class="form-control select2" visible="false">
                                    <option value="5">NGPS KHITARA</option>
                                    <option value="5">GMS SURHELA</option>
                                    <option value="5">GMS BADAGAON </option>
                                    <option value="5">GPS UMMEDGAR</option>
                                    <option value="5">GMS PEHASARI </option>
                                    <option value="5">GPS PEEL KHANA</option>
                                    <option value="5">NGPS TILAWALI</option>
                                </select>
                            </div>
                        </div>--%>
                </div>
            </fieldset>
            <fieldset id="tableBERASIA" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BEO, BERASIA</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BRC, BERAISA</td>
                                        <td>24</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>24</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>CMRISE  (Campus)-GOVT PS MAHUAKHEDA (W-12/14) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>GOVT HS BAGSI (CLASS 6 TO 10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>GOVT HS BAWACHIA (CLASS 9 TO 10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>GOVT HS BEELKHO (Class 9 to 10)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GOVT HS DHAMARRA (Class 9  to 10)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GOVT HS DHOOTKHEDI (Class 9 to 10)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GOVT HS DILLOD (Class 9 to 10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GOVT HS GADA KALA (Class 9 to 10)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GOVT HS HIRANKHEDI (Class 1 to 10)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GOVT HS IMALIA NARENDRA (Class 1 to 10)</td>
                                        <td>12</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GOVT HS JAMUSAR KALAN (Class 1 to 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GOVT HS KADIYA CHANWAR (Class 1 to 10)</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GOVT HS KALARA (Class 9 to 10)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GOVT HS KHITWAS (Class 9 to 10)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GOVT HS MENGRA KALAN (Class 9 to 10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GOVT HS NALKHEDA (Class 6 to 10)</td>
                                        <td>9</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GOVT HS PARSORA (Class 1 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GOVT HS RANI KHAJURI (Class 1 to 10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GOVT HS RATUA (Class 6 to 10)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GOVT HS SINDHODA (Class 6 to 10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GOVT HS SURAJPURA (Class 9 to 10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GOVT HSS GIRLS, SAROJINI NAIDU (Class 1 to 12)</td>
                                        <td>42</td>
                                        <td>42</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GOVT HSS GUNGA (Class 1 to 12)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GOVT HSS HARRAKHEDA (Class 6 to 12)</td>
                                        <td>24</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>24</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GOVT HSS LALARIYA (Class 6 to 12)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GOVT HSS NAJEERABAD (Class 9 to 12)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GOVT HSS NAYSAMAND (Class 9 to 12)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GOVT HSS RUNAHA (Class 9 to 12)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GOVT HSS SOHAYA (Class 9 to 12)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GOVT MODEL HSS HARRAKHEDA, BERASIA (Class 6 to 12)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GOVT MS AANKIYA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GOVT MS AMARPUR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GOVT MS ARJUN KHEDI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GOVT MS BAHRAWAL (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GOVT MS BAIRAGARH (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GOVT MS BANDARUA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GOVT MS BARKHEDA BARAMAD (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GOVT MS BARKHEDA KALA (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GOVT MS BARKHEDI DEV GADA KALA (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GOVT MS BARODI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GOVT MS BARRAI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GOVT MS BARRI CHHIRKHEDA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GOVT MS BARRI NATHU, BARRI BAGRAJ (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GOVT MS BAWACHIA (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GOVT MS BEELKHO (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GOVT MS BERKHEDI KALAN (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GOVT MS BHAINSKHEDA - II (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GOVT MS BHAINSODA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GOVT MS BHAKWAHA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GOVT MS BHATNI (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GOVT MS BHOJAPURA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GOVT MS BOYS, BASAI (SUBHASH) (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GOVT MS CHANDA SALOI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GOVT MS CHATAHEDI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GOVT MS DAMEELA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GOVT MS DAMKHEDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GOVT MS DHAMANTODI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GOVT MS DHAMARRA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GOVT MS DHATURIA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GOVT MS DHEKPUR (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GOVT MS DHOOTKHEDI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GOVT MS DILLOD (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GOVT MS DOHAYA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GOVT MS DONGARGAON (Class 1 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GOVT MS DUNGARIA (LATE THA JAAGAN) (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GOVT MS GADA BRAHMAN (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GOVT MS GANGA PIPALIYA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GOVT MS GARETHIYA KHALSA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GOVT MS GHOGALPUR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GOVT MS GIRLS, BASAI (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GOVT MS GODIYA SANKHEDA (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GOVT MS GONDIPURA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GOVT MS GOOJARTODI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GOVT MS HABIBGANJ (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GOVT MS HAMEEDKHEDI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GOVT MS HINOUTI SADAK (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GOVT MS IJGIRI (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GOVT MS INDARPURA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GOVT MS JAITPURA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GOVT MS JANAKPUR, HINGONI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GOVT MS JAWAHAR BERASIA (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GOVT MS JHIRNIA KANKAD (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GOVT MS JHIRNIYA CHHAPRI (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GOVT MS JUNAPANI (JUNAPANI) (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GOVT MS KACHNARIA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GOVT MS KADIYA KOTA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GOVT MS KADIYA SHAH (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GOVT MS KALARA (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GOVT MS KANDIKHEDI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GOVT MS KARARIYA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GOVT MS KARONDIYA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GOVT MS KHAIRYAI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GOVT MS KHAJURI RAKU (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GOVT MS KHAJURIYA RAMDAS (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GOVT MS KHANDARIYA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GOVT MS KHATAKHEDI (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GOVT MS KHEJDA GHAT (ARJUN KHEDI) (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GOVT MS KHEJDA KALYANPUR (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GOVT MS KHEJDA MISHRA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GOVT MS KHEJDA PARIHAR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GOVT MS KHOOTIYA PURA (SANDEEPAN) (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GOVT MS KHUKARIYA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GOVT MS KOLHUKHEDI JUNGLE (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GOVT MS KOLUKHEDI JAGIR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GOVT MS KOTRA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GOVT MS KOTRA CHOPDA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GOVT MS KULHOR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GOVT MS KUTKIPURA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GOVT MS LAHARPUR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GOVT MS LALUKHEDI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GOVT MS LANGARPUR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GOVT MS MAHOLI (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GOVT MS MAJEEDGARH (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GOVT MS MANGALGARH (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GOVT MS MANIKHEDI (MANGALGARH) (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GOVT MS MANIKHEDI (MANIKHEDI)DILLOD(Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GOVT MS MANKHYAI (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GOVT MS MANSAPURAN JAMUSAR KALAN (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GOVT MS MAULANA AZAD (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>GOVT MS MENGRA KALAN (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GOVT MS MUNDLA CHAND (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>GOVT MS MUNDLA CHHATAN (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>GOVT MS NAJEERABAD (Class 6 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>GOVT MS NARELA DAMODAR (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>GOVT MS NEECHI LALOI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>GOVT MS NEEMKHEDI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>GOVT MS NIDANPUR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>GOVT MS PANIYA, JAMUSAR KALAN (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>GOVT MS PARSORIYA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>GOVT MS PATALPUR (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>GOVT MS PEEPALKHEDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>GOVT MS PEEPALKHEDI, ARRAWATI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>GOVT MS PIPALIA HASNABAD (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>GOVT MS PIPALKHEDI(Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>GOVT MS RAMAHA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>GOVT MS RAMPURA (BALACHON) (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>GOVT MS RAWATPURA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>GOVT MS RONDIA (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>GOVT MS RONJHIA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>GOVT MS RUNAHA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>GOVT MS SAPOUA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>GOVT MS SEMRA BHAINROPURA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>GOVT MS SEMRA KALAN (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>GOVT MS SOHAYA (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>GOVT MS SONKACHH (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>GOVT MS SUKALIYA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>GOVT MS SUNGA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>GOVT MS SURANA (Class 1 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>GOVT MS TANDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>GOVT MS TARAWALI KHURD (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>GOVT MS UNDRAI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>GOVT MS VIMUKT JATI I ASHRAM (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>GOVT MS VINEKA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>GOVT MS VIRAH SHYAMKHEDI (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>GOVT PS , LALARIYA (Class 1 to 5)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>GOVT PS AAMALYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>GOVT PS AANVLI KHEDA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>GOVT PS ADIWASI TOLA (UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>GOVT PS AJABPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>GOVT PS AMARPUR (UEGS) DEVALKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>GOVT PS AMARPUR CHHOTI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>GOVT PS ARAYEE RAO SINGH(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>GOVT PS ARJUN KHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>GOVT PS ARRAI SARDAR SINGH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>GOVT PS BABU KHEDI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>GOVT PS BADBELI KHURD (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>GOVT PS BADLI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>GOVT PS BADVELI KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>GOVT PS BAGAPURA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>GOVT PS BAGRAJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>GOVT PS BAGSI (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>GOVT PS BAHEDA PURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>GOVT PS BAIJA KHEDI, JAMUSAR KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>GOVT PS BALACHOUN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>GOVT PS BANDIKHEDI (MEGRA NAVEEN) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>GOVT PS BANDIKHEDI (RATUA) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>GOVT PS BARBATPURA (UEGS) GHOGALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>GOVT PS BARELA KHEDA  DAULATPURA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>GOVT PS BARELAKHEDA (BAIRAGARH) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>GOVT PS BARKHEDA KALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>GOVT PS BARKHEDA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>GOVT PS BARKHEDA MOUJI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>GOVT PS BARKHEDA YAKOOB (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>GOVT PS BARKHEDI BARAMAD (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>GOVT PS BARKHEDI DEV GAD, GADA KALA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>GOVT PS BARKHEDI KHURD (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>GOVT PS BARRI GOOJAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>GOVT PS BARRIER TOLA, HINOTIYA GHAT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>GOVT PS BAWACHIA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>GOVT PS BAWDIKHAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>GOVT PS BEDIYAPURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>GOVT PS BEEJAPURA (MAJEEDGARH)(Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>GOVT PS BEJAKHEDI (UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>GOVT PS BERKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>GOVT PS BHAINSA KHEDA - III (class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>GOVT PS BHAINSKHEDA - I (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>GOVT PS BHAIRO PURA (BAWACHIA) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>GOVT PS BHAIRO PURA (KULHOR) (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>GOVT PS BHAISANA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>GOVT PS BHAKWAHA TOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>GOVT PS BHAMORA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>GOVT PS BHAMORI (UEGS) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>GOVT PS BHANPUR (UEGS) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>GOVT PS BHANWARDA (UEGS) SUNGA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>GOVT PS BHATIYA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>GOVT PS BHAUPURA (UEGS) BHAUPURA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>GOVT PS BHORASA, BARRI CHHIRKHEDA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>GOVT PS BHUGANYAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>GOVT PS BHUJPURA KALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>GOVT PS BIJAWAN KALAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>GOVT PS BIJORI TAPRA (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>GOVT PS BIJORIPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>GOVT PS BODPURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>GOVT PS BOYS, DUNGARIA (LALSINGH )(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>GOVT PS BOYS, HARRAKHEDA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>GOVT PS BOYS, NAJEERABAD (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>GOVT PS BOYS.GUNGA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>GOVT PS BUDHOR KALA, BARRI BAGRAJ (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>GOVT PS BUGALI (UEGS) BUGLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>GOVT PS CHANDANKHEDI (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>GOVT PS CHANDBAD KADEEM (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>GOVT PS CHANDRAPURA (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>GOVT PS CHANNA KHEDA (UEGS) RUNAHA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>227</td>
                                        <td>GOVT PS CHAPADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>228</td>
                                        <td>GOVT PS CHARPAHADI (KULHOR)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>229</td>
                                        <td>GOVT PS CHARPAHADI(BARKHEDA BA)(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>230</td>
                                        <td>GOVT PS CHATAHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>231</td>
                                        <td>GOVT PS CHATOUA, ARRAWATI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>232</td>
                                        <td>GOVT PS CHHAK KHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>233</td>
                                        <td>GOVT PS CHHAPRIYAI,  (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>234</td>
                                        <td>GOVT PS CHHIPA PURA (WARD NO.5) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>235</td>
                                        <td>GOVT PS CHOUKAN TOLA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>236</td>
                                        <td>GOVT PS DAAIPURA (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>237</td>
                                        <td>GOVT PS DAMKHEDA (DEVI NAGAR) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>238</td>
                                        <td>GOVT PS DANGROULI,  (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>239</td>
                                        <td>GOVT PS DARBAJEE (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>240</td>
                                        <td>GOVT PS DAULATPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>241</td>
                                        <td>GOVT PS DEVAL KHEDA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>242</td>
                                        <td>GOVT PS DEVALKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>243</td>
                                        <td>GOVT PS DEVAPURA (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>244</td>
                                        <td>GOVT PS DHAMANTODI PURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>245</td>
                                        <td>GOVT PS DHOKA PURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>246</td>
                                        <td>GOVT PS DOJYAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>247</td>
                                        <td>GOVT PS GADA BRAHMAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>248</td>
                                        <td>GOVT PS GANAKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>249</td>
                                        <td>GOVT PS GANDHINAGAR (UEGS) RAMAHA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>250</td>
                                        <td>GOVT PS GANGAKHEDI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>251</td>
                                        <td>GOVT PS GANGAPURA (UEGS) GANGAPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>252</td>
                                        <td>GOVT PS GANIYARI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>253</td>
                                        <td>GOVT PS GARENTHIYA (KULHOR) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>254</td>
                                        <td>GOVT PS GARETHIYA BAJYAFAT, DUNGARIA(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>255</td>
                                        <td>GOVT PS GHATKHEDI (DHATURIA)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>GOVT PS GIRLS BLOCK (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>257</td>
                                        <td>GOVT PS GIRLS, DHAMARRA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>258</td>
                                        <td>GOVT PS GIRLS, DHATURIA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>259</td>
                                        <td>GOVT PS GIRLS, GUNGA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>260</td>
                                        <td>GOVT PS GIRLS, KARONDIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>261</td>
                                        <td>GOVT PS GIRLS, NAJEERABAD (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>262</td>
                                        <td>GOVT PS GIRLS, SOHAYA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>263</td>
                                        <td>GOVT PS GODIYA SANKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>264</td>
                                        <td>GOVT PS GOLKUNDA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>265</td>
                                        <td>GOVT PS GONDAKHEDI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>266</td>
                                        <td>GOVT PS GORIYA (UEGS) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>267</td>
                                        <td>GOVT PS HAMEEDKHEDI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>268</td>
                                        <td>GOVT PS HARIPUR (DHATURIA) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>269</td>
                                        <td>GOVT PS HARIPUR (NAYSAMAND) (UEGS) (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>270</td>
                                        <td>GOVT PS HEERAPUR (VARRI CHHIRKH)Class (1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>271</td>
                                        <td>GOVT PS HEERAPUR TALAB (UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>272</td>
                                        <td>GOVT PS HINGONI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>273</td>
                                        <td>GOVT PS HINOTI KRESHAR (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>274</td>
                                        <td>GOVT PS HINOTIYA JAGEER (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>275</td>
                                        <td>GOVT PS HINOTIYA PEERAN, BARRAI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>276</td>
                                        <td>GOVT PS HINOUTI SADAK, HINOUTI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>277</td>
                                        <td>GOVT PS IBRAHIMPURA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>278</td>
                                        <td>GOVT PS IMALIYA SWAROOP (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>279</td>
                                        <td>GOVT PS IMLA (UEGS) SEMRI KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>280</td>
                                        <td>GOVT PS INDIRA AWAS BAIRAGARD (UEGS)(Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>281</td>
                                        <td>GOVT PS INDIRA AWAS DUNGRIYA (UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>282</td>
                                        <td>GOVT PS JAFRABAD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>283</td>
                                        <td>GOVT PS JAGMERI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>284</td>
                                        <td>GOVT PS JAJANKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>285</td>
                                        <td>GOVT PS JAMUSAR KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>286</td>
                                        <td>GOVT PS JANGALIYAPURA (UEGS)  (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>287</td>
                                        <td>GOVT PS JHAGAR (UEGS) JAMUSAR KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>288</td>
                                        <td>GOVT PS JHIKARIYA KALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>289</td>
                                        <td>GOVT PS JHIKARIYA KHURD (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>290</td>
                                        <td>GOVT PS JUNAPANI (KHITWAS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>291</td>
                                        <td>GOVT PS KADHAIYA BRAHMAN (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>292</td>
                                        <td>GOVT PS KADHAIYA KALA,BARKHEDA KHURD(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>293</td>
                                        <td>GOVT PS KADHAIYA KHURD (KACHHIPURA) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>294</td>
                                        <td>GOVT PS KADIYA KHOH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>295</td>
                                        <td>GOVT PS KADIYA KOTA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>296</td>
                                        <td>GOVT PS KALAPATHA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>297</td>
                                        <td>GOVT PS KALAPEEPAL (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>298</td>
                                        <td>GOVT PS KALYANPUR (UEGS)  (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>299</td>
                                        <td>GOVT PS KANERA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>300</td>
                                        <td>GOVT PS KARANPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>301</td>
                                        <td>GOVT PS KAROLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>302</td>
                                        <td>GOVT PS KEETGARH (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>303</td>
                                        <td>GOVT PS KEETKHEDI IMALIA SWAROOP(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>304</td>
                                        <td>GOVT PS KESHUKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>305</td>
                                        <td>GOVT PS KHADIMPUR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>306</td>
                                        <td>GOVT PS KHAIKHEDA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>307</td>
                                        <td>GOVT PS KHAIRKHEDA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>308</td>
                                        <td>GOVT PS KHAIRKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>309</td>
                                        <td>GOVT PS KHAJURIYA KALAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>310</td>
                                        <td>GOVT PS KHAJURIYA RAMDAS (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>311</td>
                                        <td>GOVT PS KHARIPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>312</td>
                                        <td>GOVT PS KHATAKHEDI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>313</td>
                                        <td>GOVT PS KHEDALI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>314</td>
                                        <td>GOVT PS KHEDI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>315</td>
                                        <td>GOVT PS KHEJDA BABBAR BARRI BAGRAJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>316</td>
                                        <td>GOVT PS KHEJDA GHAT (SINDHODA) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>317</td>
                                        <td>GOVT PS KHEJDA GOPI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>318</td>
                                        <td>GOVT PS KHEJDA KALYANPUR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>319</td>
                                        <td>GOVT PS KHIDIYA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>320</td>
                                        <td>GOVT PS KHUJA KHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>321</td>
                                        <td>GOVT PS KITAI DEVAPURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>322</td>
                                        <td>GOVT PS KOLA (UEGS) SOHAYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>323</td>
                                        <td>GOVT PS KOLHUKHEDI SADAK (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>324</td>
                                        <td>GOVT PS KUTKIPURA(SUNGA)(UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>325</td>
                                        <td>GOVT PS LADIYA BARRI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>326</td>
                                        <td>GOVT PS LAKHAPURA (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>327</td>
                                        <td>GOVT PS LALGHATI KRESHER (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>328</td>
                                        <td>GOVT PS LATIFPUR (UEGS) LATEEFPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>329</td>
                                        <td>GOVT PS LAXMANPURA MANIKHEDI(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>330</td>
                                        <td>GOVT PS MAHIYA TOLA (SATE) GONDIPUR(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>331</td>
                                        <td>GOVT PS MAHOLI (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>332</td>
                                        <td>GOVT PS MAHUAKHEDA (VIRAHshyam (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>333</td>
                                        <td>GOVT PS MAINA PURA  (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>334</td>
                                        <td>GOVT PS MAINAPURA KOLUKHEDI KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>335</td>
                                        <td>GOVT PS MAJEEDGARH (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>336</td>
                                        <td>GOVT PS MAJHEDA MAJHEDI NEEMKHEDI(Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>337</td>
                                        <td>GOVT PS MALIPURA (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>338</td>
                                        <td>GOVT PS MALKARI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>339</td>
                                        <td>GOVT PS MANAKUND (GADAKALA) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>340</td>
                                        <td>GOVT PS MANKHYAI, IMALIA NARENDRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>341</td>
                                        <td>GOVT PS MANPURA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>342</td>
                                        <td>GOVT PS MANPURA CHAK (UEGS) MANPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>343</td>
                                        <td>GOVT PS MATHNAKUND KOTRA CHOPDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>344</td>
                                        <td>GOVT PS MEETHI CHHAPRI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>345</td>
                                        <td>GOVT PS MENGRA NAVEEN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>346</td>
                                        <td>GOVT PS MEVADAPURA (UEGS) PARASON (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>347</td>
                                        <td>GOVT PS MOTIPURA (SATE) INDRAPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>348</td>
                                        <td>GOVT PS MOTIPURA (UEGS) TANDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>349</td>
                                        <td>GOVT PS MOTIYA KHEDA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>350</td>
                                        <td>GOVT PS MUDIAKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>351</td>
                                        <td>GOVT PS MUNDLA CHAND (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>352</td>
                                        <td>GOVT PS NAAMDARPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>353</td>
                                        <td>GOVT PS NAHARIYA, BARRI CHHIRKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>354</td>
                                        <td>GOVT PS NALKHEDA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>355</td>
                                        <td>GOVT PS NANDGAON (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>356</td>
                                        <td>GOVT PS NARELA WAJYAFAT (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>357</td>
                                        <td>GOVT PS NAYAPURA (GANGAKHEDI) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>358</td>
                                        <td>GOVT PS NAYAPURA CHAPADIYA(Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>359</td>
                                        <td>GOVT PS NEEMKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>360</td>
                                        <td>GOVT PS NETAPURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>361</td>
                                        <td>GOVT PS NIDANPUR TOLA (UEGS)Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>362</td>
                                        <td>GOVT PS PADLI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>363</td>
                                        <td>GOVT PS PARASON (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>364</td>
                                        <td>GOVT PS PARAWARIA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>365</td>
                                        <td>GOVT PS PARDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>366</td>
                                        <td>GOVT PS PARDI TOLA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>367</td>
                                        <td>GOVT PS PASIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>368</td>
                                        <td>GOVT PS PATHARIYA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>369</td>
                                        <td>GOVT PS PATLA PANI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>370</td>
                                        <td>GOVT PS PIPAL KHEDI BARRICHHIRKHEDA(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>371</td>
                                        <td>GOVT PS PIPALIA HASNABAD (Class 1 to 5)</td>
                                        <td>9</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>372</td>
                                        <td>GOVT PS PIPALIYA JUNNARDAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>373</td>
                                        <td>GOVT PS PIPALIYA KADEEM (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>374</td>
                                        <td>GOVT PS POLA BAHEDA SEMRI KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>375</td>
                                        <td>GOVT PS POLASGANJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>376</td>
                                        <td>GOVT PS PURAKHANA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>377</td>
                                        <td>GOVT PS RAMNAGAR COLONY BARODI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>378</td>
                                        <td>GOVT PS RAMPURA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>379</td>
                                        <td>GOVT PS RAMTEK (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>380</td>
                                        <td>GOVT PS RANI KHAJURI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>381</td>
                                        <td>GOVT PS RATUA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>382</td>
                                        <td>GOVT PS RECHHAI  (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>383</td>
                                        <td>GOVT PS REHTAI (UEGS) REHTAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>384</td>
                                        <td>GOVT PS RUMGADA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>385</td>
                                        <td>GOVT PS RUSSALI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>386</td>
                                        <td>GOVT PS SAGONI JOR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>387</td>
                                        <td>GOVT PS SAGONI KALAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>388</td>
                                        <td>GOVT PS SAHODARA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>389</td>
                                        <td>GOVT PS SALOI SINGRAJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>390</td>
                                        <td>GOVT PS SAPERA BASTI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>391</td>
                                        <td>GOVT PS SATTI TOLA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>392</td>
                                        <td>GOVT PS SEMARA JAGIR (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>393</td>
                                        <td>GOVT PS SEMRI KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>394</td>
                                        <td>GOVT PS SEMRI KHURD (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>395</td>
                                        <td>GOVT PS SHAHPUR (UEGS) SHAHPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>396</td>
                                        <td>GOVT PS SHUKLA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>397</td>
                                        <td>GOVT PS SINDHODA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>398</td>
                                        <td>GOVT PS SIYAAR KALA (UEGS) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>399</td>
                                        <td>GOVT PS SUMER (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>400</td>
                                        <td>GOVT PS SUNDARPURA(UEGS) (Clas 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>401</td>
                                        <td>GOVT PS TARAWALI KALAN (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>402</td>
                                        <td>GOVT PS TEELA MONPURA MONAPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>403</td>
                                        <td>GOVT PS THIKARIYA BARAMAD INDRAPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>404</td>
                                        <td>GOVT PS TIKAN KHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>405</td>
                                        <td>GOVT PS UMARIA (SINDHODA) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>406</td>
                                        <td>GOVT PS UMARWADI CHANDA SALOI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>407</td>
                                        <td>GOVT PS UNCHI LALOI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>408</td>
                                        <td>GOVT PS UNEENDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>409</td>
                                        <td>GOVT PS VEERPURA (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>410</td>
                                        <td>GOVT PS VICHHNAI (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>411</td>
                                        <td>GOVT PS VIJAVAN KHURD (UEGS)  (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>412</td>
                                        <td>GOVT PS VIJORI TAPRA SEMRI KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>413</td>
                                        <td>Govt. PS (English Medium) Gunga (1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>414</td>
                                        <td>PS DhanoraDS@23320116801</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>415</td>
                                        <td>PS Gadha KalaDS@23320108603</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>416</td>
                                        <td>PS Mangal GarhDS@23320119001</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tableGRAMIN" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BRC, PHANDA GRAMIN</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>CMRISE GOVT HS BARRAI (Class KG to 12)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>GOVT HS  NAVEENBASTI KANASAIYA(Class 1 to 10)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>GOVT HS AMRAWAD KALAN (Class 1 to 10)</td>
                                        <td>12</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>GOVT HS BADJHIRI (Class 9 to 10)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>GOVT HS BAKANIYA (Class 9 to 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>GOVT HS BALAMPUR (Class 1 to 10)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GOVT HS BANGRASIYA (Class 1 to 10)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GOVT HS BARKHEDA BONDAR (Class 1 to 10)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GOVT HS BARKHEDA NATHU (Class 9 to 10)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GOVT HS BHAGAT SINGH BARKHEDA SALAM (Class-6 To 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GOVT HS GANIYARI (Class 1 to 10 )</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GOVT HS JAMUNIA KALAN (Class 6 to 10)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GOVT HS KALAPANI (Class 9 to 10)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GOVT HS KHAMKHEDA (Class 1 to 10)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GOVT HS MANGAL PANDEY SUKHI SEVANIA (Class-1 To 10)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GOVT HS NAVEEN CHHAWANI ADAMPUR (Class 9 to 10)</td>
                                        <td>18</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>18</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GOVT HS NIPANIYA JAAT (Class 9 to 10)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GOVT HS PIPALIYA JAHIRPEER (Class 1 to 10)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GOVT HS PREMPURA (Class 9 to 10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GOVT HS RAIPUR (Class 6 to 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GOVT HSS BAGRODA (Class 1 to 12)</td>
                                        <td>20</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>20</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GOVT HSS CHANDR SHEKAHR AZAD RATIBARH (Class- 1 To 12)</td>
                                        <td>27</td>
                                        <td>18</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GOVT HSS ENNTKHEDI (Class 9 to 12)</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR) (Class- 6 To 12)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GOVT HSS MUGALIYA CHHAP (Class 1 to 12)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GOVT HSS NIPANIYA SUKHA (Class 9 to 12)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GOVT HSS PADARIA KACHHI (Class 1 to 12)</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GOVT HSS PANDIT DEENDAYAL UPADHYAY TEELAKHEDI (Class- 1 To 12)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GOVT HSS PARWALIA SADAK (Class 1 to 12)</td>
                                        <td>33</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>33</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GOVT HSS SARDAR VALLBH BHAI PATEL BHONRI (Class- 9 To 12)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GOVT HSS SHAHPUR (Class 9 to 12)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GOVT HSS TARA SEVANIA (Class 6 to 12)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GOVT HSS TUMDA (Class 1 to 12)</td>
                                        <td>16</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GOVT MS ACHARPURA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GOVT MS ADAMPUR CHHAWNI (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GOVT MS AGARIYA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GOVT MS AMJHARA (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GOVT MS AMLA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GOVT MS AMONI JUNGLE (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GOVT MS AREDE (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GOVT MS ARWALIA (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GOVT MS ASHFAK ULLA KHAN KOLUKHEDI  (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GOVT MS BADJHIRI (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GOVT MS BAGONIA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GOVT MS BARKHEDI ABDULLAH (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GOVT MS BHONRI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GOVT MS BILKHIRIYA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GOVT MS BORDA (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GOVT MS BORKHEDI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GOVT MS CHANDERI (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GOVT MS CHANDUKHEDI (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GOVT MS CHOPDA KALAN (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GOVT MS DEEPDI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GOVT MS DEHRI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GOVT MS DHAMANIA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GOVT MS DOBARA JAGIR, KOLUA KHURD(Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GOVT MS DOBRA (RATIBARH) (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GOVT MS DR. BHEEMRAO AMBEDKAR GOL (Class- 1 To 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GOVT MS DUPADIYA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GOVT MS ENTKHEDI CHHAP (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GOVT MS FATEHPUR, MUGALIYA KOT (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GOVT MS GIRLS, BEENAPUR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GOVT MS GURADIGHAT (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GOVT MS GURADIYA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GOVT MS HINOTIA JAGEER (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GOVT MS IMALIA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GOVT MS ISLAM NAGAR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GOVT MS JAMUNIA CHHER (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GOVT MS JHIRNIYA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GOVT MS KACHHI BARKHEDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GOVT MS KADHAIYA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GOVT MS KALKHEDA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GOVT MS KANHA SAIYA (Class 6 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GOVT MS KEKADIYA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GOVT MS KHAJURI (RATATAL) (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GOVT MS KHAJURI SADAK (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GOVT MS KHARPA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GOVT MS KHARPI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GOVT MS KHEJDA DEV (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GOVT MS KHURCHANI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GOVT MS KODIYA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GOVT MS KURANA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GOVT MS KUTHAR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GOVT MS LAKHAPURA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GOVT MS LAMBA KHEDA (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GOVT MS MENDORI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GOVT MS MUGALIYA HAAT (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GOVT MS MUGALIYA KOT (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GOVT MS MUNDLA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GOVT MS NAROHNA SANKAL (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GOVT MS NAVEEN CHHAWANI, ADAMPUR CHHAWNI (1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GOVT MS NEELBAD (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GOVT MS NIPANIYA JAAT (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GOVT MS NIPANIYA SUKHA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GOVT MS PADARIA JAAT (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GOVT MS PIPALIYA BAAJ KHAN (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GOVT MS PIPALIYA DHAKAD (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GOVT MS PREMPURA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GOVT MS PURA CHHINDWARA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GOVT MS RAJABHOJ RATANPUR SADAK (Class- 1 To 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GOVT MS RAPADIYA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GOVT MS RATANPUR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GOVT MS RATATAL (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GOVT MS SAMARDHA JUNGLE, PREMPURA(Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GOVT MS SARWAR (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GOVT MS SEMRA SAIYAD (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GOVT MS SEMRI BAJYAFAT (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GOVT MS SEVANIA OMKARA (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GOVT MS SHAHPUR (KUTHAR) (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GOVT MS SHEIKHPURA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GOVT MS SIKANDARABAD (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GOVT MS SURAIYA NAGAR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GOVT MS VISHANKHEDI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GOVT PS AIYAPUR (SATE) TUMDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GOVT PS AMARPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GOVT PS AMONI JUNGLE (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GOVT PS ANUJA VILLAGE RATANPUR SADAK(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GOVT PS AREDE KRESHAR (UEGS) AREDE (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GOVT PS ARJUN NAGAR (UEGS) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GOVT PS BAGONIA TOLA (SATE)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GOVT PS BANDARKHA SADAK (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>GOVT PS BANDORI (UEGS)SURAIYA(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GOVT PS BANGALA (UEGS)JAMUNIA CHHER (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>GOVT PS BANGLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>GOVT PS BANJARI TOLA (SATE)PREMPURA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>GOVT PS BANSIA TAPRA (SATE) BANSIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>GOVT PS BANSIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>GOVT PS BARKHEDA SALAM (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>GOVT PS BARKHEDI HAJJAM (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>GOVT PS BAWADIYA KHURD, PADARIA JAAT(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>GOVT PS BAWDI KHEDA (UEGS) AMLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>GOVT PS BERKHEDI VAJYAFT (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>GOVT PS BHADBHADA CHOWKI BARKHEDI (class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>GOVT PS BHADBHADA STN AMONI JUNGLE(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>GOVT PS BHAIRONPUR CHHAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>GOVT PS BHAIRONPURA GOLKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>GOVT PS BHANPUR (SATE) KEKADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>GOVT PS BHOJNAGAR AMRAWAD KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>GOVT PS BILKHIRIYA KHURD RATNPUR SAD(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>GOVT PS BILLORI (SATE) JHIRNIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>GOVT PS BODAKHO (UEGS) KALAPANI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>GOVT PS CHACHED FARM MUGALIYA KOT (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>GOVT PS CHANDPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>GOVT PS CHANDUKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>GOVT PS CHANDUKHEDI (UEGS) RAIPUR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>GOVT PS CHHAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>GOVT PS CHHAPAR (UEGS) AGARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>GOVT PS CHOTAKHEDA (UEGS) KALAPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>GOVT PS DANGROLI, JAMUNIA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>GOVT PS DAULATPUR THIKRIYA JHIRNIYA(Clas 01 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>GOVT PS DEHARIYA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>GOVT PS DEVALKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>GOVT PS DEVPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>GOVT PS DHOLE UMAR (UEGS) KALAPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>GOVT PS DOB (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>GOVT PS DOBRA (KHEJDA DEV) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>GOVT PS DUBADI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>GOVT PS EKTA NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>GOVT PS GADHMURRA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>GOVT PS GADMURRA TAPARA AMONI JUNGLE(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>GOVT PS GHASIPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>GOVT PS GHATI BALAMPUR UEGS (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>GOVT PS GHATKHEDI(CHOPDAKALA)IMALIA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>GOVT PS GIRLS, ISLAM NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>GOVT PS GOLKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>GOVT PS HAJJAMPURA (UEGS)HAJJAMPURA(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>GOVT PS HARIPURA, ADAMPUR CHHAWNI(Class 1 to 5))</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>GOVT PS INDIRA AWAS (KHAMKHEDA) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>GOVT PS JAMUNIA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>GOVT PS JHAGARIYA (UEGS) PADARIA JAAT(Class1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>GOVT PS JHAGARIYA KHURD (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>GOVT PS JHAPADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>GOVT PS JHIRIYA KHEDA KOLUA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>GOVT PS JHIRNIYA (UEGS) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>GOVT PS KAJLAS (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>GOVT PS KALAKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>GOVT PS KALAPEEPAL (UEGS) AGARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>GOVT PS KALYANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>GOVT PS KANERA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>GOVT PS KANHA SAIYA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>GOVT PS KARDAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>GOVT PS KAROND KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>GOVT PS KATARA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>GOVT PS KHAD BAMULIYA SURAIYA NAGAR(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>GOVT PS KHAKARDOL (UEGS) KHAKAR DOL (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>GOVT PS KHAMALA KHEDI KHARKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>GOVT PS KHANDABAD (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>GOVT PS KHARKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>GOVT PS KHOHRI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>GOVT PS KOHDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>GOVT PS KOLUA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>GOVT PS KOLUKHEDI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>GOVT PS KOTRA (UEGS) SURAIYA NAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>GOVT PS KRESHAR BHOUNRI (SATE) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>GOVT PS LALOOTAPRA (UEGS) BALAMPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>GOVT PS LALPURA TAPRA,JAMUNIA KAL(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>GOVT PS MAKSI (EGS) CHHAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>GOVT PS MALIKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>GOVT PS MANIKHEDI KOT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>GOVT PS MASTIPURA (UEGS)ISLAM NAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>GOVT PS MENDORA (UEGS) MENDORA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>GOVT PS MOMANPUR (UEGS) KADHAIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>GOVT PS MUBARAKPUR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>GOVT PS NAANDNI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>GOVT PS NARELA HANUMANT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>GOVT PS NEELBAD (RASULIYA PATHAR) (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>GOVT PS PACHAMA (UEGS) AMRAWAD KALAN(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>GOVT PS PAREWAKHEDA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>GOVT PS PARWALIA SANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>GOVT PS PATANIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>GOVT PS PATHAR TOLA BARKHEDI ABDH (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>GOVT PS PHANDA KALAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>GOVT PS PHANDA KHURD (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>GOVT PS PIPALIYA CHHAPARBAND (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>GOVT PS PIPALIYA DHAKAD (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>GOVT PS PIPALIYA KUNJANGARH CHHAN (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>GOVT PS PIPALIYA RANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>GOVT PS PRITHVIPURA TARA SEVANIA(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>GOVT PS PUNCHHI (UEGS) BALAMPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>GOVT PS PURA MANBHAWAN  DEVALKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>GOVT PS RAIPUR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>GOVT PS RAJIV NAGAR (UEGS) PATANIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>GOVT PS RASLAKHEDI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>GOVT PS RASULIYA BHANPUR (UEGS)  (class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>GOVT PS RASULIYA GOSAI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>227</td>
                                        <td>GOVT PS RASULIYA PATHAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>228</td>
                                        <td>GOVT PS RATIBARH (CHANDUKHEDI) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>229</td>
                                        <td>GOVT PS ROJIBEG (UEGS) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>230</td>
                                        <td>GOVT PS SAGONI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>231</td>
                                        <td>GOVT PS SAGONI CHOR,KOLUA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>232</td>
                                        <td>GOVT PS SAGONI KALA(UEGS)KOLUA KHURD(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>233</td>
                                        <td>GOVT PS SAISTA KHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>234</td>
                                        <td>GOVT PS SAMARDHA KALIASOT (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>235</td>
                                        <td>GOVT PS SAMASPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>236</td>
                                        <td>GOVT PS SAROTIPURA(SAT)RASULIYA BHAN(Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>237</td>
                                        <td>GOVT PS SEMARI KHURD (UEGS) BAGRODA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>238</td>
                                        <td>GOVT PS SEVANIA OMKARA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>239</td>
                                        <td>GOVT PS SEVANIYA(UEGS)SURAIYA NAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>240</td>
                                        <td>GOVT PS SHAHPUR (PARWALIA SADAK) (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>241</td>
                                        <td>GOVT PS SHANTI NAGAR (NAVEEN) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>242</td>
                                        <td>GOVT PS SHANTI NAGAR(KANSAIYA)(UEGS)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>243</td>
                                        <td>GOVT PS SHYAMPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>244</td>
                                        <td>GOVT PS STATION TAPRA(UEGS)(Class1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>245</td>
                                        <td>GOVT PS TAJMAHAL, KHURCHANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>246</td>
                                        <td>GOVT PS TARA SEVANIA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>247</td>
                                        <td>GOVT PS THUAKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>248</td>
                                        <td>GOVT.PS.SHANTI NAGAR(PADRIYA SANKAL)(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>249</td>
                                        <td>GOVT.PS.TANDA(PADRIYA SANKAL) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>250</td>
                                        <td>MS  Narela</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>251</td>
                                        <td>PS Girls Bhori</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>252</td>
                                        <td>PS Girls Khajuri Sadak</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>253</td>
                                        <td>PS Girls Mungaliya Hat</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>254</td>
                                        <td>PS Girls Tara Sevania</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>255</td>
                                        <td>UEGS DUPADIYA CHORAHA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tablePHANDA" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BEO, PHANDA</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BRC, PHANDA URBAN (NEW)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>CMRISE  -GOVT HSS GIRLS, GOVINDPURA, BHEL (Class KG to 12)</td>
                                        <td>40</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>40</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>CMRISE  -GOVT HSS GIRLS,KAMLA NEHRU,TIN SHED(Class KG to12)</td>
                                        <td>66</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>66</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE  -GOVT HSS MAHATMA GANDHI BHEL (Class 1 to 12)</td>
                                        <td>53</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>53</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Commissioner, Public Instructions </td>
                                        <td>413</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>413</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Commissioner, Tribal Development</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>DAEO  Bhopal</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>DEO,BHOPAL</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>DIET, BHOPAL</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>DPC, BHOPAL</td>
                                        <td>42</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>42</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>English Language Training Institute (ELTI), Bhopal</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GOVT DR. SHYAMA PRASAD MUKHARJEE HSS AKBARPUR ( KOLAR)  (Class- 6 To 12)</td>
                                        <td>31</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>29</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GOVT HS 25TH BATALIAN BHADBHADA (Class 1 to 10)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GOVT HS ASHOK NAGAR (Class 1 to 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GOVT HS BAIRAGARH CHHICHLI (Class KG to 10)</td>
                                        <td>23</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>20</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GOVT HS BARKHEDA PATHANI (Class 1 to 10)</td>
                                        <td>18</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>18</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GOVT HS BARKHEDI KHURD (Class 1 to 10)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GOVT HS GIRLS, NEHRU NAGAR (GIRLS)(Class 1 to 10)</td>
                                        <td>31</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>31</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GOVT HS HABIBGANJ (Class 1 to 10)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GOVT HS NAVAL SHAHA NAYAPURA, LALGHATI (Class- 1 To 10)</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GOVT HS RAJIV GANDHI MACHANA COLONY(Class 1 to 10)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GOVT HS SARDAR PATEL (Class 1 to 10)</td>
                                        <td>15</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GOVT HS SURAJNAGAR (BHADBHADA) (Class 6 to 12)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GOVT HSS ANAND NAGAR (Class 1 to 12)</td>
                                        <td>68</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>68</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GOVT HSS ARERA COLONY NEW(OLD CAMP)( KG TO 12)</td>
                                        <td>47</td>
                                        <td>47</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GOVT HSS BAGH SEVANIA (Class KG to 12)</td>
                                        <td>35</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>35</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GOVT HSS BAWADIYA KALA (Class 1 to 12)</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GOVT HSS BOYS, BAIRAGARH (Class KG to 12)</td>
                                        <td>43</td>
                                        <td>39</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GOVT HSS BOYS, KOTRA SULTANABAD (Class 9 to 12)</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GOVT HSS BOYS, NUTAN SUBHASH (Class 1 to 12)</td>
                                        <td>31</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>31</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GOVT HSS CHUNA BHATTI (Class 1 to 12)</td>
                                        <td>46</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>46</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GOVT HSS EX, SUBHASH,SHIVAJI (Class 9 TO 12)</td>
                                        <td>44</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>44</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GOVT HSS GIRLS, BAIRAGARH (Class 9 to 12)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GOVT HSS GIRLS, KASTURBA (Class 1 to 12)</td>
                                        <td>35</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>35</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GOVT HSS GIRLS, NAVEEN TULSI NAGAR (Class KGto 12)</td>
                                        <td>47</td>
                                        <td>43</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GOVT HSS GURUKULAM SAMBHAGIY AVASIY VIDHY (6-12)</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GOVT HSS KHAJURI KALAN (Class 9 to 12)</td>
                                        <td>16</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GOVT HSS MAHATMA GANDHI, GANDHI NAGAR (Class- 1 To 12)</td>
                                        <td>38</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>38</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GOVT HSS MLB GIRLS,BARKHEDA,BHEL (Class KG to 12)</td>
                                        <td>58</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>58</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GOVT HSS NARELA SHANKARI (Class 1 to 12)</td>
                                        <td>36</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>36</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GOVT HSS RAJA BHOJ (1100 QR.) (Class 1 to 12)</td>
                                        <td>62</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>62</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GOVT MODEL HSS GANDHI NAGAR, PHANDA(Class 9 to 12)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GOVT MS ABBAS NAGAR (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GOVT MS AMRAWAD KHURD (Class 1 to 8 )</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GOVT MS BAGH MUGALIYA NAI BASTI (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GOVT MS BAIRAGARH KALA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GOVT MS BAIRAGARH NO.1 (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GOVT MS BHAINSAKHEDI (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GOVT MS BOARD COLONY (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GOVT MS BOYS BARKHEDA (BHEL) (Class 1 to 8)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GOVT MS C.T.O. BAIRAGARH (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GOVT MS CHANDRA SHEKHAR AZAD (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GOVT MS DEEPSHIKHA (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GOVT MS GANDHI BAL MANDIR (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GOVT MS GIRLS PIPLANI (Class 1 to 8)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GOVT MS GIRLS, JASLOK (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GOVT MS GONDARMAU (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GOVT MS KHAJURI KALAN (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GOVT MS KHAJURI KHURD (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GOVT MS KOKTA (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GOVT MS MACT (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GOVT MS PURANI JAT KHEDI (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GOVT MS RANI AVANTI BAI HINOTIYA ALAM (Class- 1 To 8)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GOVT MS SALAIYA (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GOVT MS SAMRAT ASHOK (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GOVT MS SANJAY GANDHI (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GOVT MS SANJAY NAGAR (Class 1 to 8)</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GOVT MS SECURITY LINE (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GOVT MS SEMARI KALA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GOVT MS SULTANIA INFRENTARY (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GOVT MS TRT (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GOVT NAVEEN HSS MISROD (Class 1 to 12)</td>
                                        <td>37</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>37</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GOVT PS 610-D SECTOR GENHUKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GOVT PS AKBARPUR (Class 1 to 5)</td>
                                        <td>11</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GOVT PS AKBARPUR (NAVEEN) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GOVT PS AMBEDKAR NAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GOVT PS AYODHYA NAGAR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GOVT PS BAGH MUGALIYA PURANI BASTI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GOVT PS BAIRAGARH NO.3 (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GOVT PS BANJARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GOVT PS BANJARI BASTI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GOVT PS BANSKHEDI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GOVT PS BARKHEDI KALA (CLASS 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GOVT PS BDA COLONY AMRAWAD KHURD (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GOVT PS BEELKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GOVT PS BEHTA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GOVT PS BISHANKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GOVT PS BORBAND (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GOVT PS CHHAVANI SHAHPURA (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GOVT PS CHHICHLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GOVT PS DAMKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GOVT PS DAMKHEDA (UEGS) NP KOLAR (Class 1 TO 5)</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GOVT PS DAULATPUR (UEGS) NP KOLAR (Class 1 TO 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GOVT PS GANESH NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GOVT PS GENHU KHEDA (NAVEEN) (Class 1 to 5)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GOVT PS GONDBASTI BAGH MUGALIYA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GOVT PS GOURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GOVT PS HALALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GOVT PS HARSHWARDHAN NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GOVT PS HATAIKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GOVT PS INAYATPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GOVT PS LAHARPUR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GOVT PS LAUKHEDI (AIRPORT) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GOVT PS MEERANAGAR (Class 1 to 5)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GOVT PS NAVEEN JATKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GOVT PS NAYA BASERA (SHASTRI NAGAR) (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GOVT PS NEW SUBHASH NAGAR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GOVT PS PARATAP NAGAR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GOVT PS PEPALIYA KESHO (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GOVT PS PIPALIYA PENDE KHAN (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GOVT PS PIPALNER (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GOVT PS POLICE LINE (NEHRU NAGAR) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GOVT PS PREMPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GOVT PS RAMANAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GOVT PS SHAHPURA (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GOVT PS SHIVNAGAR (UEGS)  (Class 1 TO 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GOVT PS SINGAR CHOLI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GOVT PS SOHAGPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GOVT PS SURAJNAGAR (BHADBHADA) (Class 1 to 5)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GOVT PS VISHWAKARMA NAGAR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GOVT SAROJINI NAIDU GIRLS,HSS SHIVAJI NGR(1 TO 12)</td>
                                        <td>56</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>56</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>Govt. Yog Prashikshan Kendra, Bhopal</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GOVT.GYANODAYA VIDHYALAY (RES) SC HSS, KATARA HILL</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>Institute of Advanced Study in Education (IASE) , Bhopal</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>Joint Director (Education),  Bhopal</td>
                                        <td>34</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>34</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>Madhya Pradesh State State Open School Council</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>Maharshi Pathanjali Sanskrit Sansthan</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>Maulana Azad Central  Distt.  Library, Bhopal</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>Minister, School Education Department, Madhya Pradesh</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>MS  AkbarpurDS@23320303902</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>MS  Narela ShankriDS@23320303402</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>PS Abbas NagarDS@23320300106</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>PS BhainsakhediDS@23320300205</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>PS Girls GovindpuraDS@23320302904</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>PS Old Subhash Nagar</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>PS Sudama Nagar</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>Rajya Shiksha Kendra</td>
                                        <td>188</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>188</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>Rastriya  Madhyamik Shiksha Abhiyaan </td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tblPHANDAnew" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BEO, PHANDA</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BRC, PHANDA URBAN (NEW)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>CMRISE  -GOVT HSS GIRLS, GOVINDPURA, BHEL (Class KG to 12)</td>
                                        <td>40</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>40</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>CMRISE  -GOVT HSS GIRLS,KAMLA NEHRU,TIN SHED(Class KG to12)</td>
                                        <td>66</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>66</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE  -GOVT HSS MAHATMA GANDHI BHEL (Class 1 to 12)</td>
                                        <td>53</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>53</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Commissioner, Public Instructions </td>
                                        <td>413</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>413</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Commissioner, Tribal Development</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>DAEO  Bhopal</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>DEO,BHOPAL</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>DIET, BHOPAL</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>DPC, BHOPAL</td>
                                        <td>42</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>42</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>English Language Training Institute (ELTI), Bhopal</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GOVT DR. SHYAMA PRASAD MUKHARJEE HSS AKBARPUR ( KOLAR)  (Class- 6 To 12)</td>
                                        <td>31</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>29</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GOVT HS 25TH BATALIAN BHADBHADA (Class 1 to 10)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GOVT HS ASHOK NAGAR (Class 1 to 10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GOVT HS BAIRAGARH CHHICHLI (Class KG to 10)</td>
                                        <td>23</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>20</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GOVT HS BARKHEDA PATHANI (Class 1 to 10)</td>
                                        <td>18</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>18</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GOVT HS BARKHEDI KHURD (Class 1 to 10)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GOVT HS GIRLS, NEHRU NAGAR (GIRLS)(Class 1 to 10)</td>
                                        <td>31</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>31</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GOVT HS HABIBGANJ (Class 1 to 10)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GOVT HS NAVAL SHAHA NAYAPURA, LALGHATI (Class- 1 To 10)</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GOVT HS RAJIV GANDHI MACHANA COLONY(Class 1 to 10)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GOVT HS SARDAR PATEL (Class 1 to 10)</td>
                                        <td>15</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GOVT HS SURAJNAGAR (BHADBHADA) (Class 6 to 12)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GOVT HSS ANAND NAGAR (Class 1 to 12)</td>
                                        <td>68</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>68</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GOVT HSS ARERA COLONY NEW(OLD CAMP)( KG TO 12)</td>
                                        <td>47</td>
                                        <td>47</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GOVT HSS BAGH SEVANIA (Class KG to 12)</td>
                                        <td>35</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>35</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GOVT HSS BAWADIYA KALA (Class 1 to 12)</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GOVT HSS BOYS, BAIRAGARH (Class KG to 12)</td>
                                        <td>43</td>
                                        <td>39</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GOVT HSS BOYS, KOTRA SULTANABAD (Class 9 to 12)</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GOVT HSS BOYS, NUTAN SUBHASH (Class 1 to 12)</td>
                                        <td>31</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>31</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GOVT HSS CHUNA BHATTI (Class 1 to 12)</td>
                                        <td>46</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>46</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GOVT HSS EX, SUBHASH,SHIVAJI (Class 9 TO 12)</td>
                                        <td>44</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>44</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GOVT HSS GIRLS, BAIRAGARH (Class 9 to 12)</td>
                                        <td>23</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>23</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GOVT HSS GIRLS, KASTURBA (Class 1 to 12)</td>
                                        <td>35</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>35</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GOVT HSS GIRLS, NAVEEN TULSI NAGAR (Class KGto 12)</td>
                                        <td>47</td>
                                        <td>43</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GOVT HSS GURUKULAM SAMBHAGIY AVASIY VIDHY (6-12)</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GOVT HSS KHAJURI KALAN (Class 9 to 12)</td>
                                        <td>16</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GOVT HSS MAHATMA GANDHI, GANDHI NAGAR (Class- 1 To 12)</td>
                                        <td>38</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>38</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GOVT HSS MLB GIRLS,BARKHEDA,BHEL (Class KG to 12)</td>
                                        <td>58</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>58</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GOVT HSS NARELA SHANKARI (Class 1 to 12)</td>
                                        <td>36</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>36</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GOVT HSS RAJA BHOJ (1100 QR.) (Class 1 to 12)</td>
                                        <td>62</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>62</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GOVT MODEL HSS GANDHI NAGAR, PHANDA(Class 9 to 12)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GOVT MS ABBAS NAGAR (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GOVT MS AMRAWAD KHURD (Class 1 to 8 )</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GOVT MS BAGH MUGALIYA NAI BASTI (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GOVT MS BAIRAGARH KALA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GOVT MS BAIRAGARH NO.1 (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GOVT MS BHAINSAKHEDI (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GOVT MS BOARD COLONY (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GOVT MS BOYS BARKHEDA (BHEL) (Class 1 to 8)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GOVT MS C.T.O. BAIRAGARH (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GOVT MS CHANDRA SHEKHAR AZAD (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GOVT MS DEEPSHIKHA (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GOVT MS GANDHI BAL MANDIR (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GOVT MS GIRLS PIPLANI (Class 1 to 8)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GOVT MS GIRLS, JASLOK (Class 1 to 8)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GOVT MS GONDARMAU (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GOVT MS KHAJURI KALAN (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GOVT MS KHAJURI KHURD (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GOVT MS KOKTA (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GOVT MS MACT (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GOVT MS PURANI JAT KHEDI (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GOVT MS RANI AVANTI BAI HINOTIYA ALAM (Class- 1 To 8)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GOVT MS SALAIYA (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GOVT MS SAMRAT ASHOK (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GOVT MS SANJAY GANDHI (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GOVT MS SANJAY NAGAR (Class 1 to 8)</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GOVT MS SECURITY LINE (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GOVT MS SEMARI KALA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GOVT MS SULTANIA INFRENTARY (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GOVT MS TRT (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GOVT NAVEEN HSS MISROD (Class 1 to 12)</td>
                                        <td>37</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>37</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GOVT PS 610-D SECTOR GENHUKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GOVT PS AKBARPUR (Class 1 to 5)</td>
                                        <td>11</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GOVT PS AKBARPUR (NAVEEN) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GOVT PS AMBEDKAR NAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GOVT PS AYODHYA NAGAR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GOVT PS BAGH MUGALIYA PURANI BASTI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GOVT PS BAIRAGARH NO.3 (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GOVT PS BANJARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GOVT PS BANJARI BASTI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GOVT PS BANSKHEDI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GOVT PS BARKHEDI KALA (CLASS 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GOVT PS BDA COLONY AMRAWAD KHURD (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GOVT PS BEELKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GOVT PS BEHTA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GOVT PS BISHANKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GOVT PS BORBAND (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GOVT PS CHHAVANI SHAHPURA (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GOVT PS CHHICHLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GOVT PS DAMKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GOVT PS DAMKHEDA (UEGS) NP KOLAR (Class 1 TO 5)</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GOVT PS DAULATPUR (UEGS) NP KOLAR (Class 1 TO 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GOVT PS GANESH NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GOVT PS GENHU KHEDA (NAVEEN) (Class 1 to 5)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GOVT PS GONDBASTI BAGH MUGALIYA (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GOVT PS GOURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GOVT PS HALALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GOVT PS HARSHWARDHAN NAGAR (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GOVT PS HATAIKHEDA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GOVT PS INAYATPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GOVT PS LAHARPUR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GOVT PS LAUKHEDI (AIRPORT) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GOVT PS MEERANAGAR (Class 1 to 5)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GOVT PS NAVEEN JATKHEDI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GOVT PS NAYA BASERA (SHASTRI NAGAR) (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GOVT PS NEW SUBHASH NAGAR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GOVT PS PARATAP NAGAR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GOVT PS PEPALIYA KESHO (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GOVT PS PIPALIYA PENDE KHAN (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GOVT PS PIPALNER (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GOVT PS POLICE LINE (NEHRU NAGAR) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GOVT PS PREMPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GOVT PS RAMANAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GOVT PS SHAHPURA (Class 1 to 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GOVT PS SHIVNAGAR (UEGS)  (Class 1 TO 5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GOVT PS SINGAR CHOLI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GOVT PS SOHAGPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GOVT PS SURAJNAGAR (BHADBHADA) (Class 1 to 5)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GOVT PS VISHWAKARMA NAGAR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GOVT SAROJINI NAIDU GIRLS,HSS SHIVAJI NGR(1 TO 12)</td>
                                        <td>56</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>56</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>Govt. Yog Prashikshan Kendra, Bhopal</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GOVT.GYANODAYA VIDHYALAY (RES) SC HSS, KATARA HILL</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>Institute of Advanced Study in Education (IASE) , Bhopal</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>Joint Director (Education),  Bhopal</td>
                                        <td>34</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>34</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>Madhya Pradesh State State Open School Council</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>Maharshi Pathanjali Sanskrit Sansthan</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>Maulana Azad Central  Distt.  Library, Bhopal</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>Minister, School Education Department, Madhya Pradesh</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>MS  AkbarpurDS@23320303902</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>MS  Narela ShankriDS@23320303402</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>PS Abbas NagarDS@23320300106</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>PS BhainsakhediDS@23320300205</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>PS Girls GovindpuraDS@23320302904</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>PS Old Subhash Nagar</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>PS Sudama Nagar</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>Rajya Shiksha Kendra</td>
                                        <td>188</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>188</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>Rastriya  Madhyamik Shiksha Abhiyaan </td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tblbadi" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                           सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>B.M.S. BHARCHACHHA KALA (6-8)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BEO, BADI</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>BOYS HSS BARELI</td>
                                        <td>27</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>27</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>BRC, BADI</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE  (Campus)-PS BADI KHURD (1 to 5)</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>CMRISE (Campus)-GBMS BADIKHURD (6-8)</td>
                                        <td>5</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>CMRISE-GHSS BADI (9-12)</td>
                                        <td>30</td>
                                        <td>30</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GBPS GUGALWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GGMS BADI KHURD (CLASS 1 TO 8)</td>
                                        <td>13</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GGPS BAGALWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GGPS GADARWAS</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GGPS GUGALWADA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GGPS KAMTON</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GGPS KUTNASIR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GHS ALIGANJ</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GHS AMRAWAD KALA</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GHS BAG PIPALIYA</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GHS CHAINPUR</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GHS CHARGAON</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GHS CHHAWARA</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GHS DIMADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GHS INTKHEDI</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GHS JAMGARH</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GHS KINGI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GHS KOSMI (1-10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GHS KOTPAR GANESH</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GHS MAHESHWAR</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GHS MANGROL</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GHS MANKAPUR</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GHS MOKALWADA (1-10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GHS PANAGAR (1-10)</td>
                                        <td>7</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GHS SAMNAPUR JAGIR</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GHS SANTRA (1-10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GHS SHIVTALA (6-10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GHS UMRAIBAHARA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GHSS BHARKACHHA KALAN</td>
                                        <td>8</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GHSS GUGALWADA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GHSS KHARGAONE</td>
                                        <td>24</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>24</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GHSS UDAIGIRI</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GIRLS HS BHARKACHHA KALAN</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GIRLS HSS BADI</td>
                                        <td>13</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GIRLS HSS BARELI</td>
                                        <td>32</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>32</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GIRLS MS BADI KALA (CLASS 1 TO 8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GIRLS PS DIMADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GKPS KADKA DEHRI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GKPS PATHARAI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GMS BABAI</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GMS BARELI (CLASS 1 TO 8)</td>
                                        <td>16</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GMS BHODIYA</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GMS BISER</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GMS GUGALWADA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GMS KODARI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GMS MAGARDHA</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GMS PUROHIT PIPALIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GPS BAGWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GPS BARELI FREEGANJ</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GPS BATERA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GPS BERKHEDI KHURD</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GPS BHARTIPUR (R)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GPS CHORA KAMRORA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GPS DHUREN PIPARIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GPS GAIHALPUR</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GPS GHONTI BAMURIA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GPS KADIYA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GPS KHERI BRAMCHARI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GPS KINGI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GPS LAKHANPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GPS MADIYA CHOPAN</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GPS MAGARDHA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GPS MAHKA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GPS MAHRAGAON KHURD</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GPS MANDWA MEHGAWAN</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GPS MANGROL</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GPS MANKAPUR</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GPS RANIPURA KHURD</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GPS SEMRI TIPPA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GPS UMRAI BEHRA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GPS UNTIYA PITHANPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GPS VIKRAM MADAIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>JPS JHALPAL</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>JPS NAYA GAON KHANDE</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>JR. PS PANJRA MANSHARAM</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>JR. PS RAMGARHA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>JR.PS  BAHRAWAN</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>JR.PS CHHENAKACHHAR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>JR.PS DIMADIYA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>JR.PS IMALIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>JR.PS SALEGARH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>M.S. BARNA BARELI (CLASS 1 TO 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>MS AHMADPUR</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>MS BADI KALA (CLASS 1 TO 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>MS BAGALWADA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>MS BHAISAYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>MS BHARKACHHA KALAN</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>MS BOYS ASHRAM KAMRORA (ST)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>MS CHAINPUR</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>MS DIMADA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>MS GADARWAS</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>MS GAGANWADA</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>MS GIRLS ASHRAM BHARTIPUR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>MS GORA MACHHWAI</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>MS GURARIYA</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>MS HARSILI</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>MS KAMTON</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>MS KANWAR</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>MS KHAIRWADA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>MS KHANDAWAR</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>MS KHAPARIA KALA</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>MS KOTPAR GANESH</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>MS MANJUSHKALA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>MS MANKAPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>MS NANPON</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>MS NAYA GAON KALA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>MS PALKASHRI</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>MS PIPARIYA KARANSINGH</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>MS RAJWADA</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>MS SAGONIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>MS SILWAH</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>MS TONGA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>MS UDAIGIRI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>MS UNTIYA KALA</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>NMS  KINGI (SULTANPUR)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>NMS AJIT NAGAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>NMS AKOLA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>NMS BADODIYA</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>NMS BAIGANIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>NMS BANSPIPALIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>NMS BARHA KALA</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>NMS BHARKACHHA KHURD</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>NMS BHILADIYA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>NMS CHAUDHARI CHOK</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>NMS CHHIND</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>NMS CHUCHAR</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>NMS CHURKA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>NMS DAGDAGA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>NMS DEHRIKALA</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>NMS DIGWAD</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>NMS GHAT PIPALIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>NMS GHONTI BHARA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>NMS GORAKHPUR</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>NMS GULWADA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>NMS HARDOB</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>NMS JAMUNIYA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>NMS JANAKPUR</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>NMS JOHAR BARHA (6-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>NMS KARAMWADA</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>NMS KELKACHHA</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>NMS KHAIRI MUGLI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>NMS KHAMARIYA SOHANPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>NMS KHANDRAJ</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>NMS KHAPARIYA KHURD</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>NMS KINGI</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>NMS KISHANPUR</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>NMS KIWLAJHIR</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>NMS KUTNASIR</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>NMS MALAJHIR</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>NMS MANGROL</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>NMS MEHRAGAON KALAN</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>NMS MOTALSIR</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>NMS NAYAGAON KHURD</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>NMS PALI</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>NMS PANDA BAMHORI</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>NMS PARTALAI</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>NMS PIPARIYA NUSRAT KHAN</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>NMS SAMNAPUR KACHHI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>NMS SANKHEDA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>NMS SATRAWAN</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>NMS SEMRI KHOOBCHAND</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>NMS SILGEINA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>NMS SIMROD</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>NMS SOJANI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>NMS URADMAU ( CLASS 1 TO 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>NPS BHIMPUR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>NPS GHANA KALA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>NPS KAMKA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>NPS NARADKHEDA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>NPS NAYAGAON CHAINPUR</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>NPS PAREWA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>NPS SALAIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>NPS THAWARI GHANTKHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>PS ADIWASI TOLA GHONTI BEHRA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>PS AFAT NAGAR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>PS AMAKHOH (R)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>PS AMRAWAD KHURD</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>PS ARKA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>PS BADODIYA KHURD</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>PS BAGALWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>PS BAMANWADA</td>
                                        <td>4</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>PS BAMHORI BALIRAM</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>PS BANIYA KHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>PS BANSKHEDA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>PS BERKHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>PS BHAGDEHI</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>PS BHARKACHHA KALAN</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>PS BHISHTI</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>PS BOYS ASHRAM KAMRORA (ST)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>PS CHAINPUR</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>PS CHANAKUNDA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>PS CHANDWADA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>PS CHORA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>PS DAMADEHI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>PS DEHALWADA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>PS DHABLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>PS DHANASARI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>PS DHANDHALA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>PS DHILWAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>PS DHIMARDHANA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>PS DHOKHEDA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>PS DIYAWADI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>PS DOOBTALAI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>PS DOOMAR</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>PS DUDADEH</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>PS DUMAR</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>PS GAZI KHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>PS GHURELA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>PS GIRLS ASHRAM BHARTIPUR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>PS GOL</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>PS GONDA KHEDA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>PS GOPALPUR</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>PS HAMIRGANJ</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>PS JIRAWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>PS KANHAIYAPAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>PS KHURPATNI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>PS KIWALI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>PS KODARI TOLA (R)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>PS KOTAPAR MAHANT</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>227</td>
                                        <td>PS LANJHI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>228</td>
                                        <td>PS MADHAMAU</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>229</td>
                                        <td>PS MUNAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>230</td>
                                        <td>PS NAYA GAON KALA</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>231</td>
                                        <td>PS PANDA BAMHORI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>232</td>
                                        <td>PS PANJRA KASHIRAM</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>233</td>
                                        <td>PS PANJRA VIJAY SINGH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>234</td>
                                        <td>PS PAPLAI</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>235</td>
                                        <td>PS PARTALAI</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>236</td>
                                        <td>PS PATANI</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>237</td>
                                        <td>PS PITHANPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>238</td>
                                        <td>PS RATANPUR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>239</td>
                                        <td>PS RIMSILI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>240</td>
                                        <td>PS SALAIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>241</td>
                                        <td>PS SAMNAPUR KACHHI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>242</td>
                                        <td>PS SARRA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>243</td>
                                        <td>PS SEMRI KHOJRA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>244</td>
                                        <td>PS SEMRI KHOOBCHAND</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>245</td>
                                        <td>PS SEMRIGHAT</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>246</td>
                                        <td>PS SENKUA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>247</td>
                                        <td>PS SEONI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>248</td>
                                        <td>PS SHANKARGARH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>249</td>
                                        <td>PS SHIVTALA</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>250</td>
                                        <td>PS SIMRIYA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>251</td>
                                        <td>PS SIMROD</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>252</td>
                                        <td>PS SINDHI KEMP</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>253</td>
                                        <td>PS SINWAH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>254</td>
                                        <td>PS SIRABADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>255</td>
                                        <td>PS SIRAWADA MURLIDHAR</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>PS SIRWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>257</td>
                                        <td>PS SULTAN NAGAR</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>258</td>
                                        <td>PS THALA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>259</td>
                                        <td>PS UMARIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>260</td>
                                        <td>PS UNTIYA KHURD</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>261</td>
                                        <td>PS VAZIRGANJ</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>262</td>
                                        <td>UEGS ALIBADA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>263</td>
                                        <td>UEGS ALIGANJ</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>264</td>
                                        <td>UEGS BAMANWADA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>265</td>
                                        <td>UEGS BANSKHEDA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>266</td>
                                        <td>UEGS BERKHEDI KALA</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>267</td>
                                        <td>UEGS BHONTI</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>268</td>
                                        <td>UEGS BINEKA  TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>269</td>
                                        <td>UEGS CHANDPURA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>270</td>
                                        <td>UEGS CHAUPAN</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>271</td>
                                        <td>UEGS CHUNNA KHEDA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>272</td>
                                        <td>UEGS CHURKA TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>273</td>
                                        <td>UEGS DAMDONGRI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>274</td>
                                        <td>UEGS DHANDLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>275</td>
                                        <td>UEGS DIBBI</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>276</td>
                                        <td>UEGS DUNGARIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>277</td>
                                        <td>UEGS GHONT</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>278</td>
                                        <td>UEGS GORIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>279</td>
                                        <td>UEGS HARIJAN MOHALLA TONGA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>280</td>
                                        <td>UEGS HARIJAN TOLA T T NAGAR UNTIYA KALAN</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>281</td>
                                        <td>UEGS JAITPURA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>282</td>
                                        <td>UEGS JATERA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>283</td>
                                        <td>UEGS KANJAI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>284</td>
                                        <td>UEGS KANSIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>285</td>
                                        <td>UEGS KATKA SHIRI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>286</td>
                                        <td>UEGS KHAIRI PRATAP SINGH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>287</td>
                                        <td>UEGS KHIRKA TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>288</td>
                                        <td>UEGS KOTHRI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>289</td>
                                        <td>UEGS LALAKHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>290</td>
                                        <td>UEGS LUHARIYA KHEDA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>291</td>
                                        <td>UEGS MANGROL</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>292</td>
                                        <td>UEGS NAGPUR</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>293</td>
                                        <td>UEGS PALI TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>294</td>
                                        <td>UEGS PANAGAR TOLA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>295</td>
                                        <td>UEGS PANJHIRPA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>296</td>
                                        <td>UEGS PARUA TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>297</td>
                                        <td>UEGS PIPALIYA KARANSINGH</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>298</td>
                                        <td>UEGS PIPALKHEDI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>299</td>
                                        <td>UEGS RAJALWADI</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>300</td>
                                        <td>UEGS SUBHASH NAGAR KHARGONE</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>301</td>
                                        <td>UEGS SULTSNPUR</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>302</td>
                                        <td>UEGS SYAM NAGAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>303</td>
                                        <td>UEGS T T NAGAR KHARGONE</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>304</td>
                                        <td>UEGS TAWA KHEDA</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>305</td>
                                        <td>UEGS TOLA NIWADI</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>306</td>
                                        <td>UEGS TONGAPURA KAMTONE</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>307</td>
                                        <td>UEGS TULSIPAR</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>308</td>
                                        <td>UEGS UMRAI BEHRA BHEEL TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>309</td>
                                        <td>UEGS UMRAI TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="BEGUMGANJ" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                           सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BEO, BEGUMGANJ</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BRC, BEGUMGANJ</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>CMRISE  (Campus)-GBPS GAMBHIRIA (Class 1 to 5)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>CMRISE (Campus)-GMS BEGAMGANJ (Class 6 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE-BOYS  GHSS BEGAMGANJ (9-12)</td>
                                        <td>24</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>24</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>GBMS SULTANGANJ (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>GBPS BHURERU (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GBPS KASBA CHOUKA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GGMS KILA BEGUMGANJ (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GGPS NAIGADHIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GGPS SUNWAHA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GHS BADGANWA (Class 1 to 10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GHS BASADEHI (Class 9 to 10)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GHS BICHHUA JAGIR (Class 1 To 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GHS CHANDBAD (Class 6 to 10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GHS GULWADAClass 9 to 10)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GHS KUNDA (Class 1 to 10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GHS MAHUA KHEDA KALA (Class 1 to 10)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GHS MARKHANDI (Class 6 to 10)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GHS MARKHEDA TAPPA (Class 1 to 10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GHS MUNDLA CHHAWAL (Class 9 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GHS NAIGADIYA (Class 1 to 10)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GHS PADARIYA RAJADHAR (Class 1 to 10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GHS SUMER (Class 1 to 10)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GHS TULSIPAR (Class 6 to 12)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GHS UDKA (Class 1 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GHS UMARKHOH (Class 9 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GHSS BEERPUR (Class 9 to 12)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GHSS SULTANGANJ (Class 9 to 12)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GHSS SUNEHARA (Class 1 to 12)</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GHSS SUNWAHA (Class 6 to 12)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GIRLS GHSS BEGAMGANJ (Class 6  to 12)</td>
                                        <td>28</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>28</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GmNMS RAMPURA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GMS BEGUMGANJ (Class 1 to 8)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GMS BERKHEDI BARAMAD GADHI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GMS BHAISA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GMS BHENSWAI KALAN (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GMS BURERU (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GMS DEHGAWAN (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GMS DHIMROLI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GMS DHWAJ (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GMS GADHOIPUR (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GMS GIRS SULTANGANJ (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GMS GULWADA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GMS HADAIPUR (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GMS HAPSILI (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GMS HINOTIYA BAMNAI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GMS JAMUNIYA T.K. (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GMS JHIRIYA T.K. (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GMS KALYANPUR (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GMS KARHOLA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GMS KHAMKHEDA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GMS KHIRIYA NARAYAN DAS (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GMS MADIYA NAKA (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GMS MAJHGAWA SANI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GMS MAWAI (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GMS MUNDLA CHAWAL (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GMS NAVIN SHAHPUR BEGAMGANJ (Class 6 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GMS PANDAJHIR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GMS PAPDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GMS PARSORA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GMS PIPALIYA PATHAK (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GMS RATANHARI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GMS SHAHPUR SULTANPUR (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GMS TEKAPAR KALAN (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GMS UMARKHOH (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GNMS BAMHORI TITOR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GNMS CHANDORIYA (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GNMS GOPALPUR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GNMS JAMUNIYA GONDAKHOH (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GNMS KHAJURIYA GUSAIN (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GNMS KHERI TALLUKA CHOKA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GNMS KIRATPUR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GNMS KOKALPUR (Class 1 to 8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GNMS MADNI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GNMS MAHAGAWAN TAPPA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GNMS MARKHEDA GULAB (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GNMS MUDIYA CHAMPAT (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GNMS PALOHA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GNMS REHMA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GNMS SAGONI MUNJAPTA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GNMS SALIYA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GNMS SEMRA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GNMS SIHORA JAGIR (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GNMS UMARHARI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GPS AADIWASI TOLA KOKALPUR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GPS AMOULI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GPS ANWARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GPS BAMHORI (TK) (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GPS BANKORI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GPS BARAH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GPS BARELI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GPS BARKHOA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GPS BARRI KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GPS BASIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GPS BEELKHEDA JAGIR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GPS BELAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GPS BERKHEDI JAORAWAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GPS BERKHEDI RAJARAM (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GPS BERSALA JAGIR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GPS BHAJIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GPS BHENSWAI KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GPS BHOJPUR (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GPS BICHHUA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GPS BIDI MAJDOOR COLONY BEGUMGANJ (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GPS BIJORA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GPS BORIYA JAGIR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GPS CHAINPURA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GPS CHANDA MAU (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GPS CHANDBAD (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GPS CHANDODA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GPS CHARGAWAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GPS CHOKA BAKHAT SINGH (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GPS DEORI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GPS DEVLAPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GPS DHANDIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GPS DHILWAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GPS DHOLPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GPS DUNGARIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GPS FATEHPUR (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GPS GENHURAS (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GPS GHANA KALAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>GPS GHANA KHURD (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GPS GHOGHARI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>GPS GODAKHOH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>GPS GOPAI CHAINPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>GPS GORAKHPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>GPS GORHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>GPS GORKHA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>GPS GUNDRAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>GPS HINOTIYA MUNJAPTA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>GPS HINOTIYA PACHORI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>GPS JAMUNIYA JAMSHAH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>GPS JAMUNIYA T. PADARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>GPS JARUA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>GPS JASRATHI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>GPS JHAMRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>GPS JHIRIYA BARMADGA Gadhi (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>GPS JHIRPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>GPS KAKARUA BARAMAD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>GPS KAKARUA GULAB (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>GPS KALYANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>GPS KANJELA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>GPS KATANGI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>GPS KERPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>GPS KESHLON T.N.G.(Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>GPS KESHLON T.P. (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>GPS KHAIRPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>GPS KHAJURIYA BARAMA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>GPS KHAMARIYA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>GPS KHAMARIYA TA NAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>GPS KHAMKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>GPS KHANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>GPS KHARI TA PADARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>GPS KHERI TALLUKA CHOKA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>GPS KHIRETI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>GPS KHIRIYA NAVALSHAH (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>GPS KHIRIYA SUKKALRAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>GPS KHIRIYA TA PAPADA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>GPS KIRANGI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>GPS KOHNIYA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>GPS KOLUA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>GPS KOTHIKHO (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>GPS LAKHANPUR (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>GPS MADHIYA GUSAIN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>GPS MADIYA NIWARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>GPS MADIYANAKA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>GPS MADLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>GPS MAHADEV PURA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>GPS MAHAGAWAN TAPPA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>GPS MAHUA KHEDA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>GPS MALA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>GPS MANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>GPS MAQBARA (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>GPS MAWAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>GPS MEHANDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>GPS MODAKPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>GPS MOHANIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>GPS MOIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>GPS MOONDLA BER (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>GPS NAGJHIRI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>GPS NAIN BILAS (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>GPS NAVIN SHAHPUR (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>GPS NAYAGAON (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>GPS NAYANAGAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>GPS PADARIYA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>GPS PADARIYA SITARAM (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>GPS PARAN MOHALLA (R) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>GPS PEEL PAHADI (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>GPS PIPALIYA  JAGIR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>GPS PIPALIYA BAKHATSINGH (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>GPS PIPALIYA BARAI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>GPS PIPALIYA TALLUKA CHOKA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>GPS RAHATWAS (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>GPS RATANHARI (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>GPS SAGONI GOSAIN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>GPS SAJKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>GPS SAKARDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>GPS SAMASGARH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>GPS SENHKA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>GPS SHYAM NAGAR BEGUMGANJ (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>GPS SIHORA JAGIR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>GPS SILTARA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>GPS SOHANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>GPS SUNETI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>GPS SUNWAHA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>GPS TAPRA SULTANGANJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>GPS TAPRA UMARKHOH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>GPS TEKAPAR KARAN SINGH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>GPS TEKAPAR KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>GPS TINGHARA SANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>GPS TINSAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>GPS TINSUA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>GPS TULSIPAR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>GPS UDKA TAPRA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>GPS UMARHARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>GPS VINAYAKPUR (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>NMS DEVLAPUR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>NMS JAMONIYA PIPALIYA (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>NMS NARAYANPUR (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>NMS PANDARBHATA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>NMS PIPALIYA BICHOLI (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>NMS RAMVAN TAKAPAR (Class 1 to 8)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>UEGS MADIYA SETU</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>UEGS PIRA TOLA KHAMARIYA KALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>UNNAT EGS PACHIPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tblGAIRATGANJ" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>ASHRAM PRATHMIK SCHOOL (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BEO, GAIRATGANJ</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>BRC, GAIRATGANJ</td>
                                        <td>25</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>25</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>CMRISE  (Campus)-GGPS GAIRATGANJ (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE (Campus)-GGMS GAIRATGANJ (Class 6 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>CMRISE-GGHS GAIRATGANJ (Class 9 To 12 )</td>
                                        <td>16</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>GBHSS GAIRATGANJ (Class 9 to 12 )</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GGMS DEHGAON (Class 1 to 8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GGPS BAHEDIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GGPS SODARPUR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GHS AGARIYA KALA (Class 9 to 10)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GHS ALAMPUR (Class 6 to 10)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GHS BAMHORI GODAR (Class 6 to 10)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GHS CHANDPUR (Class 9 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GHS DEORIGANJ (Class 6 to 10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GHS HINOTIYA MAHALPUR (Class 6 to 10)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GHS JAMUNIYA KHAS (Class 1 to 10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GHS JUJHARPUR (Class 6 to 10)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GHS MAHALPUR PATHA (Class 9 to 10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GHS PADARIYA GANJ (Class 6 to 10)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GHS RAMPURA KALA (Class 9 to 10)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GHS SANKAL  (Class 6 to 10)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GHSS DEHGAON (Class 1 to 12)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GHSS GADHI (Class 9 to 12)</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GHSS HARDOT (Class 9 to 10)</td>
                                        <td>11</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GHSS RAJPURA (Class 9 to 12)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GHSS SAMNAPUR KALA (Class 9 to 12)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GHSS SODARPUR (Class 1 to 12)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GMS AAMKHEDA (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GMS AGARIYA KALA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GMS ALAMPUR (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GMS ANDHIYARI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GMS ASHRAM HEDRI (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GMS BABALIYA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GMS BADHER (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GMS BANDOLI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GMS BANIYA KHEDI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GMS BANKHEDI (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GMS BELNA MAHALPUR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GMS BHANPURGARHI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GMS BORPANI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GMS CHANDPUR (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GMS DEORIGARHI (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GMS GADHI (Class 1 to 8)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GMS GAIHURAS (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GMS GAIRATGANJ (Class 1 to 8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GMS GAIRATPUR (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GMS GHANA (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GMS HAIDRI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GMS HARDOT (Class 1 to 8)</td>
                                        <td>12</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GMS HINOTIYA KHAS (Class 6 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GMS HINOTIYA MAHALPUR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GMS KARMODI (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GMS KISHANPUR (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GMS KITORA (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GMS LAWAJHIR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GMS LILGAWAN (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GMS MUDIYA KHEDA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GMS NAVEEN MIDDILKHEERKHEDI (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GMS PADARIYA GANJ (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GMS PAINGAWAN (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GMS PAPDA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GMS PATI (GADI) (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GMS RAJPURA (Class 1 to 8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GMS RAMPURA KALA (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GMS RASIDPUR (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GMS SAKATPUR (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GMS SAMNAPUR KALAN (Class 1 to 8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GMS SANKAL (Class 1 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GMS SARRA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GMS SAYEEDPUR (Class 1 to 8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GMS SHOBHAPUR (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GMS SIHORA KHURD (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GMS SINGHPUR (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GMS SUKARRA (Class 6 to 8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GMS TEHRI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GMS TEKAPAR GARHI (Class 6 to 8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GMS URADMAU (Class 1 to 8)</td>
                                        <td>5</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GMS USHARMETA (Class 1 to 8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GPS  AMGAWAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GPS  BADHERA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GPS  BEHRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GPS  BERKHEDI HARDOT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GPS  BHANPUR TOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GPS  BILWANI TAPRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GPS  BODRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GPS  CHIRONJIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GPS  CHURAKKA TAPRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GPS  DANGAWAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GPS  GAILPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GPS  GOPALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GPS  GULABGANJ JAMUNIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GPS  HATNAPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GPS  INDRA NAGAR MURPARTOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GPS  JAMANPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GPS  JAMUNIYA BRAJBHAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GPS  JHIRNIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GPS  KACHHI PURA DEHGAON (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GPS  KESLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GPS  KHEDA BANSADEHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GPS  KHEJRA GARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GPS  KHIDKI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GPS  KHIRKA PURA DEHGAON (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GPS  KIRRODA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GPS  KRMODI KHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GPS  KUSNAGAR AMGAWAN (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GPS  LALGHATI SARRA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GPS  MANKAPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GPS  MANKAPUR TOLA GADI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GPS  MURLI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GPS  NAGJHIR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GPS  NAGJHIR PAINGAWAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GPS  PANJHIRPA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GPS  PARASI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GPS  PATHARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GPS ADIWASI TOLA (R) (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GPS AGARIYA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GPS AMAPANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GPS ANWARIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GPS BABAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GPS BABAITOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GPS BABER (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>GPS BAMHORI GHAT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GPS BAMHORI GODAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>GPS BANSADEHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>GPS BASATPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>GPS BELNAGARHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>GPS BHADARIYA TOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>GPS BHANPURGANJ (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>GPS BHANPURGARHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>GPS BHANWARTOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>GPS BHAWARGARH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>GPS BHILADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>GPS BHULAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>GPS BILWANI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>GPS BINAPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>GPS BISHANKHADA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>GPS CHANDONI GARHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>GPS CHANDONOGANJ (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>GPS CHANDPUR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>GPS CHHIRKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>GPS CHURKKA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>GPS DALMEELTEKAPARGARI (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>GPS DEORI GANJ (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>GPS DEVNARAYAN NAGAR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>GPS DHANIYA KHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>GPS DHILWAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>GPS DUNAGARIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>GPS DUNGARIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>GPS GADHAGAT (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>GPS GAIHURAS (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>GPS GAIRATPUR (Class 1 to 5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>GPS GHANA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>GPS GOFA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>GPS GORKHA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>GPS GUNDRAI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>GPS HINOTIYA KHALSA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>GPS HINOTIYA KHAS (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>GPS IMALIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>GPS INDRA AVASRAMPURAKALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>GPS INDRAAVAS.M.S.GAIRATGANG (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>GPS JALALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>GPS JAMUNIYA GULAB. (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>GPS JAMUNIYA KALA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>GPS JHAMAR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>GPS JINNOR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>GPS KADHAIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>GPS KAHULA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>GPS KARHOULA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>GPS KHAJURIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>GPS KHAMARIYA GARHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>GPS KHAMARIYAGANJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>GPS KHAMKHEDA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>GPS KHEJDA MAHALPUR (Class 1 TO 5 )</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>GPS KHERKHEDI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>GPS KHUMARI (Class 1 To 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>GPS KHUNTAVALISILARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>GPS KISHANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>GPS LODHIPURA SODARPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>GPS MADANPUR (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>GPS MAHAGAWAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>GPS MAHESHRI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>GPS MAHUNA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>GPS MOHAD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>GPS MUNDLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>GPS MURALMETA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>GPS MURPAR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>GPS NAUNPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>GPS NEELKANTPURA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>GPS PADARIYA GANJ (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>GPS PADARIYA GARHI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>GPS PATAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>GPS PATHA MOHALLA GAIRATGANJ (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>GPS PATHAKHEDA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>GPS PATI (GADI) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>GPS PATI MANAK CHOUK (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>GPS PIPALIYA AMARSINGH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>GPS PIPALIYA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>GPS PIPALPANI (Class 1 to 5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>GPS PRASIYA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>GPS RAJHADI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>GPS RAMPURA KALA (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>GPS RAMPURA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>GPS RASIDPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>GPS ROSHANPUR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>GPS SAGONIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>GPS SAGOR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>GPS SAHAJPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>GPS SALAEHPUR SOORBARRU (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>GPS SALIWADA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>GPS SAMNAPUR KALA (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>GPS SAMNAPUR KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>GPS SANDOOK (Class 1 TO 5 )</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>GPS SANWALI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>GPS SARRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>GPS SEMRAJERGHATI (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>GPS SIHORA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>GPS SIHORA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>GPS SILARI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>GPS SILI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>GPS SIMARIYA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>GPS SIMARIYA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>GPS SINDHI KEMP BHILADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>GPS SINGHAD  (Class 1 to 5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>GPS SINGPUR (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>GPS SINGPURTOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>227</td>
                                        <td>GPS SOORRVARU (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>228</td>
                                        <td>GPS SOSITY (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>229</td>
                                        <td>GPS SUAGARH (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>230</td>
                                        <td>GPS SUKARRA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>231</td>
                                        <td>GPS SULTAN JHANPUR (Class 1 To 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>232</td>
                                        <td>GPS SULTANPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>233</td>
                                        <td>GPS TAPRA TOLA (R) (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>234</td>
                                        <td>GPS TARWALI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>235</td>
                                        <td>GPS TEHRI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>236</td>
                                        <td>GPS TEHRI TOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>237</td>
                                        <td>GPS TEKAPAR GARHI (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>238</td>
                                        <td>GPS TEKAPAR KHODI (Class 1 to 5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>239</td>
                                        <td>GPS TEKAPAR TOLA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>240</td>
                                        <td>GPS TIJALPUR (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>241</td>
                                        <td>GPS TILA KALAN (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>242</td>
                                        <td>GPS TILA KHURD (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>243</td>
                                        <td>GPS TOLA BHILADIYA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>244</td>
                                        <td>GPS TOLA RAJPURA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>245</td>
                                        <td>GPS UNTKATA (Class 1 to 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>246</td>
                                        <td>GPS USHARMETADS@23340317401</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>247</td>
                                        <td>UEGS PACHPEDIYA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="tblOBEDULLAGANJ" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>S.No
                                                <br />
                                            सरल क्र.
                                        </th>
                                        <th>School/ Office/ Institute<br />
                                            स्कूल/कार्यालय/संस्थान*
                                        </th>
                                        <th>No. of Employees<br />
                                            कर्मचारियों की संख्या
                                        </th>
                                        <th>Employees ID Card Generated
                                                <br />
                                            कर्मचारी आई.डी कार्ड जनरेट किया गया
                                        </th>
                                        <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                            कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                        </th>
                                        <th>Employees ID Card Not Created<br />
                                            कर्मचारियों का पहचान पत्र नहीं बना
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>BEO, OBEDULLAGANJ</td>
                                        <td>11</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>BOYS HSS  MANDIDEEP (6-12)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>BOYS HSS GOHARGANJ (6-12)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>BRC, OBEDULLAGANJ</td>
                                        <td>19</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>19</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>CMRISE  (Campus)-GPS BOYS OBEDULLAGANJ (1-5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>CMRISE (Campus)-GMS OBEDULLAGANJ (6-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>CMRISE-BOYS HSS OBEDULLAGANJ (9-12)</td>
                                        <td>16</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>GGMS MANDIDEEP (6-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>GHS ASHAPURI (9-10)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>GHS BAGASPUR (9-10)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>GHS BAMNAI (6-10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>GHS BANSKUNWAR (9-10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>GHS BARKHEDA SETU (1-10)</td>
                                        <td>12</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>GHS CHIKLOD KHURD (1-10)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>GHS DAHOD (1-10)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>GHS PIPALIYA GOLI (6-10)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>GHS POLAHA (1-10)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>GHS SARAKIYA (9-10)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>GHS SATLAPUR (1-10)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>GHS TAMOT (9-10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>GHS THANA (1-10)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>GHS TILENDI (1-10)</td>
                                        <td>13</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>13</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>GHSS BARKHEDA STATION (1-12)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>GHSS BINEKA (9-12)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>GHSS CHIKLOD KALA (9-12)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>26</td>
                                        <td>GHSS DIWATIYA (1-12)</td>
                                        <td>21</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>21</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>GHSS ITAYA KALA (1-12)</td>
                                        <td>14</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>14</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>GHSS NOORGANJ (9-12)</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>GHSS SULTANPUR (1-12)</td>
                                        <td>17</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>17</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>GHSS UMRAOGANJ (1-12)</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>GIRLS HSS  MANDIDEEP (9-12)</td>
                                        <td>36</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>36</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>GIRLS HSS GOHARGANJ (9-12)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>33</td>
                                        <td>GIRLS HSS OBEDULLAGANJ (6-12)</td>
                                        <td>33</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>33</td>
                                    </tr>
                                    <tr>
                                        <td>34</td>
                                        <td>GMS  KARMODA (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>35</td>
                                        <td>GMS  MANDIDEEPDS@23340415918</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>36</td>
                                        <td>GMS AGARIYA IMLIPURA (1-8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>37</td>
                                        <td>GMS AMARTHON (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>38</td>
                                        <td>GMS AMCHHA KALAN (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>39</td>
                                        <td>GMS AMODA (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>40</td>
                                        <td>GMS ASHAPURI (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>41</td>
                                        <td>GMS BADBAI (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>42</td>
                                        <td>GMS BAGASPUR (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>43</td>
                                        <td>GMS BAIJALPUR (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>44</td>
                                        <td>GMS BAMULIYA PAWAR (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>45</td>
                                        <td>GMS BANSGAHAN (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>46</td>
                                        <td>GMS BARBATPUR (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>47</td>
                                        <td>GMS BEELA KHEDI (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>48</td>
                                        <td>GMS BHOJPUR (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>49</td>
                                        <td>GMS BINEKA (1-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>50</td>
                                        <td>GMS BISHANKHEDA (1-8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>51</td>
                                        <td>GMS BORKHADI (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>52</td>
                                        <td>GMS BORPANI (1-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>53</td>
                                        <td>GMS CHIKLOD KALA (1-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>54</td>
                                        <td>GMS CHIROLIYA (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>55</td>
                                        <td>GMS DAMDONGRI (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>56</td>
                                        <td>GMS DEHRI NEEMKHEDA (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>57</td>
                                        <td>GMS DHANDHAR (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>58</td>
                                        <td>GMS DOB (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>59</td>
                                        <td>GMS GAUTAMPUR COLONY (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>GMS GHATPIPALIYA (1-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>GMS GIRLS GOHARGANJ (1-8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>GMS GIRLS SULTANPUR (1-8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>GMS GIRLS TAMOT (1-8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>GMS GUDAWAL (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>65</td>
                                        <td>GMS HAJLI (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>66</td>
                                        <td>GMS HARRAI (6-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>67</td>
                                        <td>GMS HATIYA KHEDA (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>68</td>
                                        <td>GMS HINOTIYA (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>69</td>
                                        <td>GMS HIRANIYA (1-8)</td>
                                        <td>9</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>9</td>
                                    </tr>
                                    <tr>
                                        <td>70</td>
                                        <td>GMS IKALWADA (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>71</td>
                                        <td>GMS IMALIYA GONDI (6-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>72</td>
                                        <td>GMS IMALIYA SINGPUR (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>73</td>
                                        <td>GMS JABRA MALKHAR (1-8)</td>
                                        <td>7</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>7</td>
                                    </tr>
                                    <tr>
                                        <td>74</td>
                                        <td>GMS JAITPUR (1-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>75</td>
                                        <td>GMS JHIRI BAHEDA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>76</td>
                                        <td>GMS JHIRPAI (1-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>77</td>
                                        <td>GMS KARAKWANI (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>78</td>
                                        <td>GMS KARHODA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>79</td>
                                        <td>GMS KEMWALI (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>80</td>
                                        <td>GMS KHAPARIYA KHAPA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>81</td>
                                        <td>GMS KHASROD (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>82</td>
                                        <td>GMS KHILLI KHEDA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>83</td>
                                        <td>GMS KHUKARIYA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>84</td>
                                        <td>GMS KIRATNAGAR (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>85</td>
                                        <td>GMS KUMADI (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>86</td>
                                        <td>GMS KUMDI BITHORI (1-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>87</td>
                                        <td>GMS LULKA (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>88</td>
                                        <td>GMS MAHOLI (1-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>89</td>
                                        <td>GMS MAKODIYA (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>90</td>
                                        <td>GMS MENDUA (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>91</td>
                                        <td>GMS MURHARI (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>92</td>
                                        <td>GMS NADOR (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>93</td>
                                        <td>GMS NANAKHEDI (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>94</td>
                                        <td>GMS NANDORA (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>95</td>
                                        <td>GMS NAYAPURA MEWATI (6-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>96</td>
                                        <td>GMS PALAKMATI (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>97</td>
                                        <td>GMS PANJRA (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>98</td>
                                        <td>GMS PIPALIYA GAJJU (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>99</td>
                                        <td>GMS PIPALIYA LORKA (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>100</td>
                                        <td>GMS PONIYA (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>101</td>
                                        <td>GMS PREMTALAB (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>102</td>
                                        <td>GMS RAJALWADI KALA (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>103</td>
                                        <td>GMS RASULIYA (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>104</td>
                                        <td>GMS SAJDI (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>105</td>
                                        <td>GMS SALKANI (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>106</td>
                                        <td>GMS SARAKIYA (1-8)</td>
                                        <td>10</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>107</td>
                                        <td>GMS SATLAPUR (1-8)</td>
                                        <td>22</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>22</td>
                                    </tr>
                                    <tr>
                                        <td>108</td>
                                        <td>GMS SILARI CHITODA (1-8)</td>
                                        <td>8</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>109</td>
                                        <td>GMS SIMRAI (1-8)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>110</td>
                                        <td>GMS SIMRODA (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>111</td>
                                        <td>GMS SINGALDEEP (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>112</td>
                                        <td>GMS SIVNI (1-8)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>113</td>
                                        <td>GMS SOCIETY SONTAR (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>114</td>
                                        <td>GMS TADI (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>115</td>
                                        <td>GMS TAJPURA (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>116</td>
                                        <td>GMS TAMOT (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>117</td>
                                        <td>GMS TARAWALI (6-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>118</td>
                                        <td>GMS TIGARIYA (1-8)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>119</td>
                                        <td>GMS UMARIYA (6-8)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>120</td>
                                        <td>GPS  KALA JHHORA  (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>121</td>
                                        <td>GPS  KAMTON (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>122</td>
                                        <td>GPS  MUHALIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>123</td>
                                        <td>GPS AAMKHOH (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>124</td>
                                        <td>GPS AANKHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>125</td>
                                        <td>GPS AGARIYA BOTALDHAR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>126</td>
                                        <td>GPS AGARIYA TOLA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>127</td>
                                        <td>GPS AHMADPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>GPS AJWAIN (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>129</td>
                                        <td>GPS ALAMPUR (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>130</td>
                                        <td>GPS AMBAI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>131</td>
                                        <td>GPS AMCHHA KALAN (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>132</td>
                                        <td>GPS ARJANI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>133</td>
                                        <td>GPS ASHAPURI (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>134</td>
                                        <td>GPS BAHERA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>135</td>
                                        <td>GPS BAKHARIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>136</td>
                                        <td>GPS BAMHORI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>137</td>
                                        <td>GPS BAMNAI (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>138</td>
                                        <td>GPS BAMULIYA DANGI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>139</td>
                                        <td>GPS BANDAR CHUAA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>140</td>
                                        <td>GPS BANSKUWAR TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>141</td>
                                        <td>GPS BARHA KHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>142</td>
                                        <td>GPS BARKHEDA TOLA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>143</td>
                                        <td>GPS BARUA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>144</td>
                                        <td>GPS BAWADIYA GONDI (1 TO 5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>145</td>
                                        <td>GPS BEEJOR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>146</td>
                                        <td>GPS BEEL KHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>147</td>
                                        <td>GPS BEEL KHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>148</td>
                                        <td>GPS BEGAMPURA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>149</td>
                                        <td>GPS BERASIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>150</td>
                                        <td>GPS BHAGWANPURA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>151</td>
                                        <td>GPS BHIL TOLA JAMUNIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>152</td>
                                        <td>GPS BHIYAPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>153</td>
                                        <td>GPS BHOOT PALASI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>154</td>
                                        <td>GPS BINEKA BORDHA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>155</td>
                                        <td>GPS BORDHA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>156</td>
                                        <td>GPS BOYS GOHARGANJ (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>157</td>
                                        <td>GPS CHAINIYA KHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>158</td>
                                        <td>GPS CHAKAWALI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>159</td>
                                        <td>GPS CHAMARIYA KHAMARIYA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>160</td>
                                        <td>GPS CHAMPANER (1-8)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>161</td>
                                        <td>GPS CHANDLA KHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>162</td>
                                        <td>GPS CHAPLASAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>163</td>
                                        <td>GPS CHHATARPURA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>164</td>
                                        <td>GPS CHOPDA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>165</td>
                                        <td>GPS CHORMAU (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>166</td>
                                        <td>GPS CRESHER TOLA JAMUNIA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>167</td>
                                        <td>GPS DADROD (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>168</td>
                                        <td>GPS DADROD TOLA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>169</td>
                                        <td>GPS DANGARWARA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>170</td>
                                        <td>GPS DANTKHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>171</td>
                                        <td>GPS DAUDPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>172</td>
                                        <td>GPS DEHGAON (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>173</td>
                                        <td>GPS DEHRA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>174</td>
                                        <td>GPS DEVIPURA GUDAWAL (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>175</td>
                                        <td>GPS DHABLA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>176</td>
                                        <td>GPS DHAMDHUSAR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>177</td>
                                        <td>GPS DHANDHAR POONCHI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>178</td>
                                        <td>GPS DHANKHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>179</td>
                                        <td>GPS DHOOP GHATA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>180</td>
                                        <td>GPS DHUNDHWANI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>181</td>
                                        <td>GPS DIGWAD OBEDULLAGANJ (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>182</td>
                                        <td>GPS DUNAH TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>GPS DUNGARIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>184</td>
                                        <td>GPS GADHA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>185</td>
                                        <td>GPS GADHA KHER (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>186</td>
                                        <td>GPS GAILPUR (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>187</td>
                                        <td>GPS GAUTAMPUR COLONY (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>188</td>
                                        <td>GPS GAUTAMPUR JONDRA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>189</td>
                                        <td>GPS GAUTAMPUR TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>190</td>
                                        <td>GPS GENHU KHEDA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>191</td>
                                        <td>GPS GHANA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>192</td>
                                        <td>GPS GHAT KHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>193</td>
                                        <td>GPS GHATI CHIKLOD KALA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>194</td>
                                        <td>GPS GHODAPACHAR (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>195</td>
                                        <td>GPS GHOGHRA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>196</td>
                                        <td>GPS GIRLS OBEDULLAGANJ (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>197</td>
                                        <td>GPS GOKLA KUNDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>198</td>
                                        <td>GPS GUDAWAL (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>199</td>
                                        <td>GPS GURADIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>200</td>
                                        <td>GPS HAMEERI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>201</td>
                                        <td>GPS HANUMAN TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>202</td>
                                        <td>GPS HARIPURA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>203</td>
                                        <td>GPS HARRAI (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>204</td>
                                        <td>GPS HATHI PALAN</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>205</td>
                                        <td>GPS HATIYA KHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>206</td>
                                        <td>GPS HIRAPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>207</td>
                                        <td>GPS HIRDUA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>208</td>
                                        <td>GPS IKLAMA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>209</td>
                                        <td>GPS IMALIYA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>210</td>
                                        <td>GPS IMALIYA GONDI (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>211</td>
                                        <td>GPS IMALIYA SINGPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>212</td>
                                        <td>GPS INTKHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>213</td>
                                        <td>GPS ITAYA KHURD (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>214</td>
                                        <td>GPS JAIT TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>215</td>
                                        <td>GPS JAITHAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>216</td>
                                        <td>GPS JATANPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>217</td>
                                        <td>GPS JHALAR KALA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>218</td>
                                        <td>GPS JOHARIYA TOLA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>219</td>
                                        <td>GPS KACHHI TOLA (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>220</td>
                                        <td>GPS KAMTON KANSIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>221</td>
                                        <td>GPS KANCHANPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>222</td>
                                        <td>GPS KANORA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>223</td>
                                        <td>GPS KARAGHATI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>224</td>
                                        <td>GPS KARITALAI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>225</td>
                                        <td>GPS KARMAI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>226</td>
                                        <td>GPS KASALWADA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>227</td>
                                        <td>GPS KEMP NO 4 (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>228</td>
                                        <td>GPS KEMP NO 5 (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>229</td>
                                        <td>GPS KEMP NO.3 (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>230</td>
                                        <td>GPS KEMWALI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>231</td>
                                        <td>GPS KESALWADA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>232</td>
                                        <td>GPS KHAIRI TOLA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>233</td>
                                        <td>GPS KHAMARIYA DARUDGARH (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>234</td>
                                        <td>GPS KHAMKHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>235</td>
                                        <td>GPS KHAMRIYA NIMAWAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>236</td>
                                        <td>GPS KHANPURA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>237</td>
                                        <td>GPS KHERI TAPPA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>238</td>
                                        <td>GPS KHERICHOUKA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>239</td>
                                        <td>GPS KHERUA TOLA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>240</td>
                                        <td>GPS KHODRA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>241</td>
                                        <td>GPS KHOHA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>242</td>
                                        <td>GPS KIRATNAGAR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>243</td>
                                        <td>GPS KOLA PATHAR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>244</td>
                                        <td>GPS KOLU KACHHAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>245</td>
                                        <td>GPS KUKDA TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>246</td>
                                        <td>GPS KUMHARIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>247</td>
                                        <td>GPS LADLI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>248</td>
                                        <td>GPS LULKA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>249</td>
                                        <td>GPS MACHPERA TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>250</td>
                                        <td>GPS MAGARDHA PIPALIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>251</td>
                                        <td>GPS MAGARPUNCHH (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>252</td>
                                        <td>GPS MAGRAI (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>253</td>
                                        <td>GPS MALKHAR BAGWANI (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>254</td>
                                        <td>GPS MALKHAR TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>255</td>
                                        <td>GPS MANDDEHRI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>GPS MANDKANSIYA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>257</td>
                                        <td>GPS MANDWA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>258</td>
                                        <td>GPS MANJUS KHURD</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>259</td>
                                        <td>GPS MEHARMANGA TOLA</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>260</td>
                                        <td>GPS MENDUA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>261</td>
                                        <td>GPS MUNDLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>262</td>
                                        <td>GPS MUNDLA VIJAYPATY (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>263</td>
                                        <td>GPS MUNEERGARH (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>264</td>
                                        <td>GPS MURHARI (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>265</td>
                                        <td>GPS NADOR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>266</td>
                                        <td>GPS NAGRI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>267</td>
                                        <td>GPS NANDORA (1-5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>268</td>
                                        <td>GPS NASHIPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>269</td>
                                        <td>GPS NASKHEDA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>270</td>
                                        <td>GPS NAYAPURA KEERAT NAGAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>271</td>
                                        <td>GPS NAYAPURA MEWATI (1-5)</td>
                                        <td>6</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>272</td>
                                        <td>GPS NAYAPURA SARRA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>273</td>
                                        <td>GPS NAYAPURA SODARPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>274</td>
                                        <td>GPS NEELGARH (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>275</td>
                                        <td>GPS NISHAN KHEDA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>276</td>
                                        <td>GPS PADONIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>277</td>
                                        <td>GPS PADRAI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>278</td>
                                        <td>GPS PAHAD KHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>279</td>
                                        <td>GPS PANJHIR (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>280</td>
                                        <td>GPS PANJRA  BHEEL  TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>281</td>
                                        <td>GPS PARKHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>282</td>
                                        <td>GPS PATHAR KANSIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>283</td>
                                        <td>GPS PIPAL CHOWK (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>284</td>
                                        <td>GPS PIPALIYA DHAKAD (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>285</td>
                                        <td>GPS PIPALIYA GOLI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>286</td>
                                        <td>GPS PIPALIYA LORKA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>287</td>
                                        <td>GPS PIPALWALI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>288</td>
                                        <td>GPS PIPALWALI BHILTOLA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>289</td>
                                        <td>GPS PIPLANI KHURD (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>290</td>
                                        <td>GPS PONIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>291</td>
                                        <td>GPS PUMP HOUSE (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>292</td>
                                        <td>GPS RAHUL NAGAR (1-5)</td>
                                        <td>5</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>293</td>
                                        <td>GPS RAJALWADI TALAB TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>294</td>
                                        <td>GPS RAJMAU (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>295</td>
                                        <td>GPS RAMPURA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>296</td>
                                        <td>GPS RATANPUR TOLA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>297</td>
                                        <td>GPS RATAPANI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>298</td>
                                        <td>GPS RESHALPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>299</td>
                                        <td>GPS ROJDA BAJEYAFT (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>300</td>
                                        <td>GPS ROJDA CHAK (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>301</td>
                                        <td>GPS SAJHOLI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>302</td>
                                        <td>GPS SAMNAPUR  KALA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>303</td>
                                        <td>GPS SAMNAPUR KALA THIKRI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>304</td>
                                        <td>GPS SAMNAPUR KHURD (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>305</td>
                                        <td>GPS SANOTI (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>306</td>
                                        <td>GPS SARASGONDI (1-5)</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>307</td>
                                        <td>GPS SARRAI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>308</td>
                                        <td>GPS SATDHARA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>309</td>
                                        <td>GPS SEMRA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>310</td>
                                        <td>GPS SEMRI KHURD (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>311</td>
                                        <td>GPS SETELITE NEW PADONIYA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>312</td>
                                        <td>GPS SIHORA (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>313</td>
                                        <td>GPS SIMRODA (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>314</td>
                                        <td>GPS SINDHI KEMP (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>315</td>
                                        <td>GPS SINGHPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>316</td>
                                        <td>GPS SONTAR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>317</td>
                                        <td>GPS SOOKHI KUMHDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>318</td>
                                        <td>GPS TAJPURA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>319</td>
                                        <td>GPS TAMOT (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>320</td>
                                        <td>GPS TARAWALI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>321</td>
                                        <td>GPS TEHARIYA TOLA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>322</td>
                                        <td>GPS THIKRI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>323</td>
                                        <td>GPS TILAKHEDI (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>324</td>
                                        <td>GPS TOLA COLONY (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>325</td>
                                        <td>GPS TUMDA KHEDA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>326</td>
                                        <td>GPS UDAIPUR (1-5)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>327</td>
                                        <td>GPS UMARIYA (1-5)</td>
                                        <td>4</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>328</td>
                                        <td>GPS VINEKA KHOH (1-5)</td>
                                        <td>3</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>329</td>
                                        <td>NMS AMBAI (6-8)</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
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
</asp:Content>

