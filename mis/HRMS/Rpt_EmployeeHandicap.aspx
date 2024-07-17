<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeHandicap.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeHandicap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#EmployeeReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Reports</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Handicap Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -4rem;">
            <img src="../../img/Employee.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Employee Handicap Report<br />
                                कर्मचारी विकलांगता रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Search Handicapped Employee / विकलांग कर्मचारी खोजें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        District
                                        <br />
                                        जिला<span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlDist" required="required">
                                        <option value="--Select--">--Select--</option>
                                        <option value="All">--All--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Raisen">Raisen</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Ashoknagar">Ashoknagar</option>
                                        <option value="Shivpuri">Shivpuri</option>
                                        <option value="Datia">Datia</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Harda">Harda</option>
                                        <option value="Hoshangabad">Hoshangabad</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Sheopur">Sheopur</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Barwani">Barwani</option>
                                        <option value="Burhanpur">Burhanpur</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jhabua">Jhabua</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Alirajpur">Alirajpur</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Narsinghpur">Narsinghpur</option>
                                        <option value="Seoni">Seoni</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Singroli">Singroli</option>
                                        <option value="Chhatarpur">Chhatarpur</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Panna">Panna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Umaria">Umaria</option>
                                        <option value="Dindori">Dindori</option>
                                        <option value="Anuppur">Anuppur</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Neemuch">Neemuch</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Shajapur">Shajapur</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 form-group">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="fillMainTable(generateDummyData(document.getElementById('ddlDist').value));">Search</button>
                                <a runat="server" id="A1" href="Rpt_EmployeeHandicap.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="fs_Details" style="display: none">
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>

                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sr. No.
                                                    <br />
                                                    सरल क्र.</th>
                                                <th>District
                                                    <br />
                                                    जिला</th>
                                                <th>Total Handicapped Employees
                                                    <br />
                                                    कुल विकलांग कर्मचारी</th>
                                                <th>Handicapped Type
                                                    <br />
                                                    विकलांग का प्रकार</th>
                                            </tr>
                                        </thead>

                                        <tbody id="tbody_districtTable">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <div class="modal fade" id="EmpModal" tabindex="-1" role="dialog" aria-labelledby="EmpModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title" id="EmpModalLabel">Handicapped Employees-<span id="ModaldistName"></span></h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row justify-content-end">
                                        <div class="col-md-6 text-end">
                                            <div class="form-group">
                                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Sr. No.<br />
                                                                सरल क्र.</th>
                                                            <th>Name<br />
                                                                नाम</th>
                                                            <%--<th>Sankul<br />
                                                                संकुल</th>--%>
                                                            <%-- <th>School<br />
                                                                स्कुल</th>--%>
                                                            <th>OIS Udise Code
                                                                <br />
                                                                OIS यू डाइस कोड </th>
                                                            <th>Handicapped Type<br />
                                                                विकलांग प्रकार </th>
                                                            <th>Handicapped Percentage<br />
                                                                विकलांग प्रतिशत</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>


                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>


        const names = ["UV3456-Vikram Singh", "WX7890-Anita Verma", "YZ1234-Amit Kumar", "AB5678-Priya Sharma", "CD9012-Rajesh Mehta", "EF2345-Suman Singh", "GH6789-Krishna Patel", "IJ0123-Sanjay Gupta", "KL4567-Pooja Sharma", "MN8901-Vinay Kumar", "OP2345-Maya Patel", "QR6789-Vivek Singh", "ST0123-Swati Gupta", "UV4567-Rakesh Sharma", "WX8901-Neha Patel", "YZ2345-Rahul Singh", "AB6789-Anjali Verma", "CD0123-Rajat Gupta", "EF4567-Kavita Sharma", "AB1234-Manish Meena", "CD5678-Ritu Sharma", "EF9012-Rahul Gupta", "GH3456-Sangeeta Patel", "IJ7890-Ravi Kumar"];

        const sankuls = ["23354912798 -Bal Bharti School", "34459823721 -New Horizon School", "45563178456 -Little Angels School", "56678931234 -Green Valley School", "67784251983 -Sunrise Public School	", "78897563214 -Bright Minds School", "89908674325 -Modern Public School"];
        const HandicappedPercentage = ["40 to 50", "51 to 60", "61 to 70", "81 to 90", "91 to 100"];
        const districts = ["Bhopal", "Raisen", "Rajgarh", "Sehore", "Vidisha", "Ashoknagar", "Shivpuri", "Datia", "Guna", "Gwalior", "Harda", "Hoshangabad", "Betul", "Morena", "Sheopur", "Bhind", "Barwani", "Burhanpur", "Dhar", "Indore", "Jhabua", "Khandwa", "Khargone", "Alirajpur", "Balaghat", "Chhindwara", "Jabalpur", "Katni", "Mandla", "Narsinghpur", "Seoni", "Rewa", "Satna", "Sidhi", "Singroli", "Chhatarpur", "Damoh", "Panna", "Sagar", "Tikamgarh", "Shahdol", "Umaria", "Dindori", "Anuppur", "Dewas", "Mandsaur", "Neemuch", "Ratlam", "Shajapur", "Ujjain"
        ];
        const handicappedTypes = ["Blindnes/अंधापन", "Low Vision/कम दृष्टि", "Hearing Impaiment/ श्रवण हानि",
            "Speech and Language / वाणी और भाषा", "Loco Moto Disability / लोको मोटो विकलांगता",
            "Mental Illness /मानसिक बिमारी", "Specipic Illness /विशिष्ट बीमारी",
            "Intellectual Disability / बौद्धिक विकलांगता", "Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति",
            "Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर", "Multiple Disability / एकाधिक विकलांगता",
            "Cerebral Palsy / मस्तिष्क पक्षाघात", "Dwarfism / बौनापन", "Muscular Dystrophy",
            "Chronic Disease / मांसपेशीय दुर्विकास", "Multiple Sclerosis / मल्टीपल स्क्लेरोसिस",
            "Thalassemia / थैलेसीमिया", "Hemophilia / हीमोफीलिया", "Sickle Cell Disease / सिकल सेल रोग",
            "Acid Attack Victim / एसिड अटैक पीड़िता", "Parkinson's Disease / पार्किंसंस रोग"
        ];


        function generateDummyData(selectedDistrict) {

            const data = [];
            let id = 1;

            for (let district of districts) {
                if (selectedDistrict === "All" || selectedDistrict === district) {
                    for (let i = 0; i < 2; i++) {
                        const totalEmployees = Math.floor(Math.random() * 5) + 1;
                        const typeIndex = Math.floor(Math.random() * handicappedTypes.length);
                        let type = handicappedTypes[typeIndex];
                        type = type.replace("/", "<br/>")
                        data.push({
                            id: id++,
                            district,
                            totalEmployees,
                            type
                        });
                        document.getElementById('fs_Details').style.display = 'block';
                    }

                }

            }
            return data;
        }


        // Function to fill the main table
        function fillMainTable(data) {
            const tableBody = document.getElementById('tbody_districtTable');
            tableBody.innerHTML = '';
            if (data != "") {

                data.forEach((row) => {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `
                            <td>${row.id}</td>
                            <td>${row.district}</td>
                            <td><a role="button" data-bs-toggle="modal" data-bs-target="#EmpModal" onclick="populateModalTable('${row.district}',${row.totalEmployees}, '${row.type}')" href="#">${row.totalEmployees}</a></td>
                            <td>${row.type}</td>
        `;
                    tableBody.appendChild(tr);
                });
            }
        }

        function populateModalTable(district, count, type) {
            const modalTableBody = document.querySelector('#EmpModal tbody');
            document.querySelector('#ModaldistName').innerText = district;
            modalTableBody.innerHTML = ''; // Clear existing rows

            // Copy the names array to avoid modification in the original array
            let availableNames = [...names];

            for (let i = 0; i < count; i++) {
                var sankul = sankuls[Math.floor(Math.random() * sankuls.length)];

                // Check if there are available names left
                if (availableNames.length === 0) {
                    console.log('No more available names.');
                    break;
                }

                // Randomly select a name and remove it from the availableNames array
                const randomIndex = Math.floor(Math.random() * availableNames.length);
                const selectedName = availableNames.splice(randomIndex, 1)[0];

                const row = `
            <tr>
                <td>${i + 1}</td>
                <td>${selectedName}</td>
                <td>${sankul}</td>
                <td>${type}</td>
                <td>${HandicappedPercentage[Math.floor(Math.random() * HandicappedPercentage.length)]}</td>
            </tr>`;
                modalTableBody.innerHTML += row;
            }
        }

    </script>
</asp:Content>

