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
using LogicalLayer;
using System.IO;
using System.Data.SqlClient;

namespace PresentationLayer
{
    public partial class DownloadFiles2 : System.Web.UI.Page
    {

        protected void showUploadedFiles()
        {

            LogicalLayer.News myNews = new LogicalLayer.News();


            if ((Session["StudentBranchName"].ToString().Trim() == "مهندسی کامپیوتر") || (Session["StudentBranchName"].ToString().Trim() == "مهندسي فناوري اطلاعات"))
            {

                DataList1.DataSource = myNews.showNews("newsTitle,newsDate,newsID,newsUploadedFileType,newsUploadedFileName,newsType",
            "(newsUploadedFileName is not null) and (newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' or newsType='آموزش برنامه نويسي'  or newsType='پروژه و کارآموزي' or newsType='دانلود نرم افزار')", "order by newsType,newsDate,newsTitle");

            }
            else
            {
                DataList1.DataSource = myNews.showNews("newsTitle,newsDate,newsUploadedFileName,newsPassage,newsType,newsID,newsUploadedFileType",
                "(newsUploadedFileName is not null) and (newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' or newsType='آموزش برنامه نويسي'  or newsType='پروژه و کارآموزي' or newsType='دانلود نرم افزار')", "order by newsType,newsDate,newsTitle");

            }
            DataList1.DataBind();


        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] != null)
            {
            }

            else
                Response.Redirect("Main.aspx");


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



            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            if (!IsPostBack)
                showUploadedFiles();



        }

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
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
        protected void lbtnMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        protected void btnControlPanel_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
        }
        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void btnStudentRegistration_Click(object sender, EventArgs e)
        {

        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}