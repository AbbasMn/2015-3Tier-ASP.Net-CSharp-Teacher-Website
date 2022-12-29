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
    public partial class EnterpriseRequestRegistrationPhase2 : System.Web.UI.Page
    {
        private void sessioninitiatePhase2()
        {
            Session["EnterpriseWebsiteType"] = drliEnterpriseWebsiteType.Text.Trim();
            Session["EnterpriseWebsiteDomainType"] = drliEnterpriseWebsiteDomainType.Text.Trim();
            Session["EnterpriseWebsiteHostValue"] = drliEnterpriseWebsiteHostValue.Text.Trim();
            Session["EnterpriseWebsitePlan"] = drliEnterpriseWebsitePlan.Text.Trim();
            Session["EnterpriseWebsiteDomain1"] = txtEnterpriseWebsiteDomainName1.Text.Trim();
            Session["EnterpriseWebsiteDomain2"] = txtEnterpriseWebsiteDomainName2.Text.Trim();
            Session["EnterpriseWebsiteDomain3"] = txtEnterpriseWebsiteDomainName3.Text.Trim();
            Session["EnterprisePhase"] = "third";
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
            if (Session["EnterprisePhase"] == null)
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "first")
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterpriseSoftwareType"] == "وب سایت")
            {
                PanelWebSite.Visible = true;

            }
            else
            {
                PanelWebSite.Visible = false;
            }

            if (!IsPostBack)
            {

                showStudentsNews();

                if (Session["EnterprisePhase"] == "third")
                {
                    drliEnterpriseWebsiteType.Text = Session["EnterpriseWebsiteType"].ToString();
                    drliEnterpriseWebsiteDomainType.Text = Session["EnterpriseWebsiteDomainType"].ToString();
                    drliEnterpriseWebsiteHostValue.Text = Session["EnterpriseWebsiteHostValue"].ToString();
                    drliEnterpriseWebsitePlan.Text = Session["EnterpriseWebsitePlan"].ToString();
                    txtEnterpriseWebsiteDomainName1.Text = Session["EnterpriseWebsiteDomain1"].ToString();
                    txtEnterpriseWebsiteDomainName2.Text = Session["EnterpriseWebsiteDomain2"].ToString();
                    txtEnterpriseWebsiteDomainName3.Text = Session["EnterpriseWebsiteDomain3"].ToString();

                    Session["EnterprisePhase"] = "second";
                }
            }
        }

        protected void btnLastPhase_Click(object sender, EventArgs e)
        {
            Response.Redirect("EnterpriseRequestRegistration.aspx");
        }

        protected void btnNextPhase_Click(object sender, EventArgs e)
        {
            sessioninitiatePhase2();
            Response.Redirect("EnterpriseRequestRegistrationPhase3.aspx");
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("NewsDetailes.aspx");
            //}
        }

    }
}