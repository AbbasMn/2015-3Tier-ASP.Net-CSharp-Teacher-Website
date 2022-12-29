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

namespace PresentationLayer
{
    public partial class AddPictureGallery : System.Web.UI.Page
    {
        public void publicOrNotShowing()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("ChoosePublicShow");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableGalleryPicture", " GalleryPicPublicShowing='" + chk.Checked.ToString() + "' where GalleryPicID=" + GridView1.DataKeys[i].Value.ToString());
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
        public string ownerGalleryID;

        public void clear()
        {
            drplistGalleryPicAccessLevel.Text = string.Empty;
            PersianDatePickup1.PersianDateString = string.Empty;
            txtGalleryPicDescription.Text = string.Empty;
            txtGalleryPicLocation.Text = string.Empty;
            drplistGalleryPicPriority.Text = string.Empty;
            txtGalleryPicTime.Text = string.Empty;
            txtGalleryPicTitle.Text = string.Empty;
            drplistGalleryPicType.Text = string.Empty;
        }

        protected void deleteGallery()
        {
            lblMessage.Text = string.Empty;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            GalleryPicture gal = new GalleryPicture();

            try
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!gal.checkEntityInOtherTables("TablePicture", "PictureGalleryPicID", "PictureGalleryPicID=" + GridView1.DataKeys[i].Value.ToString()))
                        {
                            try
                            {
                                SqlException sqlexp = gal.deleteGalleryPicture(" GalleryPicID=" + GridView1.DataKeys[i].Value.ToString());
                                lblMessage.Text = string.Empty;
                            }
                            catch
                            {

                            }
                        }
                        else lblMessage.Text = "براي حذف هر آلبوم عکس ابتدا بايد عکسهاي آلبوم را حذف نماييد";

                    }
                }

            }
            catch
            {
            }


        }


        public void insertGallery()
        {

            GalleryPicture gal = new GalleryPicture();


            gal.GalleryPicTitle = txtGalleryPicTitle.Text.ToString();
            gal.GalleryPicDate = PersianDatePickup1.PersianDateString.ToString();
            gal.GalleryPicTime = txtGalleryPicTime.Text.ToString();
            gal.GalleryPicPriority = drplistGalleryPicPriority.Text.ToString();
            gal.GalleryPicAccessLevel = drplistGalleryPicAccessLevel.Text.ToString();

            gal.GalleryPicDescription = txtGalleryPicDescription.Text.ToString();
            gal.GalleryPicLocation = txtGalleryPicLocation.Text.ToString();
            gal.GalleryPicType = drplistGalleryPicType.Text.ToString();

            if (Session["UserType"] == "Admin")
            {
                gal.GalleryPicOwnerID = Convert.ToInt16(Session["AdminID"].ToString());
                gal.GalleryPicOwnerType = "Admin";
                gal.GalleryPicOwnerName = Session["AdminName"].ToString();
                gal.GalleryPicOwnerLastName = Session["AdminLastName"].ToString();

            }

            if (Session["UserType"] == "Student")
            {
                gal.GalleryPicOwnerID = Convert.ToInt32(Session["StudentID"].ToString());
                gal.GalleryPicOwnerType = "Student";
                gal.GalleryPicOwnerName = Session["StudentName"].ToString();
                gal.GalleryPicOwnerLastName = Session["StudentLastName"].ToString();
            }

            if (Session["UserType"] == "Teacher")
            {
                gal.GalleryPicOwnerID = Convert.ToInt32(Session["TeacherID"].ToString());
                gal.GalleryPicOwnerType = "Teacher";
                gal.GalleryPicOwnerName = Session["TeacherName"].ToString();
                gal.GalleryPicOwnerLastName = Session["TeacherLastName"].ToString();
            }

            ownerGalleryID = gal.GalleryPicOwnerID.ToString();

            if (gal.insertGalleryPicture() != null)
                lblMessage.Text = "عنوان آلبوم قبلاً وارد شده است";


        }


        public void showGallery()
        {
            GalleryPicture gal = new GalleryPicture();

            if (Session["UserType"] == "Admin")
            {
                gal.GalleryPicOwnerID = Convert.ToInt16(Session["AdminID"].ToString());
                gal.GalleryPicOwnerType = "Admin";

            }

            if (Session["UserType"] == "Student")
            {
                gal.GalleryPicOwnerID = Convert.ToInt32(Session["StudentID"].ToString());
                gal.GalleryPicOwnerType = "Student";
            }

            if (Session["UserType"] == "Teacher")
            {
                gal.GalleryPicOwnerID = Convert.ToInt32(Session["TeacherID"].ToString());
                gal.GalleryPicOwnerType = "Teacher";
            }

            GridView1.DataSource = gal.showGalleryPicture("GalleryPicPublicShowing,GalleryPicID,GalleryPicPriority,GalleryPicAccessLevel,GalleryPicTitle,GalleryPicDate,GalleryPicTime,GalleryPicLocation,GalleryPicType",
                "GalleryPicOwnerID=" + gal.GalleryPicOwnerID.ToString() + "  and GalleryPicOwnerType='" + gal.GalleryPicOwnerType + "'");
            GridView1.DataBind();

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
                lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Student")
            {
                string s = Session["StudentUploadPic"].ToString();
                if (s == "False")
                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
            }



            if (Session["UserType"] != null)
            {
            }

            else
                Response.Redirect("Main.aspx");

            try
            {
                showGallery();
                if (!IsPostBack)
                {
                    lblMessage.Text = string.Empty;
                    lblError.Text = string.Empty;
                }
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
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage.Text = string.Empty;
                insertGallery();
                clear();
                showGallery();
            }
            catch
            {

            }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteGallery();
                showGallery();
            }
            catch
            {
            }

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToSlide")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("PictureGalleryShowing/PictureGalleryShoingFull.aspx");
            }

            if (e.CommandName == "goToEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("EditPictureGallery.aspx");
            }

            if (e.CommandName == "goToNew")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("AddPicToPictureGallery.aspx");
            }

            if (e.CommandName == "goToDelete")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("DeletePicFromPictureGallery.aspx");
            }
        }
        protected void btnActive_Click(object sender, EventArgs e)
        {
            publicOrNotShowing();
        }
    }
}