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
using DataBaseLayer;
using System.Data.SqlClient;

namespace PresentationLayer.PictureGalleryShowing
{
    public partial class GuestPictureGalleryShoingFull : System.Web.UI.Page
    {
        public string sentGalleryPicID;


        protected void Page_Load(object sender, EventArgs e)
        {
            showPGallery(null);

        }


        protected void showPGallery(string sentGalleryPicID)
        {
            LogicalLayer.Picture pic = new LogicalLayer.Picture();
            DataTable dt = new DataTable();


            try
            {
                sentGalleryPicID = Session["sentID"].ToString();

                dt = pic.selectQueryDataTable("TableGalleryPicture,TablePicture", "TableGalleryPicture.GalleryPicTitle as GalleryPicTitle ,PictureName,PictureTitle,PictureDescription," +
                "PictureDate,PictureTime,PictureLocation,PictureOwnerName,PictureOwnerLastName", "(TableGalleryPicture.GalleryPicID=TablePicture.PictureGalleryPicID) and (TablePicture.PictureGalleryPicID=" + sentGalleryPicID + ")", null);// + )

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch
            {
            }


            //DataTable dt2 = new DataTable();
            //DataTable dt3 = new DataTable();

            //DataRow row;
            //DataColumn col;

            //dt3.Columns.Add("GalleryPicTitle");
            //dt3.Columns.Add ("PictureName");
            //dt3.Columns.Add("PictureTitle");
            //dt3.Columns.Add("PictureDescription");
            //dt3.Columns.Add("PictureDate"); 
            //dt3.Columns.Add("PictureTime");
            //dt3.Columns.Add("PictureLocation");

            //dt = pic.selectQueryDataTable("TableGalleryPicture", "GalleryPicTitle,GalleryPicID",
            //null, " order by GalleryPicID");



            //if (dt.Rows.Count>0)
            //{
            //    try
            //    {
            //        for (int i = 0; i <= dt.Rows.Count - 1; i++)
            //        {
            //             GalleryPicID = dt.Rows[i][0].ToString();


            //             dt2=pic.selectQueryDataTable("TableGalleryPicture,TablePicture", "TableGalleryPicture.GalleryPicTitle as GalleryPicTitle ,PictureName,PictureTitle,PictureDescription," +
            //             "PictureDate,PictureTime,PictureLocation", "(TableGalleryPicture.GalleryPicID=TablePicture.PictureGalleryPicID) and (TablePicture.PictureGalleryPicID=" + GalleryPicID + ")", null);// + sentGalleryPicID)


            //            if (dt2.Rows.Count > 0)
            //             {
            //                 for (int j = 0; j <= dt2.Rows.Count - 1; j++)
            //                 {

            //                     row = dt3.NewRow();

            //                     //row = dt2.Rows[j];
            //                     row["GalleryPicTitle"] = dt2.Rows[j]["GalleryPicTitle"].ToString();
            //                     row["PictureName"] = dt2.Rows[j]["PictureName"].ToString();
            //                     row["PictureTitle"] = dt2.Rows[j]["PictureTitle"].ToString();
            //                     row["PictureDescription"] = dt2.Rows[j]["PictureDescription"];
            //                     row["PictureDate"] = dt2.Rows[j]["PictureDate"].ToString();
            //                     row["PictureTime"] = dt2.Rows[j]["PictureTime"].ToString();
            //                     row["PictureLocation"] = dt2.Rows[j]["PictureLocation"].ToString();

            //                     dt3.Rows.Add(row);
            //                 }
            //             }
            //        }


            //    }
            //    catch (Exception excp)
            //    {

            //    }

            //}


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


        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

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

            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }

        protected void btnMainPage_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }
        protected void btnPublicAlbum_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/PublicPictureGalleries.aspx");
        }
    }
}