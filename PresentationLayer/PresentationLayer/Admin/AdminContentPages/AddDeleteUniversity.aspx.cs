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
using System.Globalization;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AddDeleteUniversity : System.Web.UI.Page
    {

        public bool Validation()
        {

            string s = txtUniversityName.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = txtEmail.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }
            return true;


        }
        protected void DeleteUniversity(object sender, EventArgs e)
        {
            University unv = new University();

            LinkButton lnkRemove = (LinkButton)sender;

            string universityName = lnkRemove.CommandArgument.Trim();

            if (!unv.checkEntityInOtherTables("TableCourseGroup", "CourseGroupUniversityName", "CourseGroupUniversityName='" + universityName + "'"))
            {
                if (!unv.checkEntityInOtherTables("TableTeacherEducation", "TeacherEducationUniversitynameOfEducation", "TeacherEducationUniversitynameOfEducation='" + universityName + "'"))
                {
                    if (!unv.checkEntityInOtherTables("TableTeacherUniversity", "TeacherUniversityUniversityName", "TeacherUniversityUniversityName='" + universityName + "'"))
                    {
                        if (!unv.checkEntityInOtherTables("TableUserStudent", "UserStudentUnivesityName", "UserStudentUnivesityName='" + universityName + "'"))
                        {

                            try
                            {
                                SqlException sqlexp = unv.deleteUniversity(" UniversityName=" + "'" + universityName + "'");
                                if (sqlexp != null)
                                    lblError.Text = sqlexp.Message.ToString();
                                else
                                    showUniversities();
                            }
                            catch (Exception exp)
                            {

                            }
                        }
                    }
                }
            }
        }
        protected void showUniversities()
        {
            University unv = new University();
            GridView1.DataSource = unv.showAllUniversities("UniversityName,UniversityAddress,UniversityTelephone,UniversityWebSite,UniversityEmail", null, " order by UniversityName");
            GridView1.DataBind();


        }


        protected void clearForm()
        {
            txtEmail.Text = string.Empty;
            txtUniversityAddress.Text = string.Empty;
            txtUniversityName.Text = string.Empty;
            txtUniversityTel.Text = string.Empty;
            txtWebAddress.Text = string.Empty;
        }


        protected void deleteSelectedUniversities()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            University unv = new University();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!unv.checkEntityInOtherTables("TableCourseGroup", "CourseGroupUniversityName", "CourseGroupUniversityName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                        {
                            if (!unv.checkEntityInOtherTables("TableTeacherEducation", "TeacherEducationUniversitynameOfEducation", "TeacherEducationUniversitynameOfEducation='" + GridView1.Rows[i].Cells[1].Text + "'"))
                            {
                                if (!unv.checkEntityInOtherTables("TableTeacherUniversity", "TeacherUniversityUniversityName", "TeacherUniversityUniversityName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                                {
                                    if (!unv.checkEntityInOtherTables("TableUserStudent", "UserStudentUnivesityName", "UserStudentUnivesityName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                                    {

                                        try
                                        {
                                            SqlException sqlexp = unv.deleteUniversity(" UniversityName=" + "'" + GridView1.Rows[i].Cells[1].Text + "'");
                                            if (sqlexp != null)
                                                lblError.Text = sqlexp.Message.ToString();
                                        }
                                        catch (Exception exp)
                                        {

                                        }
                                    }
                                }
                            }
                        }

                    }
                }

            }
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "برای حذف حداقل یک دانشگاه را انتخاب کنید";
            else
                showUniversities();


        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Admin")
            {

            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            lblMessage.Text = string.Empty;
            lblError.Text = string.Empty;

            try
            {
                showUniversities();
            }
            catch
            {
            }


        }

        public void insertUniversity(object sender, EventArgs e)
        {

            if (Validation())
            {
                University unv = new University();

                unv.UniversityName = txtUniversityName.Text.Trim();
                unv.UniversityAddress = txtUniversityAddress.Text.Trim();
                unv.UniversityTelephone = txtUniversityTel.Text.Trim();
                unv.UniversityWebSite = txtWebAddress.Text.Trim();
                unv.UniversityEmail = txtEmail.Text.Trim();

                SqlException exc = unv.insertUniversity();
                if (exc == null)
                {
                    lblMessage.Text = "عمليات انجام شد.";
                    lblMessage.Visible = true;
                    clearForm();
                    showUniversities();
                }
                else
                {
                    if (exc.Message.Contains("PRIMARY KEY constraint"))
                        lblMessage.Text = "نام دانشگاه قبلاً واردشده است.";
                    lblMessage.Visible = true;
                }
            }


        }



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteSelectedUniversities();
            }
            catch
            {
            }
        }
        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminControlPanelPage.aspx");
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
                  " where AdminId=" + AdminID);
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