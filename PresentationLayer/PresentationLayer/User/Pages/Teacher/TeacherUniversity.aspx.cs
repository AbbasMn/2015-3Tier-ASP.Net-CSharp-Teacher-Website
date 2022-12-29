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

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherUniversity : System.Web.UI.Page
    {
        public void insertUniversity()
        {
            University unv = new University();

            unv.UniversityName = txtUniversityName.Text.Trim();

            SqlException exc = unv.insertUniversity();
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                txtUniversityName.Text = "";
                showUniversities();
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "نام دانشگاه قبلاً واردشده است.";
                lblMessage.Visible = true;
            }


        }

        protected void selectUniversityType()
        {
            if (rdioSelectUniversity.SelectedItem.Text != " وارد کردن نام دانشگاه")
            {
                pnlInsertUniversity.Visible = false;
                pnlSelectUniversity.Visible = true;
                pnlVeiwSelected.Visible = true;
            }
            else
            {
                pnlInsertUniversity.Visible = true; ;
                pnlSelectUniversity.Visible = false;
                pnlVeiwSelected.Visible = false;
            }
        }

        protected void showTeacherUniversity()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            GridView2.DataSource = dbo.selectQueryDataTable("TableTeacherUniversity", "TeacherUniversityUniversityName as UniversityName"
                                                            , "TeacherUniversityUserTeacherID=" + Session["TeacherID"].ToString()
                                                            , " order by UniversityName");
            GridView2.DataBind();
            if (GridView2.Rows.Count > 0)
            {
                btnDelete.Visible = true;
                GridView2.Visible = true;
            }
            else
            {
                btnDelete.Visible = false;
                GridView2.Visible = false;
            }
        }

        protected void deleteSelectedUniversities()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView2.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView2.Rows[i].FindControl("Choose0");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!dbo.checkEntityInOtherTables("TableCourseGroup", "CourseGroupUniversityName", "CourseGroupUniversityName='" + GridView2.Rows[i].Cells[1].Text + "'"))
                        {
                            try
                            {
                                SqlException sqlexp = dbo.deleteQuery("TableTeacherUniversity", "TeacherUniversityUniversityName='" + GridView2.Rows[i].Cells[1].Text + "'" +
                                                                      " and TeacherUniversityUserTeacherID=" + Session["TeacherID"].ToString());
                                if (sqlexp != null)
                                {
                                }

                            }
                            catch (Exception exp)
                            {

                            }
                        }
                    }
                }

            }
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "برای حذف، حداقل يک دانشگاه را انتخاب کنید";
            else
                showUniversities();


        }

        protected void insertSelectedUniversities()
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
                        try
                        {
                            dbo.fieldsOfTable[0] = "TeacherUniversityUserTeacherID";
                            dbo.fieldsOfTable[1] = "TeacherUniversityUniversityName";

                            dbo.valuesOfField[0] = Session["TeacherID"].ToString();
                            dbo.valuesOfField[1] = GridView1.Rows[i].Cells[1].Text;

                            SqlException sqlexp = dbo.insertQuery("TableTeacherUniversity", dbo.fieldsOfTable, dbo.valuesOfField);
                            if (sqlexp != null)
                            {

                            }

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

            if (row_selected == 0)
                lblError.Text = "برای اضافه نمودن، حداقل يک دانشگاه را انتخاب کنید";
            else
                showUniversities();


        }

        protected void showUniversities()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableUniversity", "UniversityName,RowID",
                                                                null
                                                                , " order by UniversityName");
            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnSelect.Visible = true;
            }
            else
            {
                btnSelect.Visible = false;
                GridView1.Visible = false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                rdioSelectUniversity.SelectedIndex = 0;
            }
            selectUniversityType();

            if (Session["UserType"] == "Teacher")
            {

            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            try
            {
                showUniversities();
                showTeacherUniversity();
            }
            catch
            {
            }


        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteSelectedUniversities();
                showTeacherUniversity();
            }
            catch
            {
            }

        }


        protected void rdioSelectUniversity_TextChanged(object sender, EventArgs e)
        {
            try
            {
                selectUniversityType();
            }
            catch
            {
            }

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
                insertSelectedUniversities();
                showTeacherUniversity();
            }
            catch
            {
            }

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                insertUniversity();
            }
            catch
            {
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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherControlPanelPage.aspx");
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String UserTeacherID = Session["TeacherID"].ToString();

            if (Session["UserType"].ToString() == "Teacher")
            {
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherId=" + UserTeacherID);
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