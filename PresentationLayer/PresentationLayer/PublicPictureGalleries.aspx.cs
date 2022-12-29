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
    public partial class PublicPictureGalleries : System.Web.UI.Page
    {
        protected void showPublicGalleries(string pictureType)
        {
            GalleryPicture gallery = new GalleryPicture();

            Repeater1.DataSource = gallery.showGalleryPicture("GalleryPicOwnerName,GalleryPicOwnerLastName,GalleryPicID,GalleryPicThumbPictureName,GalleryPicTitle,GalleryPicDate,GalleryPicAccessLevel,GalleryPicDescription,GalleryPicTime,GalleryPicLocation,GalleryPicType,GalleryPicPriority,GalleryPicOwnerID",
            "GalleryPicPublicShowing='true'");
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

            if (!IsPostBack)
            {
                showPublicGalleries(null);
            }

            if (Session["UserType"] == null)
            {
                lbtnLogIn.Visible = true;
                lblStudentRegistration.Visible = true;
                lbl1.Visible = true;

                lbtLogOut.Visible = false;
                lbl2.Visible = false;
                btnControlPanel.Visible = false;
            }
            else
            {
                lbtnLogIn.Visible = false;
                lblStudentRegistration.Visible = false;
                lbl1.Visible = false;

                lbtLogOut.Visible = true;
                lbl2.Visible = true;
                btnControlPanel.Visible = true;
            }



            try
            {

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

        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void btnControlPanel_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");
        }
        protected void btnStudentRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/Pages/StudentRegistration.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "goToFullShow")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label lbl = new Label();

                lbl = (Label)Repeater1.Items[index].FindControl("lblGalleryID");

                Session["sentID"] = lbl.Text;

                if (Session["UserType"] == null)
                    Response.Redirect("PictureGalleryShowing/GuestPictureGalleryShoingFull.aspx");
                else
                    Response.Redirect("PictureGalleryShowing/PictureGalleryShoingFull.aspx");
            }
        }
    }
}