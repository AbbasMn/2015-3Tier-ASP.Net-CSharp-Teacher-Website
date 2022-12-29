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
using System.Xml.Linq;
using System.Data.SqlClient;
using DataBaseLayer;
using LogicalLayer;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminShowRecievedMessages : System.Web.UI.Page
    {
        protected void showRecieveMessagesUnResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageSenderName='مدیریت' and messageSenderLastName='سایت' and messageRespondedOrUnResponded='False'", "order by messageID");
            repeater1.DataBind();

        }

        protected void showRecieveMessagesResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageSenderName='مدیریت' and messageSenderLastName='سایت' and messageRespondedOrUnResponded='true'", "order by messageID");
            repeater1.DataBind();

        }



        protected void showRecieveMessagesAll()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageSenderName='مدیریت' and messageSenderLastName='سایت'", "order by messageID");
            repeater1.DataBind();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Admin")
            {
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            try
            {

                if (!IsPostBack)
                {
                    RadioButtonList1.SelectedIndex = 2;
                    showRecieveMessagesUnResponded();
                }

            }
            catch
            {
            }


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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminControlPanelPage.aspx");
        }

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





        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedIndex == 0)
                showRecieveMessagesAll();

            else if (RadioButtonList1.SelectedIndex == 1)
                showRecieveMessagesResponded();

            else showRecieveMessagesUnResponded();

        }
    }
}