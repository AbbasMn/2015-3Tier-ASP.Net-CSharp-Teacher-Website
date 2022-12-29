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
    public partial class AdminAddechnicalEducation : System.Web.UI.Page
    {

        public bool Validation()
        {

            string s = txtTechEducationTitle.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            s = txtTechEducationCode.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }
            lblError.Text = string.Empty;
            return true;


        }


        protected void deleteTechEducation(object sender, EventArgs e)
        {
            TechnicalEducation tech = new TechnicalEducation();

            LinkButton lnkRemove = (LinkButton)sender;

            string techEducationID = lnkRemove.CommandArgument.Trim();

            try
            {
                SqlException sqlexp = tech.deleteTechnicalEducation("techEducationID=" + "'" + techEducationID + "'");

                if (sqlexp != null)
                    lblError.Text = sqlexp.Message.ToString();
                else
                    showTechnicalEducation();
            }
            catch (Exception exp)
            {

            }

        }

        protected void insertTechEducation(object sender, EventArgs e)
        {
            if (Validation())
            {

                TechnicalEducation crs = new TechnicalEducation();

                crs.techEducationTitle = txtTechEducationTitle.Text.Trim();
                crs.techEducationCode = txtTechEducationCode.Text.Trim();
                crs.techEducationLevel = DrLiTechEducationLevel.Text;
                crs.techEductionTechnicalBranchLevel = DrLiTechEductionTechnicalBranchLevel.Text;
                crs.techEductionTechnicalBranch = drliTechEductionTechnicalBranch.Text;

                crs.techEductionTheoryHours = txtTechEductionTheoryHours.Text;
                crs.techEductionPracticalHours = txtTechEductionPracticalHours.Text;
                crs.techEductionPrerequisits = txtTechEductionPrerequisits.Text;
                crs.techEductionSoftwarePrerequisits = txtTechEductionSoftwarePrerequisits.Text;

                crs.techEductionTheoryHours = txtTechEductionTheoryHours.Text.Trim();
                crs.techEductionPracticalHours = txtTechEductionPracticalHours.Text.Trim();


                try
                {
                    SqlException exc = crs.insertTechnicalEducation();
                    if (exc == null)
                    {
                        lblMessage.Text = "عمليات انجام شد.";
                        lblMessage.Visible = true;
                        showTechnicalEducation();
                    }
                    else
                    {
                        if (exc.Message.Contains("PRIMARY KEY constraint"))
                            lblMessage.Text = "دوره تخصصی با توجه به عنوان دوره و کد دوره، قبلاً واردشده است.";
                        lblMessage.Visible = true;
                    }
                }
                catch
                {
                }
            }

        }











        protected void showBranch()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTechEductionTechnicalBranch.DataSource = dbo.selectQueryDataTable("TableEducationBranch", "EducationBranchName", null, " order by EducationBranchName");
            drliTechEductionTechnicalBranch.DataBind();
        }

        ///

        protected void showTechnicalEducation()
        {
            TechnicalEducation crs = new TechnicalEducation();
            GridView1.DataSource = crs.showTechnicalEducatione("*", null, " order by techEducationTitle");
            GridView1.DataBind();

        }


        protected void clearForm()
        {
            txtTechEducationTitle.Text = string.Empty;
            txtTechEducationCode.Text = string.Empty;
            DrLiTechEducationLevel.SelectedIndex = 0;
            DrLiTechEductionTechnicalBranchLevel.SelectedIndex = 0;
            txtTechEductionTheoryHours.Text = string.Empty;
            txtTechEductionPracticalHours.Text = string.Empty;
            txtTechEductionPrerequisits.Text = string.Empty;
            txtTechEductionSoftwarePrerequisits.Text = string.Empty;

            txtTechEductionTheoryHours.Text = string.Empty;
            txtTechEductionPracticalHours.Text = string.Empty;
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
            //if (Session["UserType"] == "Admin")
            //{

            //}
            //else
            //    Response.Redirect("~/PresentationLayer/Main.aspx");

            lblMessage.Text = string.Empty;
            lblError.Text = string.Empty;

            if (!IsPostBack)
            {
                showBranch(); showTechnicalEducation();
            }

        }

        public void insertTechnicalEducation()
        {
            TechnicalEducation crs = new TechnicalEducation();

            crs.techEducationTitle = txtTechEducationTitle.Text.Trim();
            crs.techEducationCode = txtTechEducationCode.Text.Trim();
            crs.techEducationLevel = DrLiTechEducationLevel.Text;
            crs.techEductionTechnicalBranchLevel = DrLiTechEductionTechnicalBranchLevel.Text;
            crs.techEductionTechnicalBranch = drliTechEductionTechnicalBranch.Text;

            crs.techEductionTheoryHours = txtTechEductionTheoryHours.Text;
            crs.techEductionPracticalHours = txtTechEductionPracticalHours.Text;
            crs.techEductionPrerequisits = txtTechEductionPrerequisits.Text;
            crs.techEductionSoftwarePrerequisits = txtTechEductionSoftwarePrerequisits.Text;

            crs.techEductionTheoryHours = txtTechEductionTheoryHours.Text.Trim();
            crs.techEductionPracticalHours = txtTechEductionPracticalHours.Text.Trim();



            SqlException exc = crs.insertTechnicalEducation();
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "دوره تخصصی با توجه به عنوان دوره و کد دوره، قبلاً واردشده است.";
                lblMessage.Visible = true;
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (true)
                {
                    insertTechnicalEducation();
                    clearForm();
                    showTechnicalEducation();
                }
            }
            catch
            {
            }
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteTechnicalEducation();
                showTechnicalEducation();
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