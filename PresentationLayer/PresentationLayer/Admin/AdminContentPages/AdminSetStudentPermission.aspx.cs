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

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminSetStudentPermission : System.Web.UI.Page
    {
        protected void showStudents()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            string s = "UserStudentID>0";

            if (chbUniveersity.Checked)
                s = s + " and UserStudentUnivesityName='" + drliStudentUniversity.SelectedItem.Text + "'";

            if (chbBranch.Checked)
                s = s + " and UserStudentEducationBranchName='" + drliUserStudentEducationBranchName.SelectedItem.Text + "'";

            if (chbLevel.Checked)
                s = s + " and UserStudentEducationLevel='" + drliUserStudentEducationLevel.SelectedItem.Text + "'";



            GridView1.DataSource = dbo.selectQueryDataTable("TableUserStudent", " * ", s, " order by UserStudentLastName,UserStudentName,UserStudentID");

            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
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
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");



            if (!IsPostBack)
            {

                University unv = new University();
                drliStudentUniversity.DataSource = unv.showAllUniversities("UniversityName,RowID", null, " order by UniversityName");
                drliStudentUniversity.DataTextField = "UniversityName";
                drliStudentUniversity.DataValueField = "UniversityName";
                drliStudentUniversity.DataBind();

                EducationBranch bsp = new EducationBranch();
                drliUserStudentEducationBranchName.DataSource = bsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
                drliUserStudentEducationBranchName.DataTextField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataValueField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataBind();

                showStudents();

            }





            try
            {

            }
            catch
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Teacher")
                    Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")
                    Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
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





        protected void btnSave_Click(object sender, EventArgs e)
        {
            showStudents();
        }
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentStudentRowID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("AdminSetStudentPermission2.aspx");
            }
        }
    }
}