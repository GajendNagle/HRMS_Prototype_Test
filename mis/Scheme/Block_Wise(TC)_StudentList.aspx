<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Block_Wise(TC)_StudentList.aspx.cs" Inherits="mis_Scheme_RegisterRequestTC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #StudentsDetails {
            display: none;
        }


        #note {
            color: red;
        }

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">List of Student Who have been issued TC by Schools</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active">Block Wise TC Students List </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Block Wise TC Students List</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>ज़िला<span style="color: red">*</span></label>
                            <select class="form-control">
                                <option value="value"><---Select---></option>
                                <option value="value">Agarmalwa</option>
                                <option value="value">Alirajpur  </option>
                                <option value="value">Anuppur  </option>
                                <option value="value">Ashoknagar </option>
                                <option value="value">Balaghat </option>
                                <option value="value">Barwani  </option>
                                <option value="value">Betul    </option>
                                <option value="value">Bhind    </option>
                                <option value="value">Bhopal   </option>
                                <option value="value">Burhanpur</option>
                                <option value="value">Chhatarpur </option>
                                <option value="value">Chhindwara </option>
                                <option value="value">Damoh    </option>
                                <option value="value">Datia    </option>
                                <option value="value">Dewas    </option>
                                <option value="value">Dhar     </option>
                                <option value="value">Dindori  </option>
                                <option value="value">Guna     </option>
                                <option value="value">Gwalior  </option>
                                <option value="value">Harda    </option>
                                <option value="value">Narmadapuram</option>
                                <option value="value">Indore    </option>
                                <option value="value">Jabalpur  </option>
                                <option value="value">Jhabua    </option>
                                <option value="value">Katni     </option>
                                <option value="value">Khandwa   </option>
                                <option value="value">Khargone  </option>
                                <option value="value">Mandla    </option>
                                <option value="value">Mandsaur   </option>
                                <option value="value">Morena           </option>
                                <option value="value">Narsinghpur</option>
                                <option value="value">Neemuch</option>
                                <option value="value">Panna  </option>
                                <option value="value">Raisen </option>
                                <option value="value">Rajgarh</option>
                                <option value="value">Ratlam </option>
                                <option value="value">Rewa   </option>
                                <option value="value">Sagar  </option>
                                <option value="value">Satna  </option>
                                <option value="value">Sehore </option>
                                <option value="value">Seoni  </option>
                                <option value="value">Singrauli</option>
                                <option value="value">Shahdol</option>
                                <option value="value">Shajapur </option>
                                <option value="value">Sheopur</option>
                                <option value="value">Shivpuri </option>
                                <option value="value">Sidhi  </option>
                                <option value="value">Tikamgarh</option>
                                <option value="value">Ujjain </option>
                                <option value="value">Umaria </option>
                                <option value="value">Vidisha</option>
                                <option value="value">Niwari </option>
                                <option value="value">TWD-District</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>ब्लॉक<span style="color: red">*</span></label>
                            <select class="form-control">
                                <option value="value"><---Select---></option>
                                <option value="value">AGAR     </option>
                                <option value="value">ALOT                  </option>
                                <option value="value">ARON                  </option>
                                <option value="value">BADI                  </option>
                                <option value="value">BADNAVAR              </option>
                                <option value="value">BAJAG                 </option>
                                <option value="value">BAMORI                </option>
                                <option value="value">BANKHEDI              </option>
                                <option value="value">BARNAGAR              </option>
                                <option value="value">BAROD                 </option>
                                <option value="value">BASODA                </option>
                                <option value="value">BATIYAGARH            </option>
                                <option value="value">BEENA                 </option>
                                <option value="value">BEOHARI               </option>
                                <option value="value">BERASIA               </option>
                                <option value="value">BHAGWANPURA           </option>
                                <option value="value">BHAINSDEHI            </option>
                                <option value="value">BHANDER               </option>
                                <option value="value">BHITARWAR             </option>
                                <option value="value">CHICHOLI              </option>
                                <option value="value">DHAR                  </option>
                                <option value="value">DHEEMAR KHEDA         </option>
                                <option value="value">DINDORI               </option>
                                <option value="value">GANGEO                </option>
                                <option value="value">GHANSORE              </option>
                                <option value="value">GOHPARU               </option>
                                <option value="value">GOTEGAON (SHRIDHAM)   </option>
                                <option value="value">HANUMANA              </option>
                                <option value="value">JABERA                </option>
                                <option value="value">JAITHARI              </option>
                                <option value="value">JOBAT                 </option>
                                <option value="value">JUNNARDEO             </option>
                                <option value="value">KANNOD                </option>
                                <option value="value">KARAIRA               </option>
                                <option value="value">KARKELI               </option>
                                <option value="value">KESLA                 </option>
                                <option value="value">KESLI                 </option>
                                <option value="value">KHALWA                </option>
                                <option value="value">KHANIYADHANA          </option>
                                <option value="value">KHATEGAON             </option>
                                <option value="value">MAHIDPUR              </option>
                                <option value="value">MALTHON               </option>
                                <option value="value">MANAVAR               </option>
                                <option value="value">MAUGANJ               </option>
                                <option value="value">MORAR(RURAL)          </option>
                                <option value="value">MULTAI                </option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <a href="Block_Wise(TC)_StudentList.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>

            <div class="col-lg-12">

                <div class="row justify-content-center">
                    <div class="col-lg-3 text-center">
                        <img src="../../img/captcha.png" width="150" />
                    </div>
                    <div class="col-lg-12"></div>
                    <div class="col-lg-4 text-center">
                        <label class="font-bold">Please enter the code shown above</label>
                    </div>
                    <div class="col-lg-12"></div>

                    <div class="col-lg-1 ">
                        <div class="form-group">
                            <input type="text" class="form-control text-center" />
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-12 " style="text-align: -webkit-center;">
                <div class="col-md-3">
                    <input id="btnPropSend" type="button" name="name" value="View List of Students Who have been issued TC by Schools" class="btn btn-primary" onclick="HideShow()" />
                </div>
            </div>
            <fieldset id="StudentsDetails">
                <legend>Students Details</legend>
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
                                    <th>क्रमांक</th>
                                    <th>जिला</th>
                                    <th>जारी की गयी TC</th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>Agar Malwa</td>
                                    <td>5518</td>

                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>Alirajpur</td>
                                    <td>23614</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>Veerpur</td>
                                    <td>25486</td>
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
        function HideShow() {
            var x = document.getElementById("StudentsDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }

    </script>
</asp:Content>

