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
    public partial class StudentsCoursesMarks : System.Web.UI.Page
    {
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

        public string rowID;

        protected void insertProtest()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            dbo.updateQuery("TableTakeCourse", "TakeCourseComplainText=" + "'" + txtProtest.Text.Trim() + "'" +
            " where RowID=" + lblRowID.Text);

            showStudentMarks();

        }

        public void makeProtest(object sender, EventArgs e)
        {


            LinkButton lnkRemove = (LinkButton)sender;

            rowID = lnkRemove.CommandArgument.Trim();

            lblRowID.Text = rowID;


            DataBaseOperations dbo1 = new DataBaseOperations();
            DataTable dt1 = new DataTable();

            dt1 = dbo1.selectQueryDataTable("TableTakeCourse", "TakeCourseCourseName,TakeCourseComplainText",
             "RowID=" + rowID, null);

            lblCourseName.Text = "به نمره درس " + dt1.Rows[0]["TakeCourseCourseName"].ToString();


            txtProtest.Text = dt1.Rows[0]["TakeCourseComplainText"].ToString();



            txtProtest.Focus();
            showStudentMarks();

        }




        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            drliTermNumber.DataBind();
        }

        protected void showStudentMarks()
        {
            string TermNumber = drliTermNumber.Text;

            DataBaseOperations dbo2 = new DataBaseOperations();

            GridView1.DataSource = dbo2.selectQueryDataTable("TableTakeCourse,TableCourseGroup",
                "RowID,TableCourseGroup.CourseGroupTeacherLastName,TableCourseGroup.CourseGroupTeacherName,TakeCourseCourseName,TakeCourseUniversityNameCourseNameYearTermGroupNumber,TakeCourseMidTermMark,TakeCourseUltimateMark,TakeCourseUltimateMarkAfterReview," +
                "TakeCourseFinalMark,TakeCourseExerciseMark,TakeCoursePracticalMark,TakeCourseTotalMark,TakeCourseComplainResponse," +
                "TakeCourseComplainText,TakeCourseChangeMarkReason,TakeCourseUniversityNameCourseNameYearTermGroupNumber",
                " TakeCourseUserStudentID=" + Session["StudentID"].ToString() +
                " and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + drliTermNumber.Text + "'" +
                " and (TableTakeCourse.TakeCourseCourseGroupRowID=TableCourseGroup.CourseGroupRowID)",
                " order by TakeCourseCourseName");


            GridView1.DataBind();

            //RadGrid1.DataSource = GridView1.DataSource;
            //RadGrid1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                Button1.Visible = true;
                txtProtest.Visible = true;
                lblCourseName.Visible = true;
                lblMatn.Visible = true;
            }
            else
            {
                Button1.Visible = false;
                txtProtest.Visible = false;
                lblCourseName.Visible = false;
                lblMatn.Visible = false;

            }


        }



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserType"] == "Student")
                {
                }

                else
                    Response.Redirect("~/PresentationLayer/Main.aspx");

                if (!IsPostBack)
                {
                    showStudentsNews();
                    showTermNumbers();
                    showStudentMarks();

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
        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showStudentMarks();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            insertProtest();
        }

    }
}