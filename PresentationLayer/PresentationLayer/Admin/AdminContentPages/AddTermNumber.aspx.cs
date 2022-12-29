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
using System.Data.SqlClient;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AddTermNumber : System.Web.UI.Page
    {

        protected void deleteTermNumber(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();

            LinkButton lnkRemove = (LinkButton)sender;

            string termNumber = lnkRemove.CommandArgument.Trim();

            if (!dbo.checkEntityInOtherTables("TableCourseGroup", "CourseGroupUniversityNameCourseNameYearTermGroupNumber", "CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + termNumber + "'"))
            {
                if (!dbo.checkEntityInOtherTables("TableTakeCourse", "TakeCourseUniversityNameCourseNameYearTermGroupNumber", "TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + termNumber + "'"))
                {
                    try
                    {
                        SqlException sqlexp = dbo.deleteQuery("TableSemisterNumber", " SemisterNumber=" + "'" + termNumber + "'");
                        if (sqlexp != null)
                            lblError.Text = sqlexp.Message.ToString();
                        else
                            showTermNumbers();
                    }
                    catch (Exception exp)
                    {

                    }
                }
            }


        }

        protected void insertTermNumber(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();
            dbo.fieldsOfTable[0] = "SemisterNumber";
            dbo.valuesOfField[0] = drliyear.Text + " - " + drliTerm.Text;

            try
            {
                SqlException Excp = dbo.insertQuery("TableSemisterNumber", dbo.fieldsOfTable, dbo.valuesOfField);


                if (Excp != null)
                {
                    if (Excp.Message.Contains("PRIMARY KEY"))
                        lblError.Text = "شماره ترم قبلاً وارد شده است";
                }
                else
                {
                    lblError.Text = String.Empty;
                    showTermNumbers();
                }
            }
            catch
            {
            }
        }

        protected void activateTermNumber(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();

            LinkButton lnkActivate = (LinkButton)sender;

            string termNumber = lnkActivate.CommandArgument.Trim();

            try
            {
                SqlException sqlexp = dbo.updateQuery("TableSemisterNumber", " SemisterNumberActive='true' where SemisterNumber=" + "'" + termNumber + "'");
                if (sqlexp != null)
                    lblError.Text = sqlexp.Message.ToString();
                else
                    showTermNumbers();
            }
            catch (Exception exp)
            {

            }

        }

        protected void deActivateTermNumber(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();

            LinkButton lnkActivate = (LinkButton)sender;

            string termNumber = lnkActivate.CommandArgument.Trim();

            try
            {
                SqlException sqlexp = dbo.updateQuery("TableSemisterNumber", " SemisterNumberActive='false' where SemisterNumber=" + "'" + termNumber + "'");
                if (sqlexp != null)
                    lblError.Text = sqlexp.Message.ToString();
                else
                    showTermNumbers();
            }
            catch (Exception exp)
            {

            }

        }







        protected void activeDeActiveTermNumber()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("select");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableSemisterNumber", " SemisterNumberActive='" + chk.Checked.ToString() + "' where SemisterNumber=" + "'" + GridView1.Rows[i].Cells[1].Text + "'");
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
                        }
                        catch (Exception exp)
                        {

                        }
                    }

                }

            }
            catch
            {
            }

        }

        protected void deleteSelectedTermNumber()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!dbo.checkEntityInOtherTables("TableCourseGroup", "CourseGroupUniversityNameCourseNameYearTermGroupNumber", "CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + GridView1.Rows[i].Cells[1].Text + "'"))
                        {
                            if (!dbo.checkEntityInOtherTables("TableTakeCourse", "TakeCourseUniversityNameCourseNameYearTermGroupNumber", "TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + GridView1.Rows[i].Cells[1].Text + "'"))
                            {
                                try
                                {
                                    SqlException sqlexp = dbo.deleteQuery("TableSemisterNumber", " SemisterNumber=" + "'" + GridView1.Rows[i].Cells[1].Text + "'");
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
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "برای حذف حداقل یک ترم تحصيلي را انتخاب کنید";
        }





        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            GridView1.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber,SemisterNumberActive", null, " order by SemisterNumber");
            GridView1.DataBind();

        }

        protected void showYear()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliyear.DataSource = dbo.selectQueryDataTable("TableYear", "YearName", null, " order by YearName");
            drliyear.DataBind();
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            try
            {
                showTermNumbers();
            }
            catch
            {
            }

            if (!IsPostBack)
            {
                showYear();
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
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteSelectedTermNumber();
                showTermNumbers();
            }
            catch
            {
            }
        }
        protected void btnActive_Click(object sender, EventArgs e)
        {
            try
            {
                activeDeActiveTermNumber();
                showTermNumbers();
            }
            catch
            {
            }
        }
    }
}