using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Timers;
using DataBaseLayer;
using LogicalLayer;
using System.IO;
using System.Data.SqlClient;
using System.Data;
namespace PresentationLayer
{
    public partial class MessagePage : System.Web.UI.Page
    {
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            navigateWithDelay();
        }

        protected void navigateWithDelay()
        {

            if (Session["UserType"] != null)
            {
                if (Session["UserType"] == "Admin")
                    Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"] == "Student")

                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");

                if (Session["UserType"] == "Teacher")

                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");
            }
            else
            {
                if (Session["UserOperation"].ToString() != "عملیات :: عضویت در سایت :: با موفقیت انجام شد")
                    Response.Redirect("User/Pages/StudentRegistration.aspx");
                else
                    Response.Redirect("Login.aspx");
            }

        }


        protected void showMessage()
        {
            if (Session["UserType"] != null)
            {
                lblMessage.Text = Session["UserOperation"].ToString();
                HyperLink1.NavigateUrl = Session["OperationPage"].ToString();
            }
            else
            {
                if (Session["UserOperation"].ToString() != "عملیات :: عضویت در سایت :: با موفقیت انجام شد")
                {
                    lblMessage.Text = "کاربر مهمان لطفا ابتدا عضو شوید";
                    HyperLink1.Text = "عضویت در سایت";
                    HyperLink1.NavigateUrl = "User/Pages/StudentRegistration.aspx";
                }
                else
                {
                    lblMessage.Text = Session["UserOperation"].ToString();
                    HyperLink1.NavigateUrl = Session["OperationPage"].ToString();
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                lbtnLogIn.Visible = true;
                lbtnLogMainPage.Visible = true;
                lbtLogOut.Visible = false;
                lbl2.Visible = false;
                lbl3.Visible = false;
                btnControlPanel.Visible = false;

            }
            else
            {
                lbtnLogIn.Visible = false;
                lbl1.Visible = false;

                lbtLogOut.Visible = true;
                lbl2.Visible = true;
                lbl3.Visible = true;
                btnControlPanel.Visible = true;
                lbtnLogMainPage.Visible = true;
            }
            showMessage();
            Timer1.Enabled = true;
            Timer1.Interval = 10000;


        }


        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String ID;

            if (Session["UserType"].ToString() == "Admin")
            {
                ID = Session["AdminID"].ToString();
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["StudentID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }




            if (excp != null)
            {
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }

        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }



        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            logOut();
        }
        protected void btnControlPanel_Click(object sender, EventArgs e)
        {
            if (Session["UserType"] != null)
            {
                if (Session["UserType"] == "Admin")
                    Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"] == "Student")

                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");

                if (Session["UserType"] == "Teacher")

                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");
            }
        }
        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}