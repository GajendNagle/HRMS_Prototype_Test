using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_VehicleMaintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSaveRcd_Click(object sender, EventArgs e)
    {
       
    }

    protected void ddlVehicleNumber_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlVehicleNumber.SelectedValue=="1")
        {
            txtVehicletype.Text="Hatchback";
            txtPreviousReading.Text="20000";
            txtPreviousBillDate.Text="12-02-2023";
            txtPrevBillAmount.Text="50000";
            txtCurrentReadingKm.Text="35000";
            long currentReading = Convert.ToInt64(txtCurrentReadingKm.Text);
            long previousReading = Convert.ToInt64(txtPreviousReading.Text);
            long difference = currentReading - previousReading;
            txtDifferencereading.Text = difference.ToString();
            txtBillDate.Text="12-06-2024";
            txtBillAmount.Text="8000";
            txtBillNumber.Text="50";
        }else if (ddlVehicleNumber.SelectedValue=="2")
        {
            txtVehicletype.Text="Sedan";
            txtPreviousReading.Text="30000";
            txtPreviousBillDate.Text="12-02-2023";
            txtPrevBillAmount.Text="50000";
            txtCurrentReadingKm.Text="35000";
            long currentReading = Convert.ToInt64(txtCurrentReadingKm.Text);
            long previousReading = Convert.ToInt64(txtPreviousReading.Text);
            long difference = currentReading - previousReading;
            txtDifferencereading.Text = difference.ToString();
            txtBillDate.Text="12-06-2024";
            txtBillAmount.Text="8000";
            txtBillNumber.Text="51";
        }else 
        {
            txtVehicletype.Text="";
            txtPreviousReading.Text="";
            txtPreviousBillDate.Text="";
            txtPrevBillAmount.Text="";
            txtCurrentReadingKm.Text="";
            txtBillDate.Text="";
            txtBillAmount.Text="";
            txtBillNumber.Text="";
        }
    }
}