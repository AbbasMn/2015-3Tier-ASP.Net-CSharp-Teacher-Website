using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using DataBaseLayer;
using System.Data.SqlClient;
using LogicalLayer;
using System.Xml.Linq;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminControlPanelPage : System.Web.UI.Page
    {
        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String AdminID = Session["AdminID"].ToString();

            if (Session["UserType"].ToString() == "Admin")
            {
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + AdminID);
            }


            if (excp != null)
            {
                lblError.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Admin")
            {
                lblMessage.Text = Session["AdminSex"] + "  " +
                                  Session["AdminName"] + "  " +
                                  Session["AdminLastName"] + " خوش آمديد ! ." +
                                 "  آخرين حضور شما در سايت : " +
                                 Session["AdminLastLogin"];
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


        }

        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            try
            {
                logOut();
            }
            catch
            {
            }

        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }
    }
}