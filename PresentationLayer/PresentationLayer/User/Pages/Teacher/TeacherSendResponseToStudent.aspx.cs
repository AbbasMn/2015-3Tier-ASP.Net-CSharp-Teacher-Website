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
using DataBaseLayer;
using System.Data.SqlClient;
using System.Globalization;
using LogicalLayer;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherSendResponseToStudent : System.Web.UI.Page
    {
        public void clear()
        {
            txtmessagePassage.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }

        protected void sendResponseToStudent()
        {

            DataBaseOperations dbo = new DataBaseOperations();
            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            string s = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            dbo.updateQuery("TableMessage", "messageRespondedOrUnResponded='True',messageResponsePassage='" + txtmessagePassage.Text.Trim().ToString() + "',messageResponseDate='" + s +
                "' where messageID=" + Session["messageID"].ToString());

        }



        protected void Page_Load(object Sender, EventArgs e)
        {

            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                clear();

            }

            try
            {

            }
            catch
            {
                Response.Redirect("TeacherControlPanelPage.aspx");
            }

        }


        protected void btnSave_Click(object Sender, EventArgs e)
        {
            try
            {
                sendResponseToStudent();
                clear();
                lblMessage.Text = "پيام ارسال گرديد";
            }
            catch
            {

            }

        }

        protected void lbtnLogOut_Click(object Sender, EventArgs e)
        {
            try
            {
                logOut();
            }
            catch
            {
            }

        }

        protected void btnLoginPage_Click(object Sender, EventArgs e)
        {
            Response.Redirect("TeacherControlPanelPage.aspx");
        }
        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String UserTeacherID = Session["TeacherID"].ToString();

            if (Session["UserType"].ToString() == "Teacher")
            {
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherId=" + UserTeacherID);
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
    }
}