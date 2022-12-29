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
    public partial class EditPictureGallery : System.Web.UI.Page
    {
        public string newGalleryPicTitle;
        public string oldGalleryPicTitle;

        public string sentGalleryPicID;



        public void updateGallery()
        {
            GalleryPicture gal = new GalleryPicture();


            gal.GalleryPicTitle = txtGalleryPicTitle.Text.ToString();
            gal.GalleryPicDate = PersianDatePickup1.PersianDateString.ToString();
            gal.GalleryPicPriority = drplistGalleryPicPriority.Text.ToString();
            gal.GalleryPicAccessLevel = drplistGalleryPicAccessLevel.Text.ToString();
            gal.GalleryPicTime = txtGalleryPicTime.Text.ToString();
            gal.GalleryPicDescription = txtGalleryPicDescription.Text.ToString();
            gal.GalleryPicLocation = txtGalleryPicLocation.Text.ToString();
            gal.GalleryPicType = drplistGalleryPicType.Text.ToString();



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

            gal.updateGalleryPicture("GalleryPicTitle='" + gal.GalleryPicTitle + "',GalleryPicDate='" + gal.GalleryPicDate +
                "',GalleryPicPriority='" + gal.GalleryPicPriority + "',GalleryPicAccessLevel='" + gal.GalleryPicAccessLevel +
                "',GalleryPicTime='" + gal.GalleryPicTime +
                "',GalleryPicDescription='" + gal.GalleryPicDescription + "',GalleryPicLocation='" + gal.GalleryPicLocation +
                "',GalleryPicType='" + gal.GalleryPicType + "' where GalleryPicID=" + sentGalleryPicID +
                " and GalleryPicOwnerID=" + gal.GalleryPicOwnerID.ToString() + "  and GalleryPicOwnerType='" + gal.GalleryPicOwnerType + "'");
        }


        public void showGallerySpecification(string GalleryPicID)
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


            DataTable dt = new DataTable();

            dt = gal.showGalleryPicture("GalleryPicTitle,GalleryPicDate,GalleryPicTime,GalleryPicLocation,GalleryPicType,GalleryPicAccessLevel,GalleryPicDescription,GalleryPicPriority",
                "GalleryPicID=" + sentGalleryPicID +
                " and GalleryPicOwnerID=" + gal.GalleryPicOwnerID.ToString() + "  and GalleryPicOwnerType='" + gal.GalleryPicOwnerType + "'");


            txtGalleryPicTitle.Text = dt.Rows[0]["GalleryPicTitle"].ToString();
            oldGalleryPicTitle = txtGalleryPicTitle.Text;

            PersianDatePickup1.PersianDateString = dt.Rows[0]["GalleryPicDate"].ToString();
            drplistGalleryPicPriority.Text = dt.Rows[0]["GalleryPicPriority"].ToString();
            drplistGalleryPicAccessLevel.Text = dt.Rows[0]["GalleryPicAccessLevel"].ToString();
            txtGalleryPicTime.Text = dt.Rows[0]["GalleryPicTime"].ToString();
            txtGalleryPicDescription.Text = dt.Rows[0]["GalleryPicDescription"].ToString();
            txtGalleryPicLocation.Text = dt.Rows[0]["GalleryPicLocation"].ToString();
            drplistGalleryPicType.Text = dt.Rows[0]["GalleryPicType"].ToString();


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

            sentGalleryPicID = Session["sentID"].ToString();
            try
            {
                if (!IsPostBack)
                    showGallerySpecification(sentGalleryPicID);
            }
            catch
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Teacher")
                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")
                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
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
                updateGallery();
            }
            catch
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Teacher")
                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")
                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
            }


            Response.Redirect("AddPictureGallery.aspx");

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UploadPicture.aspx");
        }
    }
}