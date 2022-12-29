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
    public partial class DownloadSoftware : System.Web.UI.Page
    {
        protected void showSearchKeywordSoft()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();
            dt = myNews.showNews("newsID,newsType,newsAouthorLastName,newsAouthorName,newsPictureName,newsRelatedLink,newsTitle,newsDate,newsUploadedFileName,newsPassage",
            " newsBranchName='AllBranch' and newsTitle like '%" + txtSearchKeyword.Text.Trim() + "%'", "order by newsType,newsTitle,newsDate desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();
            lblSearchResult.Text = "تعداد نرم افزار معرفی شده " + dt.Rows.Count + " مورد";
        }

        protected void showAllSoft()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();
            dt = myNews.showNews("newsID,newsType,newsAouthorLastName,newsAouthorName,newsPictureName,newsRelatedLink,newsTitle,newsDate,newsUploadedFileName,newsPassage",
            " newsBranchName='AllBranch'", "order by newsType,newsTitle,newsDate desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();

            lblSearchResult.Text = "تعداد نرم افزار معرفی شده " + dt.Rows.Count + " مورد";
        }

        protected void showSelectedTypeSoft()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();
            dt = myNews.showNews("newsID,newsType,newsAouthorLastName,newsAouthorName,newsPictureName,newsRelatedLink,newsTitle,newsDate,newsUploadedFileName,newsPassage",
            " newsBranchName='AllBranch' and newsType='" + drlistnewsType.SelectedItem.Text + "'", "order by newsType,newsTitle,newsDate desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();
            lblSearchResult.Text = "تعداد نرم افزار معرفی شده " + dt.Rows.Count + " مورد";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["UserType"] != null)
            //{
            //}

            //else
            //    Response.Redirect("Main.aspx"); 


            if (Session["UserType"] == null)
            {
                
                lbtnLogMainPage.Visible = true;
                lbtLogOut.Visible = false;
                lbl2.Visible = false;
                lbl3.Visible = false;
                btnControlPanel.Visible = false;

            }
            else
            {
                
                lbl1.Visible = false;

                lbtLogOut.Visible = true;
                lbl2.Visible = true;
                lbl3.Visible = true;
                btnControlPanel.Visible = true;
                lbtnLogMainPage.Visible = true;
            }


            if (!IsPostBack)
            {
                rdioSelect.Checked = false;
                rdioSearch.Checked = true;
                txtSearchKeyword.Text = string.Empty;
                rdioAll.Checked = false;
                if (rdioAll.Checked)
                {
                    showAllSoft();
                    txtSearchKeyword.Visible = false;
                    btnSearch.Visible = false;
                    lblSearchTitle.Visible = false;

                }
                if (rdioSelect.Checked)
                {
                    showSelectedTypeSoft();
                    txtSearchKeyword.Visible = false;
                    btnSearch.Visible = false;
                    lblSearchTitle.Visible = false;
                }
                if (rdioSearch.Checked)
                {
                    txtSearchKeyword.Visible = true;
                    btnSearch.Visible = true;
                    lblSearchTitle.Visible = true;
                    showSearchKeywordSoft();

                }
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
        protected void rdioSelect_CheckedChanged(object sender, EventArgs e)
        {
            if (rdioAll.Checked)
            {
                showAllSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;

            }
            if (rdioSelect.Checked)
            {
                showSelectedTypeSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;
            }
            if (rdioSearch.Checked)
            {
                txtSearchKeyword.Visible = true;
                btnSearch.Visible = true;
                lblSearchTitle.Visible = true;
                showSearchKeywordSoft();

            }
        }
        protected void drlistnewsType_SelectedIndexChanged(object sender, EventArgs e)
        {
            rdioSelect.Checked = true;
            rdioAll.Checked = false;
            if (rdioAll.Checked)
            {
                showAllSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;

            }
            if (rdioSelect.Checked)
            {
                showSelectedTypeSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;
            }
            if (rdioSearch.Checked)
            {
                txtSearchKeyword.Visible = true;
                btnSearch.Visible = true;
                lblSearchTitle.Visible = true;
                showSearchKeywordSoft();

            }
        }
        protected void rdioAll_CheckedChanged(object sender, EventArgs e)
        {
            if (rdioAll.Checked)
            {
                showAllSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;

            }
            if (rdioSelect.Checked)
            {
                showSelectedTypeSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;
            }
            if (rdioSearch.Checked)
            {
                txtSearchKeyword.Visible = true;
                btnSearch.Visible = true;
                lblSearchTitle.Visible = true;
                showSearchKeywordSoft();

            }
        }
        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if (rdioSearch.Checked)
            {
                showSearchKeywordSoft();
            }
        }

        protected void rdioSearch_CheckedChanged(object sender, EventArgs e)
        {
            if (rdioAll.Checked)
            {
                showAllSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;

            }
            if (rdioSelect.Checked)
            {
                showSelectedTypeSoft();
                txtSearchKeyword.Visible = false;
                btnSearch.Visible = false;
                lblSearchTitle.Visible = false;
            }
            if (rdioSearch.Checked)
            {
                txtSearchKeyword.Visible = true;
                btnSearch.Visible = true;
                lblSearchTitle.Visible = true;
                showSearchKeywordSoft();

            }
        }
    }
}