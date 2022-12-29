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

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherShowStudentResponseMessages : System.Web.UI.Page
    {

        protected void showRecieveMessages()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() + " and messageResponsePassage is not NULL" +

                " and (messageSenderName='" + Session["TeacherName"].ToString() + "' and messageSenderLastName='" + Session["TeacherLastName"].ToString() + "')", "order by messageID");
            repeater1.DataBind();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            try
            {

                if (!IsPostBack)
                {
                    showRecieveMessages();

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