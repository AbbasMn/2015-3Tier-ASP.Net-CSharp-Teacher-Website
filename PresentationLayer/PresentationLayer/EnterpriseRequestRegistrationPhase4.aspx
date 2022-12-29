<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="MP.Master" CodeBehind="EnterpriseRequestRegistrationPhase4.aspx.cs" Inherits="PresentationLayer.EnterpriseRequestRegistrationPhase4" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
    <link href="CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   




    




    <style type="text/css">
        .style1
        {
            width: 754px;
        }
        .style8
        {
            width: 197px;
        }
        .style10
        {
            width: 155px;
        }
        .style11
        {
            width: 203px;
        }
        .style12
        {
            width: 161px;
        }
        .style13
        {
            width: 141px;
        }
    </style>




    




</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
    <table Class="TableMy" align="center" ">
        <tr>
            <td colspan="2" align="center">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <b>مرحله چهارم: تایید نهایی و محاسبه پیش پرداخت قرارداد</b></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblError" runat="server" CssClass="LableBoldGreenMy"></asp:Label>
                <asp:Label ID="lblMessage" runat="server" CssClass="LableBoldGreenMy"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" >
                <strong>نکته مهم ۱:</strong> <span >با توجه به زمان پیشنهادی شما 
                            برای انجام پروژه عملیات تحلیل و طراحی اولیه و اقدامات مورد نیاز مانند خرید Host 
                            و بررسی امکان ثبت دامنه های پیشنهادی صورت گرفته و با انجام هر عملیات نتیجه آن به 
                            شما ایمیل خواهد شد.<br />
                <strong>نکته مهم ۲:</strong> به عنوان پیش پرداخت مبلغ ۲۰۰ هزار تومان را 
                            حداکثر تا ۲۴ ساعت آينده به شماره حساب ۱۷۰۲۰۰۹۹۶۳ (شماره کارت: ۸۱۲۷&nbsp;&nbsp; ۰۰۷۲&nbsp; 
                            ۳۳۷۲&nbsp;&nbsp; ۶۱۰۴) جام بانک ملت و بنام سید عباس منتصری واریز نمایید. در غیر اینصورت 
                            سفارش لغو خواهد 
                            گردید.
                            <br />
                <strong>نکته مهم ۳:</strong> مشخصات پرداخت 
                            کننده را در فیش واریزی شرکت (سازمان)&nbsp;
                                                               <asp:Label ID="lblEnterpriseName1" 
                                runat="server" CssClass="LableBoldGreenMy" 
                                                                   Text="Label"></asp:Label>
                        &nbsp;وارد نمایید. </span>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" >
                <hr size="3px" style="width: 100%; background-color: #0000FF; " />
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy"  align="center" style="width: 100%">
                    <tr>
                        <td align="right"  colspan="5"   >
                            <strong>مشخصات سفارش دهنده نرم افزار</strong><td  valign="top" align="right">
                                                                                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style10"    >
                            شرکت/سازمان:<td align="right" class="style11" >
                            <asp:Label ID="lblEnterpriseName" runat="server" CssClass="LableBoldGreenMy" 
                                                                   Text="Label"></asp:Label>
                        </td>
                        <td class="style12" >
                            کشور:</td>
                        <td  valign="top" class="style8" >
                            <asp:Label ID="lblEnterpriseCountry" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style13" >
                            استان:</td>
                        <td  valign="top" align="right">
                            <asp:Label ID="lblEnterpriseState" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style10"    >
                            شهر (روستا):</td>
                        <td  valign="top" align="right" class="style11" >
                            <asp:Label ID="lblEnterpriseCity" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style12" >
                    
                            ايميل:</td>
                        <td  valign="top" class="style8" >
                            <asp:Label ID="lblEnterpriseEmail" runat="server" CssClass="LableBoldGreenMy" 
                                    Text="Label"></asp:Label>
                        </td>
                        <td class="style13" >
                            وب سايت:</td>
                        <td  valign="top" align="right">
                            <asp:Label ID="lblEnterpriseWebSite" runat="server" CssClass="LableBoldGreenMy" 
                                    Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top" class="style10"    >
                            تلفن ثابت:</td>
                        <td align="right" valign="top" class="style11"  >
                            <asp:Label ID="lblEnterprisePhone" runat="server" CssClass="LableBoldGreenMy" 
                                    Text="Label"></asp:Label>
                        </td>
                        <td valign="top" class="style12"  >
                            
                            تلفن همراه:</td>
                        <td valign="top" class="style8"  >
                            <asp:Label ID="lblEnterpriseCellPhone" runat="server" CssClass="LableBoldGreenMy" 
                                    Text="Label"></asp:Label>
                        </td>
                        <td valign="top" class="style13"  >
                            
                            آدرس: 
                        </td>
                        <td  align="right">
                            <asp:Label ID="lblEnterpriseAddress" runat="server" CssClass="LableBoldGreenMy" 
                                    Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"  colspan="6"   >
                            <strong>مشخصات نرم افزار</strong></td>
                    </tr>
                    <tr>
                        <td align="right" class="style10"    >
                            نوع نرم افزار:</td>
                        <td align="right" class="style11"  >
                            <asp:Label ID="lblSoftwareType" runat="server" CssClass="LableBoldGreenMy" Text="Label"></asp:Label>
                        </td>
                        <td class="style12"  >
                            
                                زمان پیشنهادی:</td>
                        <td class="style8"  >
                            <asp:Label ID="lblEnterpriseTime" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                        <td valign="top" class="style13"  >
                            
                            &nbsp;</td>
                        <td  align="left">
                            
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" colspan="6" valign="top"   >
                            <strong>مشخصات وب سایت</strong></td>
                    </tr>
                    <tr>
                        <td align="right" class="style10"    >
                            نوع وب سایت:</td>
                        <td align="right" valign="top" class="style11"  >
                            <asp:Label ID="lblEnterpriseWebsiteType" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style12"  >
                            
                                نوع دامنه (Domain):</td>
                        <td valign="top" class="style8"  >
                            <asp:Label ID="lblEnterpriseWebsiteDomainType" runat="server" 
                                CssClass="LableBoldGreenMy" Text="Label"></asp:Label>
                        </td>
                        <td class="style13"  >
                            
                            حجم فضا (Host):</td>
                        <td  align="right">
                            <asp:Label ID="lblEnterpriseWebsiteHostValue" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10"    >
                            نوع سکو (Plan):</td>
                        <td class="style11"  >
                            <asp:Label ID="lblEnterpriseWebsitePlan" runat="server" CssClass="LableBoldGreenMy" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style12"  >
                            
                                دامنه موردنظر 1:</td>
                        <td class="style8"  >
                            <asp:Label ID="lblEnterpriseWebsiteDomainName1" runat="server" 
                                CssClass="LableBoldGreenMy" Text="Label"></asp:Label>
                        </td>
                        <td class="style13"  >
                            
                                دامنه موردنظر 2:</td>
                        <td align="right" >
                            <asp:Label ID="lblEnterpriseWebsiteDomainName2" runat="server" 
                                CssClass="LableBoldGreenMy" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10"    >
                            دامنه موردنظر 3:</td>
                        <td class="style11"  >
                            <asp:Label ID="lblEnterpriseWebsiteDomainName3" runat="server" 
                                CssClass="LableBoldGreenMy" Text="Label"></asp:Label>
                        </td>
                        <td class="style12"  >
                            
                                &nbsp;</td>
                        <td class="style8"  >
                            
                                &nbsp;</td>
                        <td class="style13"  >
                            
                                &nbsp;</td>
                        <td align="right" >
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <strong>امکانات (نیازمندیهای) وب سایت</strong></td>
            <td >
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckBoxIntroduction" runat="server" 
                                Text="  بخش معرفی وب سایت (ثبت و ویرایش)" TabIndex="1" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBoxNews" runat="server" 
                                Text="  بخش اخبار و تازه ها (ثبت و ویرایش)" TabIndex="2" />
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckBoxVoting" runat="server" 
                                Text="  بخش نظرخواهی (نمایش آمار برای مدیریت)" TabIndex="3" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBoxProductions" runat="server" 
                                Text="  بخش محصولات (ثبت، ویرایش، دسته بندی، جستو و قیمت)" TabIndex="4" />
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckBoxOnlineRelationship" runat="server" 
                                Text="  بخش ارتباط آنلاین با کاربر" TabIndex="5" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBoxOrder" runat="server" 
                                Text="  بخش سفارش با امکانات ارسال ایمیل" TabIndex="6" />
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckOnlineSell" runat="server" 
                                Text="  سیستم فروش آنلاین (سبد خرید)" TabIndex="7" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBoxBranch" runat="server" 
                                Text="  بخش نمایندگی (با دسترسی و کاربری متفاوت نسبت به کاربران معمولی)" 
                                TabIndex="8" />
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckBoxSendSMS" runat="server" 
                                Text="  بخش ارسال SMS به مشتریان و اعضای سایت" TabIndex="9" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBox2Languages" runat="server" 
                                Text="  دو زبان بودن سایت (Persian - English)" TabIndex="10" />
            </td>
        </tr>
        <tr>
            <td class="style1"    >
                <asp:CheckBox ID="CheckBoxPicGallery" runat="server" 
                                Text="  بخش گالری عکس (ایجاد آلبوم، ثبت و ویرایش عکس)" TabIndex="11" />
            </td>
            <td >
                <asp:CheckBox ID="CheckBoxRanking" runat="server" 
                                Text="  رتبه بندی سایت در گوگل و موتورهای جستجو (SEO)" TabIndex="12" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style1"    >
                            نیازمندیهای دیگر: 
                            <br />
                <br />
                <br />
                <asp:Button ID="btnFinal" runat="server" CssClass="Button" 
                                onclick="btnNextPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="ثبت نهایی سفارش" Width="100px" />
                            &nbsp;&nbsp;<asp:Button ID="btnLastPhase" runat="server" CssClass="Button" 
                                onclick="btnLastPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="مرحله قبل" Width="57px" />
            </td>
            <td align="right" valign="top" >
                <asp:TextBox ID="txtOtherFanctionality" runat="server" 
                        Width="420px" TabIndex="13" Height="92px" MaxLength="300" 
                                TextMode="MultiLine" BackColor="#CCCCCC" BorderColor="Black" 
                                BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
    </table>
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
 
 
 <div class="clear"></div>
<!-------------------- Product --------------------------->
    <!--mobile-content-->
                          <div class="clear"></div>
                    </div><!--Col1-->
<!--------------------------------------- COL-2 ----------------------------------------------------------->


<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

