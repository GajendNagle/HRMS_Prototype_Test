<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_EmployeeOvertimeCalculation.aspx.cs" Inherits="mis_Payroll_Trn_EmployeeOvertimeEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Overtime Pay Calculation</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Masters&SubID=PayrollMaster" title="click to go on">Payroll Masters</a></li>
                    <li class="breadcrumb-item active">Overtime Pay Calculation</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow ">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Overtime Pay Calculation</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="1">Head Office</option>
                                <option value="3">Bhopal- Circle Office</option>
                                <option value="4">Hoshangabad- Circle Office</option>
                                <option value="5">Betul- Circle Office</option>
                                <option value="6">Chhindwara- Circle Office</option>
                                <option value="7">seoni- Circle Office</option>
                                <option value="8">Balaghat- Circle Office</option>
                                <option value="9">Jabalpur- Circle Office</option>
                                <option value="10">Sagar- Circle Office</option>
                                <option value="11">Shivpuri- Circle Office</option>
                                <option value="12">Chhatarpur- Circle Office</option>
                                <option value="13">Gwalior- Circle Office</option>
                                <option value="14">Vidisha - ( VDS )</option>
                                <option value="15">Sehore- ( SHR )</option>
                                <option value="16">Raisen- ( RSN )</option>
                                <option value="17">Bhopal- ( BPL )</option>
                                <option value="18">Obedullaganj- ( OBD )</option>
                                <option value="19">Rajgarh- ( RJG )</option>
                                <option value="20">Hoshangabad- ( HSB )</option>
                                <option value="21">Harda- ( HRD )</option>
                                <option value="22">Indore- Circle Office</option>
                                <option value="23">Ujjain- Circle Office</option>
                                <option value="24">Khandwa- Circle Office</option>
                                <option value="25">Shahdol- Circle Office</option>
                                <option value="26">Rewa-Circle Office (CCF)</option>
                                <option value="27">North Betul- ( NBT )</option>
                                <option value="28">South Betul- ( SBT )</option>
                                <option value="29">West Betul - ( WBT )</option>
                                <option value="30">East Chhindwara- ( ECH )</option>
                                <option value="35">Narsinghpur- ( NRS )</option>
                                <option value="36">North Balaghat- ( NBG )</option>
                                <option value="31">West Chhindwara- ( WCH )</option>
                                <option value="32">South Chhindwara- ( SCH )</option>
                                <option value="33">North Seoni- ( NSE )</option>
                                <option value="34">South Seoni- ( SSE )</option>
                                <option value="37">South Balaghat- ( SBG )</option>
                                <option value="38">Jabalpur- ( JBP )</option>
                                <option value="39">East Mandla- ( EML )</option>
                                <option value="40">West Mandla- ( WML )</option>
                                <option value="41">Dindori- ( DND )</option>
                                <option value="42">Katni- ( KTN )</option>
                                <option value="43">North Sagar- ( NSG )</option>
                                <option value="44">South Sagar- ( SSG )</option>
                                <option value="45">Damoh- ( DMH )</option>
                                <option value="46">Shivpuri - ( SHV )</option>
                                <option value="47">Ashoknagar- ( ASH )</option>
                                <option value="48">Guna- ( GUN )</option>
                                <option value="49">Chhatarpur- ( CHT )</option>
                                <option value="50">North Panna- ( NPN )</option>
                                <option value="51">South Panna- ( SPN )</option>
                                <option value="52">Tikamgarh- ( TKG )</option>
                                <option value="53">Gwalior- ( GWL )</option>
                                <option value="54">Sheopur- ( SHE )</option>
                                <option value="55">Morena- ( MRN )</option>
                                <option value="56">Indore- ( IND )</option>
                                <option value="57">Dhar - (DHR)</option>
                                <option value="58">Jhabua- ( JHB )</option>
                                <option value="59">Alirajpur- (ALI)</option>
                                <option value="60">Ujjain (UJN)</option>
                                <option value="61">Ratlam- (RTL)</option>
                                <option value="62">Shajapur- (SJP)</option>
                                <option value="63">Neemuch- (MND)</option>
                                <option value="64">Dewas- (DWS)</option>
                                <option value="65">Khandwa- (KDW)</option>
                                <option value="66">Khargone- (KHG)</option>
                                <option value="67">Sendhwa- (SDH)</option>
                                <option value="68">Burhanpur- (BRH)</option>
                                <option value="69">Barwani- BDN</option>
                                <option value="70">Barwaha- (BDH)</option>
                                <option value="71">North Shahdol- (NSD)</option>
                                <option value="72">South Shahdol- (SSH)</option>
                                <option value="73">Umaria- (UMR)</option>
                                <option value="74">Anuppur- (ANP)</option>
                                <option value="75">Rewa- (REW)</option>
                                <option value="76">Singrauli- (ESD)</option>
                                <option value="77">Sidhi- (WSD)</option>
                                <option value="78">Satna- ( STN )</option>
                                <option value="81">M.F.P.-PARC, Barkheda Pathani, Bhopal</option>
                                <option value="14949">APCCF Delhi Depo</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">Admin-User (E0001)</option>
                                <option value="67">Anupam Sharma (E0067)</option>
                                <option value="82">Mr Ram Singh Sisodiya (E0082)</option>
                                <option value="83">Shri Saji Varghese (E0083)</option>
                                <option value="84">Mr Ram Bharos Yadav  (E0084)</option>
                                <option value="85">Mr Surendra Kumar Uddey (E0085)</option>
                                <option value="86">Mr Sunil Kumar Bujruk (E0086)</option>
                                <option value="87">Mr Narendra Kumar Pandey (E0087)</option>
                                <option value="88">Mr Murlidhar Jadhav (E0088)</option>
                                <option value="89">Mr Rishiram Ranabhat  (E0089)</option>
                                <option value="90">Smt Susy Joseph (E0090)</option>
                                <option value="91">Mr Alok Mishra (E0091)</option>
                                <option value="92">Mr Prem Prakash Asthana (E0092)</option>
                                <option value="93">Mr Arvind Sharma (E0093)</option>
                                <option value="94">Mr Vinod Kushwaha (E0094)</option>
                                <option value="95">Mr Bhav Singh Vishwarma (E0095)</option>
                                <option value="96">Mr Sanjay Chandwani (E0096)</option>
                                <option value="97">Mr Dilip Borse (E0097)</option>
                                <option value="98">Mr Devendra Nahar (E0098)</option>
                                <option value="100">Shri Makkhan Singh Chouhan (E0100)</option>
                                <option value="101">Smt Suvarna Mundley (E0101)</option>
                                <option value="103">Mr Mayank Kumar Vyas (E0103)</option>
                                <option value="104">Smt Shreedevi Nair (E0104)</option>
                                <option value="105">Smt Pushplata Shrivas (E0105)</option>
                                <option value="106">Mr Ramswaroop Sen (E0106)</option>
                                <option value="107">Smt  Kiran Harode (E0107)</option>
                                <option value="108">Smt Chhaya Assudani (E0108)</option>
                                <option value="109">Mr Rikhiram Thakur  (E0109)</option>
                                <option value="110">Mr Ganesh Prashad Pandey (E0110)</option>
                                <option value="111">Mr Pushkar Singh  (E0111)</option>
                                <option value="112">Mr Vishnu Prasad Pandey  (E0112)</option>
                                <option value="114">Kanchan Bhilala  (E0114)</option>
                                <option value="115">Dr Anil Kumar (E0115)</option>
                                <option value="116">Mr Shubham Khandewal (E0116)</option>
                                <option value="117">Mrs Kanchan Thakur (E0117)</option>
                                <option value="118">Mr Satyendra Paraste (E0118)</option>
                                <option value="120">Mr Kedar Singh Panwar  (E0120)</option>
                                <option value="122">Mrs Kalpana Shrivastava (E0122)</option>
                                <option value="123">Mr Vijay Wadekar  (E0123)</option>
                                <option value="124">Mr Balram Singh (E0124)</option>
                                <option value="125">Devendra Nagar  (E0125)</option>
                                <option value="126">Mrs Sangeeta Paliwal  (E0126)</option>
                                <option value="127">Mr Syed Hasan Shamoon (E0127)</option>
                                <option value="129">Mr Yadvendra Pratap Singh Baghel  (E0129)</option>
                                <option value="130">Mr Rajeev Kumar Shrivastava (E0130)</option>
                                <option value="132">Mr Dheeraj Kumar Uikey  (E0132)</option>
                                <option value="133">Shri Sanjay Maurya (E0133)</option>
                                <option value="134">Bahadur Sahu (E0134)</option>
                                <option value="135">Mr Rajesh Kumar Soni  (E0135)</option>
                                <option value="136">Dilip Kumar Nathani (E0136)</option>
                                <option value="137">Mr Santosh Kumar Tiwari  (E0137)</option>
                                <option value="138">Mr Mahendra Rai  (E0138)</option>
                                <option value="139">Mr Brijmohan Patel  (E0139)</option>
                                <option value="140">Mr Vinod Kumar Dwivedi (E0140)</option>
                                <option value="141">Mr Ramadhar Patel  (E0141)</option>
                                <option value="142">Smt Suja Kottayathu Kurian  (E0142)</option>
                                <option value="143">Mr Ishwar Din Kushwaha  (E0143)</option>
                                <option value="144">Mr Shashi Bhushan Mishra  (E0144)</option>
                                <option value="145">Mr Kamlesh Kumar Paliwal  (E0145)</option>
                                <option value="146">Smt Rajni Tiwari  (E0146)</option>
                                <option value="147">Shri K Shajahan (E0147)</option>
                                <option value="148">Mr Saroj Singh Sengar  (E0148)</option>
                                <option value="149">Mr Govind Prashad Baghel  (E0149)</option>
                                <option value="150">Mr Ramesh Kumar Barmaiya  (E0150)</option>
                                <option value="151">Mr Tikaram Pandey  (E0151)</option>
                                <option value="152">Mr Vijay Kumar Kushwaha  (E0152)</option>
                                <option value="153">Mr Gopal Singh Rajput  (E0153)</option>
                                <option value="154">Mr Lalla Prasad Kahar (E0154)</option>
                                <option value="155">Mr Kedar Nath Kushwaha  (E0155)</option>
                                <option value="158">Mr Shashi Kant Gangwar  (E0158)</option>
                                <option value="159">Mr Rajendra Garg  (E0159)</option>
                                <option value="160">Mr Dhirendra Singh (E0160)</option>
                                <option value="161">Om Prakash Mishra  (E0161)</option>
                                <option value="162">Mr Brijlal Verma  (E0162)</option>
                                <option value="163">Koshal Patel  (E0163)</option>
                                <option value="164">Smt Pyari Dhan (E0164)</option>
                                <option value="165">Smt Geeta Mishra  (E0165)</option>
                                <option value="166">Smt Devendri Singh (E0166)</option>
                                <option value="167">Mr Rajendra Yadav  (E0167)</option>
                                <option value="168">Mr Heeralal Joshi  (E0168)</option>
                                <option value="169">Mani Ram  (E0169)</option>
                                <option value="170">Mr Atul Sharma  (E0170)</option>
                                <option value="171">Mr Surendra kumar Pandey  (E0171)</option>
                                <option value="172">Mr Dheerendra Nath Jana  (E0172)</option>
                                <option value="177">Shri Dara Singh Yadav (E0177)</option>
                                <option value="178">Mr Sanjay Kumar Geete (E0178)</option>
                                <option value="179">Mr Ramcharan Ahirwar  (E0179)</option>
                                <option value="180">Mr Rajesh Khushwah (E0180)</option>
                                <option value="181">Mrs Saroj Batham  (E0181)</option>
                                <option value="182">Raj Kumar Singh  (E0182)</option>
                                <option value="183">Shri Manoj Malviya (E0183)</option>
                                <option value="184">Mr Shailendra Raikwar (E0184)</option>
                                <option value="186">Mr Deepak Kumar Shah (E0185)</option>
                                <option value="187">Mr Ummed Kumar Kushwaha  (E0187)</option>
                                <option value="188">Shri Bibhash Kumar Thakur (E0188)</option>
                                <option value="194">Smt Rekha Surwade  (E0194)</option>
                                <option value="195">Mr Shrikishan Gurjar (E0195)</option>
                                <option value="198">Shri Om Prakash Thakur (E0198)</option>
                                <option value="199">Mr Sushil Kumar Joshi (E0199)</option>
                                <option value="204">Mrs Suchitra Gajbhiye (E0204)</option>
                                <option value="206">Mr lakhan vishwakarma (E0206)</option>
                                <option value="272">Mr Vikram Singh Meena (E0272)</option>
                                <option value="273">Mr Aakash Goswami (E0273)</option>
                                <option value="293">Mr Raj Kumar Chandrawanshi  (E0293)</option>
                                <option value="305">Mr Rakesh Kumar Mishra (E0305)</option>
                                <option value="344">Mr Sanjeev Shandilya (E0344)</option>
                                <option value="439">Laxman Prasad Gautam (E0439)</option>
                                <option value="441">Shri Bhagwat Singh (E0441)</option>
                                <option value="443">Mr Devendra Pratap Singh (E0443)</option>
                                <option value="449">Mr Anurag Raikwar (E0449)</option>
                                <option value="493">Priyanka Batham (E0493)</option>
                                <option value="1578">Mr Deepak Navik (E1578)</option>
                                <option value="1579">Mr Prashant Deshpande  (E1579)</option>
                                <option value="1580">Mr Diwakar Singh  (E1580)</option>
                                <option value="1583">NICSI-User (E1583)</option>
                                <option value="1586">Administrator (E1586)</option>
                                <option value="1587">Kanti  Kumar Dwivedi (E1587)</option>
                                <option value="1588">Ashok Kumar Khare  (E1588)</option>
                                <option value="1602">Smt Reena Kulshrestha (E1602)</option>
                                <option value="1604">Smt Archana Patel (E1604)</option>
                                <option value="1608">Shri Manoj Kumar Agrawal (E1608)</option>
                                <option value="1613">Smt Suneeta Ahirwar (E1613)</option>
                                <option value="1623">Zaheer (E1623)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date <span style="color: red;">*</span></label>
                            <input type="date" class="form-control" placeholder="Select Date" />
                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Working Hour<span style="color: red;">*</span></label>
                            <input type="text" maxlength="2" class="form-control" placeholder="Enter Working Hour" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="submit" value="Save" class="btn btn-block btn-success btn-rounded" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <a class="btn btn-block btn-danger btn-rounded" href="Trn_EmployeeOvertimeEntry.aspx">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>

    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Employee Overtime Pay Overtime Pay Calculation Details</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="1">Head Office</option>
                                <option value="3">Bhopal- Circle Office</option>
                                <option value="4">Hoshangabad- Circle Office</option>
                                <option value="5">Betul- Circle Office</option>
                                <option value="6">Chhindwara- Circle Office</option>
                                <option value="7">seoni- Circle Office</option>
                                <option value="8">Balaghat- Circle Office</option>
                                <option value="9">Jabalpur- Circle Office</option>
                                <option value="10">Sagar- Circle Office</option>
                                <option value="11">Shivpuri- Circle Office</option>
                                <option value="12">Chhatarpur- Circle Office</option>
                                <option value="13">Gwalior- Circle Office</option>
                                <option value="14">Vidisha - ( VDS )</option>
                                <option value="15">Sehore- ( SHR )</option>
                                <option value="16">Raisen- ( RSN )</option>
                                <option value="17">Bhopal- ( BPL )</option>
                                <option value="18">Obedullaganj- ( OBD )</option>
                                <option value="19">Rajgarh- ( RJG )</option>
                                <option value="20">Hoshangabad- ( HSB )</option>
                                <option value="21">Harda- ( HRD )</option>
                                <option value="22">Indore- Circle Office</option>
                                <option value="23">Ujjain- Circle Office</option>
                                <option value="24">Khandwa- Circle Office</option>
                                <option value="25">Shahdol- Circle Office</option>
                                <option value="26">Rewa-Circle Office (CCF)</option>
                                <option value="27">North Betul- ( NBT )</option>
                                <option value="28">South Betul- ( SBT )</option>
                                <option value="29">West Betul - ( WBT )</option>
                                <option value="30">East Chhindwara- ( ECH )</option>
                                <option value="35">Narsinghpur- ( NRS )</option>
                                <option value="36">North Balaghat- ( NBG )</option>
                                <option value="31">West Chhindwara- ( WCH )</option>
                                <option value="32">South Chhindwara- ( SCH )</option>
                                <option value="33">North Seoni- ( NSE )</option>
                                <option value="34">South Seoni- ( SSE )</option>
                                <option value="37">South Balaghat- ( SBG )</option>
                                <option value="38">Jabalpur- ( JBP )</option>
                                <option value="39">East Mandla- ( EML )</option>
                                <option value="40">West Mandla- ( WML )</option>
                                <option value="41">Dindori- ( DND )</option>
                                <option value="42">Katni- ( KTN )</option>
                                <option value="43">North Sagar- ( NSG )</option>
                                <option value="44">South Sagar- ( SSG )</option>
                                <option value="45">Damoh- ( DMH )</option>
                                <option value="46">Shivpuri - ( SHV )</option>
                                <option value="47">Ashoknagar- ( ASH )</option>
                                <option value="48">Guna- ( GUN )</option>
                                <option value="49">Chhatarpur- ( CHT )</option>
                                <option value="50">North Panna- ( NPN )</option>
                                <option value="51">South Panna- ( SPN )</option>
                                <option value="52">Tikamgarh- ( TKG )</option>
                                <option value="53">Gwalior- ( GWL )</option>
                                <option value="54">Sheopur- ( SHE )</option>
                                <option value="55">Morena- ( MRN )</option>
                                <option value="56">Indore- ( IND )</option>
                                <option value="57">Dhar - (DHR)</option>
                                <option value="58">Jhabua- ( JHB )</option>
                                <option value="59">Alirajpur- (ALI)</option>
                                <option value="60">Ujjain (UJN)</option>
                                <option value="61">Ratlam- (RTL)</option>
                                <option value="62">Shajapur- (SJP)</option>
                                <option value="63">Neemuch- (MND)</option>
                                <option value="64">Dewas- (DWS)</option>
                                <option value="65">Khandwa- (KDW)</option>
                                <option value="66">Khargone- (KHG)</option>
                                <option value="67">Sendhwa- (SDH)</option>
                                <option value="68">Burhanpur- (BRH)</option>
                                <option value="69">Barwani- BDN</option>
                                <option value="70">Barwaha- (BDH)</option>
                                <option value="71">North Shahdol- (NSD)</option>
                                <option value="72">South Shahdol- (SSH)</option>
                                <option value="73">Umaria- (UMR)</option>
                                <option value="74">Anuppur- (ANP)</option>
                                <option value="75">Rewa- (REW)</option>
                                <option value="76">Singrauli- (ESD)</option>
                                <option value="77">Sidhi- (WSD)</option>
                                <option value="78">Satna- ( STN )</option>
                                <option value="81">M.F.P.-PARC, Barkheda Pathani, Bhopal</option>
                                <option value="14949">APCCF Delhi Depo</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee</label>
                            <select class="form-control select2">
                                <option value="0">All</option>
                                <option value="1">Admin-User (E0001)</option>
                                <option value="67">Anupam Sharma (E0067)</option>
                                <option value="82">Mr Ram Singh Sisodiya (E0082)</option>
                                <option value="83">Shri Saji Varghese (E0083)</option>
                                <option value="84">Mr Ram Bharos Yadav  (E0084)</option>
                                <option value="85">Mr Surendra Kumar Uddey (E0085)</option>
                                <option value="86">Mr Sunil Kumar Bujruk (E0086)</option>
                                <option value="87">Mr Narendra Kumar Pandey (E0087)</option>
                                <option value="88">Mr Murlidhar Jadhav (E0088)</option>
                                <option value="89">Mr Rishiram Ranabhat  (E0089)</option>
                                <option value="90">Smt Susy Joseph (E0090)</option>
                                <option value="91">Mr Alok Mishra (E0091)</option>
                                <option value="92">Mr Prem Prakash Asthana (E0092)</option>
                                <option value="93">Mr Arvind Sharma (E0093)</option>
                                <option value="94">Mr Vinod Kushwaha (E0094)</option>
                                <option value="95">Mr Bhav Singh Vishwarma (E0095)</option>
                                <option value="96">Mr Sanjay Chandwani (E0096)</option>
                                <option value="97">Mr Dilip Borse (E0097)</option>
                                <option value="98">Mr Devendra Nahar (E0098)</option>
                                <option value="100">Shri Makkhan Singh Chouhan (E0100)</option>
                                <option value="101">Smt Suvarna Mundley (E0101)</option>
                                <option value="103">Mr Mayank Kumar Vyas (E0103)</option>
                                <option value="104">Smt Shreedevi Nair (E0104)</option>
                                <option value="105">Smt Pushplata Shrivas (E0105)</option>
                                <option value="106">Mr Ramswaroop Sen (E0106)</option>
                                <option value="107">Smt  Kiran Harode (E0107)</option>
                                <option value="108">Smt Chhaya Assudani (E0108)</option>
                                <option value="109">Mr Rikhiram Thakur  (E0109)</option>
                                <option value="110">Mr Ganesh Prashad Pandey (E0110)</option>
                                <option value="111">Mr Pushkar Singh  (E0111)</option>
                                <option value="112">Mr Vishnu Prasad Pandey  (E0112)</option>
                                <option value="114">Kanchan Bhilala  (E0114)</option>
                                <option value="115">Dr Anil Kumar (E0115)</option>
                                <option value="116">Mr Shubham Khandewal (E0116)</option>
                                <option value="117">Mrs Kanchan Thakur (E0117)</option>
                                <option value="118">Mr Satyendra Paraste (E0118)</option>
                                <option value="120">Mr Kedar Singh Panwar  (E0120)</option>
                                <option value="122">Mrs Kalpana Shrivastava (E0122)</option>
                                <option value="123">Mr Vijay Wadekar  (E0123)</option>
                                <option value="124">Mr Balram Singh (E0124)</option>
                                <option value="125">Devendra Nagar  (E0125)</option>
                                <option value="126">Mrs Sangeeta Paliwal  (E0126)</option>
                                <option value="127">Mr Syed Hasan Shamoon (E0127)</option>
                                <option value="129">Mr Yadvendra Pratap Singh Baghel  (E0129)</option>
                                <option value="130">Mr Rajeev Kumar Shrivastava (E0130)</option>
                                <option value="132">Mr Dheeraj Kumar Uikey  (E0132)</option>
                                <option value="133">Shri Sanjay Maurya (E0133)</option>
                                <option value="134">Bahadur Sahu (E0134)</option>
                                <option value="135">Mr Rajesh Kumar Soni  (E0135)</option>
                                <option value="136">Dilip Kumar Nathani (E0136)</option>
                                <option value="137">Mr Santosh Kumar Tiwari  (E0137)</option>
                                <option value="138">Mr Mahendra Rai  (E0138)</option>
                                <option value="139">Mr Brijmohan Patel  (E0139)</option>
                                <option value="140">Mr Vinod Kumar Dwivedi (E0140)</option>
                                <option value="141">Mr Ramadhar Patel  (E0141)</option>
                                <option value="142">Smt Suja Kottayathu Kurian  (E0142)</option>
                                <option value="143">Mr Ishwar Din Kushwaha  (E0143)</option>
                                <option value="144">Mr Shashi Bhushan Mishra  (E0144)</option>
                                <option value="145">Mr Kamlesh Kumar Paliwal  (E0145)</option>
                                <option value="146">Smt Rajni Tiwari  (E0146)</option>
                                <option value="147">Shri K Shajahan (E0147)</option>
                                <option value="148">Mr Saroj Singh Sengar  (E0148)</option>
                                <option value="149">Mr Govind Prashad Baghel  (E0149)</option>
                                <option value="150">Mr Ramesh Kumar Barmaiya  (E0150)</option>
                                <option value="151">Mr Tikaram Pandey  (E0151)</option>
                                <option value="152">Mr Vijay Kumar Kushwaha  (E0152)</option>
                                <option value="153">Mr Gopal Singh Rajput  (E0153)</option>
                                <option value="154">Mr Lalla Prasad Kahar (E0154)</option>
                                <option value="155">Mr Kedar Nath Kushwaha  (E0155)</option>
                                <option value="158">Mr Shashi Kant Gangwar  (E0158)</option>
                                <option value="159">Mr Rajendra Garg  (E0159)</option>
                                <option value="160">Mr Dhirendra Singh (E0160)</option>
                                <option value="161">Om Prakash Mishra  (E0161)</option>
                                <option value="162">Mr Brijlal Verma  (E0162)</option>
                                <option value="163">Koshal Patel  (E0163)</option>
                                <option value="164">Smt Pyari Dhan (E0164)</option>
                                <option value="165">Smt Geeta Mishra  (E0165)</option>
                                <option value="166">Smt Devendri Singh (E0166)</option>
                                <option value="167">Mr Rajendra Yadav  (E0167)</option>
                                <option value="168">Mr Heeralal Joshi  (E0168)</option>
                                <option value="169">Mani Ram  (E0169)</option>
                                <option value="170">Mr Atul Sharma  (E0170)</option>
                                <option value="171">Mr Surendra kumar Pandey  (E0171)</option>
                                <option value="172">Mr Dheerendra Nath Jana  (E0172)</option>
                                <option value="177">Shri Dara Singh Yadav (E0177)</option>
                                <option value="178">Mr Sanjay Kumar Geete (E0178)</option>
                                <option value="179">Mr Ramcharan Ahirwar  (E0179)</option>
                                <option value="180">Mr Rajesh Khushwah (E0180)</option>
                                <option value="181">Mrs Saroj Batham  (E0181)</option>
                                <option value="182">Raj Kumar Singh  (E0182)</option>
                                <option value="183">Shri Manoj Malviya (E0183)</option>
                                <option value="184">Mr Shailendra Raikwar (E0184)</option>
                                <option value="186">Mr Deepak Kumar Shah (E0185)</option>
                                <option value="187">Mr Ummed Kumar Kushwaha  (E0187)</option>
                                <option value="188">Shri Bibhash Kumar Thakur (E0188)</option>
                                <option value="194">Smt Rekha Surwade  (E0194)</option>
                                <option value="195">Mr Shrikishan Gurjar (E0195)</option>
                                <option value="198">Shri Om Prakash Thakur (E0198)</option>
                                <option value="199">Mr Sushil Kumar Joshi (E0199)</option>
                                <option value="204">Mrs Suchitra Gajbhiye (E0204)</option>
                                <option value="206">Mr lakhan vishwakarma (E0206)</option>
                                <option value="272">Mr Vikram Singh Meena (E0272)</option>
                                <option value="273">Mr Aakash Goswami (E0273)</option>
                                <option value="293">Mr Raj Kumar Chandrawanshi  (E0293)</option>
                                <option value="305">Mr Rakesh Kumar Mishra (E0305)</option>
                                <option value="344">Mr Sanjeev Shandilya (E0344)</option>
                                <option value="439">Laxman Prasad Gautam (E0439)</option>
                                <option value="441">Shri Bhagwat Singh (E0441)</option>
                                <option value="443">Mr Devendra Pratap Singh (E0443)</option>
                                <option value="449">Mr Anurag Raikwar (E0449)</option>
                                <option value="493">Priyanka Batham (E0493)</option>
                                <option value="1578">Mr Deepak Navik (E1578)</option>
                                <option value="1579">Mr Prashant Deshpande  (E1579)</option>
                                <option value="1580">Mr Diwakar Singh  (E1580)</option>
                                <option value="1583">NICSI-User (E1583)</option>
                                <option value="1586">Administrator (E1586)</option>
                                <option value="1587">Kanti  Kumar Dwivedi (E1587)</option>
                                <option value="1588">Ashok Kumar Khare  (E1588)</option>
                                <option value="1602">Smt Reena Kulshrestha (E1602)</option>
                                <option value="1604">Smt Archana Patel (E1604)</option>
                                <option value="1608">Shri Manoj Kumar Agrawal (E1608)</option>
                                <option value="1613">Smt Suneeta Ahirwar (E1613)</option>
                                <option value="1623">Zaheer (E1623)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date <span style="color: red;">*</span></label>
                            <input type="date" class="form-control" placeholder="Select Date" />
                        </div>
                    </div>
                    <div class="col-md-2 mt-2">
                        <br />
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn-block btn btn-success btn-rounded">Search</button>
                        </div>
                    </div>
                </div>
                <div id="show">
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table border table-bordered tablerow">
                                <tr>
                                    <th>SNo.</th>
                                    <th>Employee Name</th>
                                    <th>Date</th>
                                    <th>Working Hour</th>
                                    <th>Delete</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Pradeep</td>
                                    <td>02/01/2024</td>
                                    <td>20</td>
                                    <td><a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown which will automatically reflect from<strong> Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Employee Name</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Registration</strong></li>
                                </ul>
                            </li>
                            <li><strong>Date</strong>
                                <ul>
                                    <li>User will be able to select <strong>Date </strong>
                                    from DataBase
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
                            <li><strong>Search </strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Delete</strong>
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
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

