using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataBaseLayer;
using LogicalLayer;
using System.Data;

namespace PresentationLayer
{
    public partial class PresentedTechnicalEducation : System.Web.UI.Page
    {
        protected void showPresentedTechnicalEducation()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            GridView1.DataSource = dbo.selectQueryDataTable("TablePresentedTechnicalEducation", "*", null, " order by presentedTechEducationTermNumber,presentedTechEducationTitle");
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            showPresentedTechnicalEducation();
            if (!IsPostBack)
            {


            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goRegister")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["presentedTechEducationID"] = GridView1.DataKeys[index].Value.ToString();

                Session["techEducationCode"] = GridView1.Rows[index].Cells[2].Text.ToString();
                Session["techEducationTitle"] = GridView1.Rows[index].Cells[1].Text.ToString();

                Response.Redirect("RegisterPresentedTechnicalEducation.aspx");

            }
        }

    }
}