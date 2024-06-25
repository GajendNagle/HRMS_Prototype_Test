using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_JDLevelReportSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BlockWiseCounting.Visible=false;
        }

        if (Request.QueryString["ID"] != null)
        {
            ViewState["ModuleID"] = Request.QueryString["ID"];
            Module();
        }
        else
        {
            ViewState["ModuleID"] = null;
            Response.Redirect("JDLevelReportSection.aspx?ID=DisposeCasesNOC");
        }
    }
    protected void Module()
    {
        DisposeCasesNOC.Visible = false;
        BlockWiseCounting.Visible = false;
        DistrictWiseCounting.Visible = false;
              AavendalMeApptiDarjReport.Visible = false;
              divBlockWiseCountingtbl.Visible = false;
        divOfDropdownDistrict.Visible= false;
        divBlockWiseCountingtbl.Visible= false;
          if (ViewState["ModuleID"] != null)
        {

            if (ViewState["ModuleID"].ToString() == "DisposeCasesNOC")
            {
                DisposeCasesNOC.Visible = true;
                brdcmDisposeCases.Visible=true;
            }
            else if (ViewState["ModuleID"].ToString() == "BlockWiseCounting")
            {
                divBlockWiseCountingtbl.Visible=false;
                divOfDropdownDistrict.Visible= true;
                BlockWiseCounting.Visible=true;
                brdcmBloackWise.Visible=true;
            }
            else if (ViewState["ModuleID"].ToString() == "DistrictWiseCounting")
            {
                DistrictWiseCounting.Visible = true;
                brdcmDistrictWise.Visible=true;
                firsttimetable.Visible=true;
            }
            else
            {
                Response.Redirect("JDLevelReportSection.aspx?ID=DisposeCasesNOC");
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlJDLevelDistrict.SelectedValue=="1")
        {
        BlockWiseCounting.Visible=true;
        divBlockWiseCountingtbl.Visible=true;
            divTbldataOfBhopal.Visible=true;
            divTbldataOfSihore.Visible=false;         
            divTbldataOfRaisen.Visible=false;
            divTbldataOfRajgar.Visible=false;
            divTbldataOfVidisha.Visible=false;
        }

        if (ddlJDLevelDistrict.SelectedValue=="4")
        {
            BlockWiseCounting.Visible=true;
            divBlockWiseCountingtbl.Visible=true;
            divTbldataOfSihore.Visible=true;
            divTbldataOfBhopal.Visible=false;         
            divTbldataOfRaisen.Visible=false;
            divTbldataOfRajgar.Visible=false;
            divTbldataOfVidisha.Visible=false;
        }
        if (ddlJDLevelDistrict.SelectedValue=="2")
        {
            BlockWiseCounting.Visible=true;
            divBlockWiseCountingtbl.Visible=true;
            divTbldataOfRaisen.Visible=true;
            divTbldataOfSihore.Visible=false;
            divTbldataOfBhopal.Visible=false;
            divTbldataOfRajgar.Visible=false;
            divTbldataOfVidisha.Visible=false;
        }
        if (ddlJDLevelDistrict.SelectedValue=="3")
        {
            BlockWiseCounting.Visible=true;
            divBlockWiseCountingtbl.Visible=true;
            divTbldataOfRajgar.Visible=true;
            divTbldataOfSihore.Visible=false;
            divTbldataOfBhopal.Visible=false;
            divTbldataOfRaisen.Visible=false;
            divTbldataOfVidisha.Visible=false;
        }
        if (ddlJDLevelDistrict.SelectedValue=="5")
        {
            BlockWiseCounting.Visible=true;
            divBlockWiseCountingtbl.Visible=true;
            divTbldataOfVidisha.Visible=true;
            divTbldataOfSihore.Visible=false;
            divTbldataOfBhopal.Visible=false;
            divTbldataOfRaisen.Visible=false;
            divTbldataOfRajgar.Visible=false;
        }

    }
    protected void hideShowDistrictWiseLockaavedan_Click(object sender, EventArgs e)
    {
        DistrictWiseLockaavedan.Visible=true;
        DistrictWiseCounting.Visible=true;
        firsttimetable.Visible=false;
          }
    protected void hidshowAvedankoAdhikariKoForwordKiyagya_Click(object sender, EventArgs e)
    {
         DistrictWiseCounting.Visible=true;
        firsttimetable.Visible=false;
         }

    protected void hideshowDisposeAavedan_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
        firsttimetable.Visible=false;
    }
    protected void hideshowTotalReceivedCases_Click1(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
        firsttimetable.Visible=false;
    }
}