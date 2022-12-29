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

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminInsertLink : System.Web.UI.Page
    {
        protected void setUnShownLink()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("choose0");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableLink", " linkShowingPermision='" + chk.Checked.ToString() + "' where linkID=" + GridView1.DataKeys[i].Value);
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

        protected void insertLink()
        {

            Link myLink = new Link();

            myLink.linkTitle = txtLinkTitle.Text.ToString().Trim();


            myLink.linkAouthorType = Session["UserType"].ToString().Trim();

            //myLink.linkType = drlisLlinkType.Text.ToString();
            myLink.linkType = "وب سايت";


            myLink.linkShowingPermision = false;

            if (Session["UserType"] == "Admin")
            {
                myLink.linkAouthorName = Session["AdminName"].ToString().Trim();
                myLink.linkAouthorLastName = Session["AdminLastName"].ToString().Trim();
                myLink.linkAouthorID = Convert.ToInt16(Session["AdminID"].ToString().Trim());
                myLink.linkBranchName = "همه رشته ها";
            }


            myLink.linkAddress = txtLinkAddress.Text.ToString().Trim();


            if (myLink.insertLink() == null)
                lblMessage.Text = "مشخصات وب سايت ذخيره شد";

        }

        protected void deleteLink()
        {
            lblMessage.Text = string.Empty;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            Link link1 = new Link();

            try
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;

                        try
                        {
                            SqlException sqlexp = link1.deleteLink("linkID=" + GridView1.DataKeys[i].Value.ToString());
                            lblMessage.Text = string.Empty;
                        }
                        catch
                        {

                        }
                    }

                }

            }
            catch
            {
            }


        }


        protected void showLink()
        {
            Link mylink1 = new Link();


            GridView1.DataSource = mylink1.showLink("linkTitle,linkAddress,linkShowingPermision,linkType,linkID",
                "linkAouthorID=" + Session["AdminID"].ToString() +
                " and linkAouthorName='" + Session["AdminName"].ToString() +
                "' and linkAouthorLastName='" + Session["AdminLastName"].ToString() + "'", "order by linkTitle");
            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnDelete.Visible = true;
                btnShow.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                btnDelete.Visible = false;
                btnShow.Visible = false;
            }


        }

        protected void clear()
        {
            txtLinkAddress.Text = string.Empty;
            txtLinkTitle.Text = string.Empty;
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
                clear();
                lblRowId.Text = string.Empty;
            }

            showLink();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                insertLink();
                clear();
                showLink();
            }
            catch
            {
            }
        }

        protected void LinkButtonNewsPic_Click(object sender, EventArgs e)
        {

        }
        protected void LinkButtonNewsFile_Click(object sender, EventArgs e)
        {


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
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
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
                lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteLink();
                showLink();
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            setUnShownLink();
            showLink();
        }
    }
}