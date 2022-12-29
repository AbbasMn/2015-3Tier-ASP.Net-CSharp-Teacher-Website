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
    public partial class AddDeleteBranch : System.Web.UI.Page
    {
        public bool Validation()
        {

            string s = txtBranchName.Text.Trim();
            if (s == string.Empty)
            {
                return false;
            }

            return true;


        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            showBranchs();
        }


        protected void DeleteBranchs(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;

            EducationBranch brsp = new EducationBranch();

            if (!brsp.checkEntityInOtherTables("TableCourse", "CourseEducationBranchName", "CourseEducationBranchName='" + lnkRemove.CommandArgument + "'"))
            {
                if (!brsp.checkEntityInOtherTables("TableUserStudent", "UserStudentEducationBranchName", "UserStudentEducationBranchName='" + lnkRemove.CommandArgument + "'"))
                {
                    if (!brsp.checkEntityInOtherTables("TableUserTeacher", "UserTeacherSpecialty", "UserTeacherSpecialty='" + lnkRemove.CommandArgument + "'"))
                    {
                        try
                        {
                            brsp.deleteBranch(" EducationBranchName=" + "'" + lnkRemove.CommandArgument + "'");
                            showBranchs();

                        }
                        catch
                        {
                        }
                    }
                }
            }


        }


        public void insertBranch(object sender, EventArgs e)
        {
            EducationBranch brch = new EducationBranch();

            if (Validation())
            {

                string EducationBranchName = txtBranchName.Text;
                brch.EducationBranchName = EducationBranchName;

                SqlException exc = brch.insertBranch();
                if (exc == null)
                {
                    lblMessage.Text = "عمليات انجام شد.";
                    lblMessage.Visible = true;
                    clearForm();
                    showBranchs();
                }
                else
                {
                    if (exc.Message.Contains("PRIMARY KEY constraint"))
                        lblMessage.Text = "نام رشته تحصيلي قبلاً واردشده است.";
                    lblMessage.Visible = true;
                }
            }


        }







        protected void showBranchs()
        {
            EducationBranch brsp = new EducationBranch();
            GridView1.DataSource = brsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
            GridView1.DataBind();

            //if (GridView1.Rows.Count > 0)              
            //    btnDelete.Visible = true;              
            //else                                       
            //    btnDelete.Visible = false;             
        }


        protected void clearForm()
        {
            //txtEducationBranchName.Text = string.Empty;

        }


        protected void deleteSelectedBranch()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            EducationBranch brsp = new EducationBranch();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!brsp.checkEntityInOtherTables("TableCourse", "CourseEducationBranchName", "CourseEducationBranchName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                        {
                            if (!brsp.checkEntityInOtherTables("TableUserStudent", "UserStudentEducationBranchName", "UserStudentEducationBranchName='" + GridView1.Rows[i].Cells[1].Text + "'"))
                            {
                                if (!brsp.checkEntityInOtherTables("TableUserTeacher", "UserTeacherSpecialty", "UserTeacherSpecialty='" + GridView1.Rows[i].Cells[1].Text + "'"))
                                {
                                    try
                                    {
                                        SqlException sqlexp = brsp.deleteBranch(" EducationBranchName=" + "'" + GridView1.Rows[i].Cells[1].Text + "'");
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
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "برای حذف، حداقل یک رشته را انتخاب کنید";
            else
                showBranchs();


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
            try
            {
                if (!IsPostBack)
                    showBranchs();
            }
            catch
            {
            }


        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                //insertBranch();
                //showBranchs();

            }
            catch
            {
            }
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteSelectedBranch();

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