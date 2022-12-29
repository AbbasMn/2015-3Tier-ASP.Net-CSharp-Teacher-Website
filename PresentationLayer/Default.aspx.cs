using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataBaseLayer;
using LogicalLayer;
using System.Data;

namespace PresentationLayer
{
    public partial class Default : System.Web.UI.Page
    {

        protected void showSliderPic()
        {
            LogicalLayer.Picture pic = new LogicalLayer.Picture();
            DataTable dt = new DataTable();


            try
            {

                dt = pic.selectQueryDataTable("TableGalleryPicture,TablePicture", "TableGalleryPicture.GalleryPicTitle as GalleryPicTitle ,PictureName,PictureTitle,PictureDescription," +
                "PictureDate,PictureTime,PictureLocation,PictureOwnerName,PictureOwnerLastName", "(PictureArchieve='false') and (TableGalleryPicture.GalleryPicTitle='آموزش - تدريس خصوصي - نرم افزار') and (TableGalleryPicture.GalleryPicID=TablePicture.PictureGalleryPicID)", "order by PictureID desc");

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch
            {
            }

        }

        protected void showStudentsNews()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                showStudentsNews();

                showSliderPic();
            }
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("PresentationLayer/NewsDetailes.aspx");
            //}
        }

    }
}