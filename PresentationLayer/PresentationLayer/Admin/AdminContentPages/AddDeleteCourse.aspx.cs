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
    public partial class AddDeleteCourse : System.Web.UI.Page
    {
        protected void insertCourse(object sender, EventArgs e)
        {
            Course crs = new Course();

            if (Validation())
            {


                if (checkCourseID())
                {

                    crs.CourseName = txtCourseName.Text;
                    crs.CourseID = Convert.ToInt16(txtCourseID.Text);
                    crs.CourseEducationLevel = DrLiCourseEducationLevel.Text;
                    crs.CourseEducationBranchName = DrLiCourseType.Text;
                    crs.CourseFacultyName = DrLiCourseFacultyName.Text;
                    crs.CourseSemisterNumber = Convert.ToInt16(DrLiCourseSemisterNumber.Text);
                    crs.CoursePracticalUnit = Convert.ToInt16(DrLiCoursePracticalUnit.Text);
                    crs.CourseTheoryUnit = Convert.ToInt16(DrLiCourseTheoryUnit.Text);
                    crs.CourseEducationBranchName = drliBranch.Text;

                    crs.CourseType = DrLiCourseType.Text;

                    SqlException exc = crs.insertCourse();
                    if (exc == null)
                    {
                        lblMessage.Text = "عمليات انجام شد.";
                        lblMessage.Visible = true;
                    }
                    else
                    {
                        if (exc.Message.Contains("PRIMARY KEY constraint"))
                            lblMessage.Text = "با توجه به نام درس، مشخصات درس قبلاً واردشده است.";
                        lblMessage.Visible = true;
                    }
                    showCourses();
                }
            }

        }

        protected void DeleteCourse(object sender, EventArgs e)
        {
            Course crs = new Course();
            DataTable dt = new DataTable();

            LinkButton lnkRemove = (LinkButton)sender;

            string CourseName = lnkRemove.CommandArgument.Trim();


            if (!crs.checkEntityInOtherTables("TableCourseGroup", "*", "CourseGroupCourseName='" + CourseName + "'"))
            {
                if (!crs.checkEntityInOtherTables("TableTakeCourse", "*", "TakeCourseCourseName='" + CourseName + "'"))
                {
                    try
                    {
                        SqlException sqlexp = crs.deleteCourse(" CourseName=" + "'" + CourseName + "'");
                        //lblError.Text = sqlexp.Message.ToString();
                    }
                    catch (Exception exp)
                    {

                    }
                    showCourses();
                }
            }
        }

        public bool Validation()
        {

            string s = txtCourseID.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = txtCourseName.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }
            return true;


        }


        /// ///////////////////////////////////////////////////////////


        public bool checkCourseID()
        {
            int i;
            string s = txtCourseID.Text;
            string msg = null;
            bool fualt = false;
            msg = "کاراکترهاي ";
            for (i = 0; i < s.Length; i++)
            {
                if ((Convert.ToChar(s[i]) != '0') &&
                    (Convert.ToChar(s[i]) != '1') &&
                    (Convert.ToChar(s[i]) != '2') &&
                    (Convert.ToChar(s[i]) != '3') &&
                    (Convert.ToChar(s[i]) != '4') &&
                    (Convert.ToChar(s[i]) != '5') &&
                    (Convert.ToChar(s[i]) != '6') &&
                    (Convert.ToChar(s[i]) != '7') &&
                    (Convert.ToChar(s[i]) != '8') &&
                    (Convert.ToChar(s[i]) != '9'))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                txtCourseID.Text = string.Empty;
                msg = msg + " در شماره درس مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
        }


        protected void showBranch()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DropDownList list = new DropDownList();

            drliBranch.DataSource = dbo.selectQueryDataTable("TableEducationBranch", "EducationBranchName", null, " order by EducationBranchName");
            drliBranch.DataBind();




        }

        ///

        protected void showCourses()
        {
            Course crs = new Course();
            GridView1.DataSource = crs.showAllCourses("CourseID,CourseName,CourseEducationLevel,CourseTheoryUnit,CoursePracticalUnit,CourseFacultyName,CourseEducationBranchName,CourseSemisterNumber,CourseType", null, " order by CourseName,CourseID");
            GridView1.DataBind();

            GridView1.Visible = true;


        }


        protected void clearForm()
        {
            txtCourseName.Text = string.Empty;
            txtCourseID.Text = string.Empty;
            DrLiCourseType.SelectedIndex = 0;
            DrLiCourseFacultyName.SelectedIndex = 0;
            DrLiCourseEducationLevel.SelectedIndex = 0;
            DrLiCourseSemisterNumber.SelectedIndex = 0;
            DrLiCoursePracticalUnit.SelectedIndex = 0;
            DrLiCourseTheoryUnit.SelectedIndex = 0;
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

            if (!IsPostBack)
            {
                showBranch();
                showCourses();
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
                //lblError.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }


        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToEdit")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridView1.DataKeys[index].Value;
        //        Response.Redirect("EditCourse.aspx");
        //    }
        //}


        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            showCourses();
        }
    }
}