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
    public partial class AdminPresentTechnicalEducation : System.Web.UI.Page
    {

        public void deletePresentedTechEducation(object sender, EventArgs e)
        {
            
            
            LogicalLayer.PresentedTechnicalEducation tech = new LogicalLayer.PresentedTechnicalEducation();

            LinkButton lnkRemove = (LinkButton)sender;

            string presentedTechEducationID = lnkRemove.CommandArgument.Trim();

            try
            {
                SqlException sqlexp = tech.deletePresentedTechnicalEducation(" presentedTechEducationID=" + "'" + presentedTechEducationID + "'");

                if (sqlexp != null)
                {
                    lblError.Text = sqlexp.Message.ToString();
                }
                else
                    showPresentedTechnicalEducation();
            }
            catch (Exception exp)
            {

            }
        }

        public bool Validation()
        {

            string s = txtpresentedTechEducationGroupNumber.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = txtpresentedTechEducationTotalCapacity.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = lblTechEducationTitle.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = lblpresentedTechEducationTeacherID.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }
            return true;


        }

        public void insertTechEducation(object sender, EventArgs e)
        {
            try
            {
                if (Validation())
                {
                    insertPresentedTechnicalEducation();
                    showPresentedTechnicalEducation();
                    clearForm();
                }
            }
            catch
            {
            }
        }


        protected void selectTechEducation(object sender, EventArgs e)
        {
            TechnicalEducation tech = new TechnicalEducation();

            DataTable dt = new DataTable();

            LinkButton lnkRemove = (LinkButton)sender;

            string techEducationID = lnkRemove.CommandArgument.Trim();

            try
            {

                dt = tech.showTechnicalEducatione("techEducationTitle,techEducationCode", "techEducationID='" + techEducationID + "'", null);

                lblTechEducationTitle.Text = dt.Rows[0]["techEducationTitle"].ToString();
                lblTechEducationCode.Text = dt.Rows[0]["techEducationCode"].ToString();

            }
            catch (Exception exp)
            {

            }

        }



        protected void selectTeacher(object sender, EventArgs e)
        {
            Teacher teach = new Teacher();

            DataTable dt = new DataTable();

            LinkButton lnkRemove = (LinkButton)sender;

            string teacherID = lnkRemove.CommandArgument.Trim();

            try
            {

                dt = teach.showAllTeachers("UserTeacherLastName,UserTeacherName", "UserTeacherID='" + teacherID + "'", null);

                lblTechEducationTeacherLastName.Text = dt.Rows[0]["UserTeacherLastName"].ToString();
                lblTechEducationTeacherName.Text = dt.Rows[0]["UserTeacherName"].ToString();
                lblpresentedTechEducationTeacherID.Text = teacherID;

            }
            catch (Exception exp)
            {

            }

        }















        protected void showPresentedTechnicalEducation()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            GridView3.DataSource = dbo.selectQueryDataTable("TablePresentedTechnicalEducation", "*", null, " order by presentedTechEducationTermNumber,presentedTechEducationTitle");
            GridView3.DataBind();

        }

        protected void insertPresentedTechnicalEducation()
        {
            
            LogicalLayer.PresentedTechnicalEducation prs= new LogicalLayer.PresentedTechnicalEducation();

            prs.presentedTechEducationTitle = lblTechEducationTitle.Text.Trim();
            prs.presentedTechEducationCode = lblTechEducationCode.Text.Trim();
            prs.presentedTechEducationFee = txtpresentedTechEducationFee.Text;
            prs.presentedTechEducationTermNumber = drliTermNumber.Text;
            prs.presentedTechEducationStartDate = PersianDatePickupStart.PersianDateString;
            prs.presentedTechEducationEndDate = PersianDatePickupEnd.PersianDateString;
            prs.presentedTechEducationTeacherName = lblTechEducationTeacherName.Text.Trim();
            prs.presentedTechEducationTeacherLastName = lblTechEducationTeacherLastName.Text.Trim();
            prs.presentedTechEducationTeacherID = lblpresentedTechEducationTeacherID.Text.Trim();
            prs.presentedTechEducationLocation = txtpresentedTechEducationLocation.Text.Trim();

            prs.presentedTechEducationFilledCapacity = 0;
            prs.presentedTechEducationTotalCapacity = Convert.ToInt16(txtpresentedTechEducationTotalCapacity.Text.Trim());
            prs.presentedTechEducationGroupNumber = txtpresentedTechEducationGroupNumber.Text.Trim();
            prs.presentedTechEducationMidTermDate = PersianDatePickupMidTerm.PersianDateString;
            prs.presentedTechEducationMidTermTime = txtpresentedTechEducationMidTermTime.Text;
            prs.presentedTechEducationFinalDate = PersianDatePickupFinalTerm.PersianDateString; ;
            prs.presentedTechEducationFinalTime = txtpresentedTechEducationFinalTime.Text;
            prs.presentedTechEducationPracticalDate = PersianDatePickupPractical.PersianDateString;
            prs.presentedTechEducationPracticalTime = txtpresentedTechEducationPracticalTime.Text;
            prs.presentedTechEducationExerciseDate = PersianDatePickupExcercise.PersianDateString;
            prs.presentedTechEducationExerciseTime = txtpresentedTechEducationExerciseTime.Text;
            prs.presentedTechEducationComments = txtpresentedTechEducationComments.Text.Trim();


            prs.insertPresentedTechnicalEducation();



        }

        protected void showTeachers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            GridView2.DataSource = dbo.selectQueryDataTable("TableUserTeacher", "UserTeacherLastName,UserTeacherName,UserTeacherID", null, " order by UserTeacherLastName");
            GridView2.DataBind();

        }
        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            //"SemisterNumberActive='True'"
            drliTermNumber.DataBind();

        }
        protected void showTechnicalEducation()
        {
            TechnicalEducation crs = new TechnicalEducation();
            GridView1.DataSource = crs.showTechnicalEducatione("*", null, " order by techEducationTitle");
            GridView1.DataBind();
            //if (GridView1.Rows.Count > 0)              
            //btnDelete.Visible = true;              
            //else                                       
            //btnDelete.Visible = false;             
        }


        protected void clearForm()
        {

        }


        protected void deleteTechnicalEducation()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            TechnicalEducation crs = new TechnicalEducation();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        //if (!crs.checkEntityInOtherTables("", "CourseGroupCourseName", "CourseGroupCourseName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                        //    if (!crs.checkEntityInOtherTables("", "TakeCourseCourseName", "TakeCourseCourseName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                        //    {
                        try
                        {
                            SqlException sqlexp = crs.deleteTechnicalEducation(" techEducationTitle=" + "'" + GridView1.Rows[i].Cells[1].Text + "' and " +
                                                                   " techEducationCode=" + "'" + GridView1.Rows[i].Cells[2].Text + "'");
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
                        }
                        catch (Exception exp)
                        {

                        }
                        //}
                    }
                }

            }
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "برای حذف، حداقل یک درس را انتخاب کنید";
            else
                showTechnicalEducation();


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
                showTechnicalEducation();
                showTermNumbers();
                showTeachers();
                showPresentedTechnicalEducation();
            }

            try
            {
                showTechnicalEducation();
                showTeachers();
                showPresentedTechnicalEducation();
            }
            catch
            {
            }
        }





        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                //showTechnicalEducation();
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

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goSelect")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);
        //        lblTechEducationTitle.Text = GridView1.DataKeys[index].Value.ToString();
        //        lblTechEducationCode.Text = GridView1.Rows[index].Cells[1].Text.ToString();

        //    }
        //}
    }
}