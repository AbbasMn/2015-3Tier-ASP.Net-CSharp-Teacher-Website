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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string sentNewsID;

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


            try
            {

                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();
                sentNewsID = Session["sentID"].ToString();

                if (!IsPostBack)
                    myNews.updateNews(" newsViewerCounter=newsViewerCounter+1 where newsID=" + sentNewsID);

                dt = myNews.showNews("newsID,newsTitle,newsPassage,newsDate,newsViewerCounter,newsAouthorName,newsAouthorLastName,newsPictureName,newsUploadedFileName,newsUploadedFileType,newsRelatedLink", "newsID=" + sentNewsID, null);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();


                if (dt.Rows.Count > 0)
                {

                    if (dt.Rows[0]["newsRelatedLink"].ToString() == string.Empty)
                    {
                        HyperLink1.Visible = false;
                    }
                    else
                    {
                        HyperLink1.Visible = true;
                        HyperLink1.NavigateUrl = dt.Rows[0]["newsRelatedLink"].ToString();
                        HyperLink1.Text = dt.Rows[0]["newsRelatedLink"].ToString();
                    }


                }


            }
            catch
            {
            }


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
    }
}