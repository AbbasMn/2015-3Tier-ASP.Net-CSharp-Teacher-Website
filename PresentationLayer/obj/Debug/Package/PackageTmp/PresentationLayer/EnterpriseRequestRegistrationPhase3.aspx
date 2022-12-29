<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="MP.Master" CodeBehind="EnterpriseRequestRegistrationPhase3.aspx.cs" Inherits="PresentationLayer.EnterpriseRequestRegistrationPhase3" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
    <link href="CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   




</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
<table Class="TableMy" align="center" dir="rtl">
                    <tr>
                        <td colspan="2" align="center">
                            <b>مرحله سوم: انتخاب امکانات (نیازمندیها) وب سایت</b></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style1">
                            <strong>نکته مهم:</strong> <span class="style2">امکانات زیر در اکثر وب سایت ها 
                            قابل مشاهده&nbsp; و استفاده است. در صورتی که امکانات دیگری مدنظرتان است در قسمت 
                            نیازمندیهای دیگر آن را وارد نمایید.</span><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" >
                        
                        
                         <hr size="3px" style="width: 100%; background-color: #0000FF; " />  
                        </td>
                    </tr>
                    <tr>
                        <td class="style3"   >
                            <asp:CheckBox ID="CheckBoxIntroduction" runat="server" 
                                Text="  بخش معرفی وب سایت (ثبت و ویرایش)" TabIndex="1" />
                        </td>
                        <td >
                            <asp:CheckBox ID="CheckBoxNews" runat="server" 
                                Text="  بخش اخبار و تازه ها (ثبت و ویرایش)" TabIndex="2" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3"   >
                            <asp:CheckBox ID="CheckBoxVoting" runat="server" 
                                Text="  بخش نظرخواهی (نمایش آمار برای مدیریت)" TabIndex="3" />
                        </td>
                        <td >
                            <asp:CheckBox ID="CheckBoxProductions" runat="server" 
                                Text="  بخش محصولات (ثبت، ویرایش، دسته بندی، جستو و قیمت)" TabIndex="4" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3"   >
                            <asp:CheckBox ID="CheckBoxOnlineRelationship" runat="server" 
                                Text="  بخش ارتباط آنلاین با کاربر" TabIndex="5" />
                        </td>
                        <td >
                            <asp:CheckBox ID="CheckBoxOrder" runat="server" 
                                Text="  بخش سفارش با امکانات ارسال ایمیل" TabIndex="6" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3"   >
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
                        <td class="style3"   >
                            <asp:CheckBox ID="CheckBoxSendSMS" runat="server" 
                                Text="  بخش ارسال SMS به مشتریان و اعضای سایت" TabIndex="9" />
                        </td>
                        <td >
                            <asp:CheckBox ID="CheckBox2Languages" runat="server" 
                                Text="  دو زبان بودن سایت (Persian - English)" TabIndex="10" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3"   >
                            <asp:CheckBox ID="CheckBoxPicGallery" runat="server" 
                                Text="  بخش گالری عکس (ایجاد آلبوم، ثبت و ویرایش عکس)" TabIndex="11" />
                        </td>
                        <td >
                            <asp:CheckBox ID="CheckBoxRanking" runat="server" 
                                Text="  رتبه بندی سایت در گوگل و موتورهای جستجو (SEO)" TabIndex="12" />
                        </td>
                    </tr>

                    <tr>
                        <td valign="top"   >
                            نیازمندیهای دیگر:<br />
                            <br />
                            <br />
&nbsp;<asp:Button ID="btnNextPhase" runat="server" CssClass="Button" 
                                onclick="btnNextPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="ادامه" Width="57px" />
                            &nbsp;
                            <asp:Button ID="btnLastPhase" runat="server" CssClass="Button" 
                                onclick="btnLastPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="مرحله قبل" Width="57px" />
                        </td>
                        <td align="right" >
                            
                            
                    
                                <asp:TextBox ID="txtOtherFanctionality" runat="server" 
                        Width="420px" TabIndex="13" Height="92px" MaxLength="300" 
                                TextMode="MultiLine" BackColor="#CCCCCC" BorderColor="Black" 
                                BorderStyle="Solid" BorderWidth="1px" Font-Names="Tahoma" Font-Size="9pt"></asp:TextBox>
                    
                                &nbsp;
                    
                                <br />
                    
                        </td>
                    </tr>

                    </table>

<div class="clear"></div>
<!-------------------- Product --------------------------->
    <!--mobile-content-->
                          <div class="clear"></div>
                    </div><!--Col1-->
<!--------------------------------------- COL-2 ----------------------------------------------------------->
 <div class="col2">                 

<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>اخبار</h5>
<div style="clear:both"></div> 
<marquee dir="rtl"  behavior="alternate" direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>
<div align="center">
<p align="right">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="newsID" 
                                                             onitemcommand="DataList1_ItemCommand" Width="100%" 
                                                             RepeatDirection="Horizontal" RepeatLayout="Flow">

    <ItemTemplate>

    
           <img src="pic/Icon/s-flash5.gif">
            <asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled" Font-Names="tahoma" Font-Size="8pt"></asp:LinkButton>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000" Font-Names="tahoma" Font-Size="8pt"></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  


 <div class="clear"></div>             

	

	

</div><!--Col2-->



<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

