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

namespace PresentationLayer.User.Pages.Student
{
    public partial class StudentProtest : System.Web.UI.Page
    {
        string sentRowID;

        protected void insertProtest()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            //if (
            dbo.updateQuery("TableTakeCourse", "TakeCourseComplainText=" + "'" + txtProtest.Text.Trim() + "'" +
            " where RowID=" + sentRowID);
            //!= null)

            // Response.Redirect("StudentsCoursesMarks.aspx");

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Student")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            //txtProtest.Text = String.Empty;
            txtProtest.Focus();

            sentRowID = Session["sentID"].ToString();

            if (IsPostBack)
            {
                showStudentsNews();
            }




        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                insertProtest();
                lblError.Text = "اعتراض ثبت گرديد";
                txtProtest.Text = "";

                Session["UserOperation"] = "عملیات :: ثبت اعتراض به نمره :: با موفقیت انجام شد";

                Session["OperationPage"] = "~/PresentationLayer/User/Pages/Student/StudentsCoursesMarks.aspx";

                Response.Redirect("~/PresentationLayer/MessagePage.aspx");

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
            Response.Redirect("StudentControlPanelPage.aspx");
        }
        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String UserStudentID = Session["StudentID"].ToString();

            if (Session["UserType"].ToString() == "Student")
            {
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentId=" + UserStudentID);
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
        protected void showStudentsNews()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }





        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            //}
        }

    }
}