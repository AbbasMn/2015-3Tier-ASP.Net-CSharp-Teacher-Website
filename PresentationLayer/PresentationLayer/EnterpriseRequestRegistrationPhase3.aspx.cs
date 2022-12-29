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
    public partial class EnterpriseRequestRegistrationPhase3 : System.Web.UI.Page
    {
        private void clear()
        {
            CheckBox2Languages.Checked = false;
            CheckBoxBranch.Checked = false;
            CheckBoxIntroduction.Checked = false;
            CheckBoxNews.Checked = false;
            CheckBoxOnlineRelationship.Checked = false;
            CheckBoxOrder.Checked = false;
            CheckBoxPicGallery.Checked = false;
            CheckBoxProductions.Checked = false;
            CheckBoxRanking.Checked = false;
            CheckBoxSendSMS.Checked = false;
            CheckBoxVoting.Checked = false;
            CheckOnlineSell.Checked = false;
            txtOtherFanctionality.Text = string.Empty;
        }

        private void sessioninitiatePhase3()
        {
            if (CheckBox2Languages.Checked)
                Session["2Languages"] = CheckBox2Languages.Text.Trim();
            else
                Session["2Languages"] = null;

            if (CheckBoxBranch.Checked)
                Session["Branch"] = CheckBoxBranch.Text.Trim();
            else
                Session["Branch"] = null;

            if (CheckBoxIntroduction.Checked)
                Session["Introduction"] = CheckBoxIntroduction.Text.Trim();
            else
                Session["Introduction"] = null;

            if (CheckBoxNews.Checked)
                Session["News"] = CheckBoxNews.Text.Trim();
            else
                Session["News"] = null;

            if (CheckBoxOnlineRelationship.Checked)
                Session["OnlineRelationship"] = CheckBoxOnlineRelationship.Text.Trim();
            else
                Session["OnlineRelationship"] = null;

            if (CheckBoxOrder.Checked)
                Session["Order"] = CheckBoxOrder.Text.Trim();
            else
                Session["Order"] = null;

            if (CheckBoxPicGallery.Checked)
                Session["PicGallery"] = CheckBoxPicGallery.Text.Trim();
            else
                Session["PicGallery"] = null;


            if (CheckBoxProductions.Checked)
                Session["Productions"] = CheckBoxProductions.Text.Trim();
            else
                Session["Productions"] = null;

            if (CheckBoxRanking.Checked)
                Session["Ranking"] = CheckBoxRanking.Text.Trim();
            else
                Session["Ranking"] = null;

            if (CheckBoxSendSMS.Checked)
                Session["SendSMS"] = CheckBoxSendSMS.Text.Trim();
            else
                Session["SendSMS"] = null;

            if (CheckBoxVoting.Checked)
                Session["Voting"] = CheckBoxVoting.Text.Trim();
            else
                Session["Voting"] = null;

            if (CheckOnlineSell.Checked)
                Session["CheckOnlineSell"] = CheckOnlineSell.Text.Trim();
            else
                Session["CheckOnlineSell"] = null;

            if (txtOtherFanctionality.Text.Trim() != string.Empty)
                Session["OtherFanctionality"] = txtOtherFanctionality.Text.Trim();
            else
                Session["OtherFanctionality"] = null;

            Session["EnterprisePhase"] = "fourth";
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
            }

            if (Session["EnterprisePhase"] == null)
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "first")
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "second")
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (!IsPostBack)
            {
                //if (Session["EnterprisePhase"] == "forth")
                //{


                //    Session["EnterprisePhase"] = "third";
                //}
            }
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

        protected void btnLastPhase_Click(object sender, EventArgs e)
        {
            Response.Redirect("EnterpriseRequestRegistrationPhase2.aspx");
        }
        protected void btnNextPhase_Click(object sender, EventArgs e)
        {
            sessioninitiatePhase3();
            Response.Redirect("EnterpriseRequestRegistrationPhase4.aspx");
        }
    }
}