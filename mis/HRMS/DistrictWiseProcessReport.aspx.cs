using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_DistrictWiseProcessReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
    protected void PendingForActin_Click(object sender, EventArgs e)
    {
        fdSetSummaryReport.Visible=false;
        fdSetPendingForActin.Visible = true;
        if (fdSetPendingForActin.Visible == true)
        {
            ReportOfPendingComplaint.Visible = true;
        }

        BeforeClickInPendingComplain.Visible=true;
        ddlDistrict.SelectedIndex=6;
    }
    protected void RejectedGrievances_Click(object sender, EventArgs e)
    {
        fdSetRejectedGrievances.Visible = true;
        fdSetSummaryReport.Visible=false;
        BeforeClickInRejectComplain.Visible=true;
        ddlRejectCase.SelectedIndex=6;
        if (fdSetRejectedGrievances.Visible == true)
        {
            ReportOfRejectedDetails.Visible = true;
        }
    }
    protected void DisposedGrievances_Click(object sender, EventArgs e)
    {
        fdSetDisposedGrievances.Visible = true;
        BeforeClickInDisposeCase.Visible = true;
        fdSetSummaryReport.Visible=false;
        ddlDisposeCase.SelectedIndex=6;
        if (fdSetDisposedGrievances.Visible == true)
        {
            ReportOfDisposedDetails.Visible = true;
        }
    }
    protected void BtndistrictWiseData_Click(object sender, EventArgs e)
    {
        if (ddlDistrict.SelectedValue=="1")
        {
           
            onClicktblAgarMalwa.Visible=true;
            onClicktblAnuppur.Visible=false;
            onClicktblAlirajPur.Visible=false;
            BeforeClickInPendingComplain.Visible=false;
            fdSetPendingForActin.Visible=true;
           
        }
        if (ddlDistrict.SelectedValue=="2")
        {
            onClicktblAgarMalwa.Visible =false;
            onClicktblAnuppur.Visible=false;
            onClicktblAlirajPur.Visible=true;
            fdSetPendingForActin.Visible=true;
            BeforeClickInPendingComplain.Visible=false;
           
        }
        if (ddlDistrict.SelectedValue=="3")
        {
            onClicktblAgarMalwa.Visible=false;
            onClicktblAlirajPur.Visible=false;
            onClicktblAnuppur.Visible=true;
            fdSetPendingForActin.Visible=true;
            BeforeClickInPendingComplain.Visible=false;
            onClicktblAlirajPur.Visible=false;
        }

    }
    protected void BtnRejectData_Click(object sender, EventArgs e)
    {
        if (ddlRejectCase.SelectedValue=="1")
        {
            onClickRejectTblAgarMalwa.Visible=true;
            onClickRejectTblAnuppur.Visible=false;
            onClickRejectTblAlirajPur.Visible=false;
            BeforeClickInRejectComplain.Visible=false;
            fdSetRejectedGrievances.Visible=true;
        }
        if (ddlRejectCase.SelectedValue=="2")
        {
            onClickRejectTblAgarMalwa.Visible =false;
            onClickRejectTblAnuppur.Visible=false;
            onClickRejectTblAlirajPur.Visible=true;
            fdSetRejectedGrievances.Visible=true;
            BeforeClickInRejectComplain.Visible=false;

        }
        if (ddlRejectCase.SelectedValue=="3")
        {
            onClickRejectTblAgarMalwa.Visible=false;
            onClickRejectTblAlirajPur.Visible=false;
            onClickRejectTblAnuppur.Visible=true;
            fdSetRejectedGrievances.Visible=true;
            BeforeClickInRejectComplain.Visible=false;
            
        }
    }
    protected void BtnDisposeCase_Click(object sender, EventArgs e)
    {
        if (ddlDisposeCase.SelectedValue=="1")
        {
            onClickDisposeTblAgarMalwa.Visible=true;
            onClickDisposeTblAlirajPur.Visible=false;
            onClickDisposeTblAnuppur.Visible=false;
            fdSetDisposedGrievances.Visible=true;
            BeforeClickInDisposeCase.Visible=false;
           

        }
        if (ddlDisposeCase.SelectedValue=="2")
        {
            onClickDisposeTblAgarMalwa.Visible=false;
            onClickDisposeTblAlirajPur.Visible=true;
            onClickDisposeTblAnuppur.Visible=false;
            fdSetDisposedGrievances.Visible=true;
            BeforeClickInDisposeCase.Visible=false;

        }
        if (ddlDisposeCase.SelectedValue=="3")
        {
            onClickDisposeTblAgarMalwa.Visible=false;
            onClickDisposeTblAlirajPur.Visible=false;
            onClickDisposeTblAnuppur.Visible=true;
            fdSetDisposedGrievances.Visible=true;
            BeforeClickInDisposeCase.Visible=false;
        }   
    }
    protected void PendingForActinBhopal_Click(object sender, EventArgs e)
    {
        fdSetSummaryReport.Visible=false;
        fdSetPendingForActin.Visible = true;
        BeforeClickInPendingComplain.Visible=true;
        ddlDistrict.SelectedIndex=9;
        if (fdSetPendingForActin.Visible == true)
        {
            ReportOfPendingComplaint.Visible = true;
        }
    }
    protected void PendingForActinAlirajpur_Click(object sender, EventArgs e)
    {
        fdSetSummaryReport.Visible=false;
        fdSetPendingForActin.Visible = true;
        BeforeClickInPendingComplain.Visible=true;
        ddlDistrict.SelectedIndex=2;
        if (fdSetPendingForActin.Visible == true)
        {
            ReportOfPendingComplaint.Visible = true;
        }
    }
    
    protected void RejectedGrievancesBhopal_Click(object sender, EventArgs e)
    {
        fdSetRejectedGrievances.Visible = true;
        fdSetSummaryReport.Visible=false;
        BeforeClickInRejectComplain.Visible=true;
        ddlRejectCase.SelectedIndex=9;
        if (fdSetRejectedGrievances.Visible == true)
        {
            ReportOfRejectedDetails.Visible = true;
        }

    }
   
    protected void RejectedGrievancesAlirajpur_Click(object sender, EventArgs e)
    {
        fdSetRejectedGrievances.Visible = true;
        fdSetSummaryReport.Visible=false;
        BeforeClickInRejectComplain.Visible=true;
        ddlRejectCase.SelectedIndex=2;
        if (fdSetRejectedGrievances.Visible == true)
        {
            ReportOfRejectedDetails.Visible = true;
        }
    }
   
    protected void DisposedGrievancesBhopal_Click(object sender, EventArgs e)
    {
        fdSetDisposedGrievances.Visible = true;
        BeforeClickInDisposeCase.Visible = true;
        fdSetSummaryReport.Visible=false;
        ddlDisposeCase.SelectedIndex=9;
        if (fdSetDisposedGrievances.Visible == true)
        {
            ReportOfDisposedDetails.Visible = true;
        }
    }
   
    protected void DisposedGrievancesAlirajpur_Click(object sender, EventArgs e)
    {
        fdSetDisposedGrievances.Visible = true;
        BeforeClickInDisposeCase.Visible = true;
        fdSetSummaryReport.Visible=false;
        ddlDisposeCase.SelectedIndex=2;
        if (fdSetDisposedGrievances.Visible == true)
        {
            ReportOfDisposedDetails.Visible = true;
        }
    }
   
}