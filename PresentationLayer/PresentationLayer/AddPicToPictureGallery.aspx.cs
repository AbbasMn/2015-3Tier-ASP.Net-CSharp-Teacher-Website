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
    public partial class AddPicToPictureGallery : System.Web.UI.Page
    {
        public string sentGalleryPicID;

        protected void showPictures(string pictureType)
        {
            LogicalLayer.Picture pic = new LogicalLayer.Picture();


            Repeater1.DataSource = pic.showPicture("PictureGalleryPicID,PictureName,PictureTitle,PictureDescription," +
            "PictureID,PicturePriority,PictureAccessLevel,PictureDate,PictureTime,PictureLocation,PictureType",
            "PictureGalleryPicID=" + sentGalleryPicID);
            Repeater1.DataBind();

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
                //lblError.Text = excp.Message.ToString();
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
                sentGalleryPicID = Session["sentID"].ToString();
                showPictures(null);
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




        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UploadPicture.aspx");
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
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddPictureGallery.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PictureGalleryShowing/PictureGalleryShoingFull.aspx");
        }

    }
}