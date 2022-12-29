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
using LogicalLayer;
using System.Data.SqlClient;
using DataBaseLayer;

namespace PresentationLayer.PresentationLayer.User.Pages
{
    public partial class StudentPublic : System.Web.UI.MasterPage
    {
      //protected void setAjaxBorderLeftRight()
        //{
        //    alwaysvisiblecontrolextenderMessage.VerticalSide = AjaxControlToolkit.VerticalSide.Middle;
        //    alwaysvisiblecontrolextenderMessage.VerticalOffset = 0;

        //    alwaysvisiblecontrolextenderMessage.HorizontalSide = AjaxControlToolkit.HorizontalSide.Right;
        //    alwaysvisiblecontrolextenderMessage.HorizontalOffset = 5;

        //    //alwaysvisiblecontrolextenderMessage.UseAnimation = true;
        //    //alwaysvisiblecontrolextenderMessage.ScrollEffectDuration = 10;

        //    alwaysvisiblecontrolextenderRegister.VerticalSide = AjaxControlToolkit.VerticalSide.Middle;
        //    alwaysvisiblecontrolextenderRegister.VerticalOffset = 0;

        //    alwaysvisiblecontrolextenderRegister.HorizontalSide = AjaxControlToolkit.HorizontalSide.Left;
        //    alwaysvisiblecontrolextenderRegister.HorizontalOffset = 0;


        //    alwaysvisiblecontrolextenderWebDesign.VerticalSide = AjaxControlToolkit.VerticalSide.Bottom;
        //    alwaysvisiblecontrolextenderWebDesign.VerticalOffset = alwaysvisiblecontrolextenderRegister.VerticalOffset+100;

        //    alwaysvisiblecontrolextenderWebDesign.HorizontalSide = AjaxControlToolkit.HorizontalSide.Left;
        //    alwaysvisiblecontrolextenderWebDesign.HorizontalOffset = 0;
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                lbtnLogIn.Visible = false;
                lbl1.Visible = false;
                lbl3.Visible = false;
                lbtLogOut.Visible = false;
                lbl2.Visible = false;
                btnControlPanel.Visible = false;
            }
            else
            {

                lbtnLogIn.Visible = false;
                lbl1.Visible = false;
                lbl3.Visible = true;
                lbtLogOut.Visible = true;
                lbl2.Visible = true;
                btnControlPanel.Visible = true;
            }
            if (!IsPostBack)
            {
                //setAjaxBorderLeftRight();
            }
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            if (Session["UserType"].ToString() == "Admin")
            {
                ID = Session["AdminID"].ToString();
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["StudentID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }


            if (excp != null)
            {

            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
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
        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }
        protected void btnControlPanel_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }

    }
}