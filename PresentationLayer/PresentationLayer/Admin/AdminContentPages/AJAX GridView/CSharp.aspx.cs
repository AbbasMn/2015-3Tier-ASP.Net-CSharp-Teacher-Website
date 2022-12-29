using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections;
using System.IO.Compression;

public partial class _Default : System.Web.UI.Page
{
    private String strConnString = @"Data Source=SABASMN\MSSQLSERVER2008;Initial Catalog=BusinessSite;User ID=sa;Password=montaserisoftwaredatabase";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        string strQuery = "select EducationBranchName" +
                           " from TableEducationBranch";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }

    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        BindData();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void AddNewCustomer(object sender, EventArgs e)
    {

        string EducationBranchName = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;

        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into TableEducationBranch(EducationBranchName) " +
        "values(@EducationBranchName);" +
         "select EducationBranchName from TableEducationBranch";

        cmd.Parameters.Add("@EducationBranchName", SqlDbType.VarChar).Value = EducationBranchName;

        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    protected void DeleteCustomer(object sender, EventArgs e)
    {
        LinkButton lnkRemove = (LinkButton)sender;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from TableEducationBranch where " +
        "EducationBranchName=@EducationBranchName;" +

         "select EducationBranchName from TableEducationBranch";
        cmd.Parameters.Add("@EducationBranchName", SqlDbType.VarChar).Value = lnkRemove.CommandArgument;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    protected void EditCustomer(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();
    }

    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }

    protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
    {
        string CustomerID = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblCustomerID")).Text;
        string Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtContactName")).Text;
        string Company = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtCompany")).Text;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update customers set ContactName=@ContactName,CompanyName=@CompanyName " +
         "where CustomerID=@CustomerID;" +
         "select CustomerID,ContactName,CompanyName from customers";
        cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = CustomerID;
        cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = Name;
        cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = Company;
        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

}
