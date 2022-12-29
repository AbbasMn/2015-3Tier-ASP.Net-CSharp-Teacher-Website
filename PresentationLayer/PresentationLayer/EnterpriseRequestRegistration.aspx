<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MP.Master"  CodeBehind="EnterpriseRequestRegistration.aspx.cs" Inherits="PresentationLayer.EnterpriseRequestRegistration" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
    <link href="CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   



    <style type="text/css">

        .style1
        {
            text-align: justify;
            line-height:20px;
        }
        
    </style>




</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">

   
                <table Class="TableMy" dir="rtl" align="center">
                    <tr>
                        <td colspan="6" align="center">
                            <b>ثبت سفارش (درخواست) طراحی و پیاده سازی وب سایت و نرم افزار کاربردی</b></td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" class="style1">
                            <strong>نکته مهم:</strong> بطور کلی د<span class="style2">و نوع از نرم افزارها 
                            طراحی و پیاده سازی می شوند.
                            در حال حاضر فقط می توانید سفارش <strong>طراحی و پیاده سازی وب سایت 
                            </strong>را ثبت نمایید.<br />
                            <br />
                            &nbsp;&nbsp;<strong>۱-&nbsp; وب سایت یا Web Application:</strong> نرم افزاری 
                            تحت وب است که نیاز به فضایی برای ذخیره منابع نرم افزار (صفحات سایت،&nbsp; تصاویر 
                            و ...) دارد که این فضا، فضای میزبان (Host) نامیده می شود. و همچنین یک آدرس 
                            منحصربفرد برای دسترسی یه فضای میزبان که دامنه (Domain) نامیده می شود. در Web 
                            Application ها فضای میزبان و دامنه به صورت محلی و در یک شبکه ای که نیاز به 
                            اینترنت ندارد، و بر روی یک کامپیوتر تعریف می شود.<br />
                            <br />
                            &nbsp; <strong>۲-&nbsp;</strong> <strong>نرم افزار (برنامه) کاربردی یا Windows Application: </strong>
                            نرم افزاری است که بر روی یک کامپیوتر تنها و یا بر روی چندین کامپیوتر شبکه محلی 
                            به صورت مشتری خدمت گذار (Client-Server) نصب می شود.</span><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" >
                        
                        
                         <hr size="3px" style="width: 100%; background-color: #0000FF; " />  
                        </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEnterpriseName" ErrorMessage="نام شرکت/سازمان را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            شرکت/سازمان:<td align="right">
                    <asp:TextBox ID="txtEnterpriseName" runat="server" Width="150px" 
                        CssClass="InputControl" TabIndex="1" MaxLength="100" Height="20px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="drliEnterpriseCountry" 
                        ErrorMessage="کشور را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            کشور:</td>
                        <td  valign="top">
                    <asp:DropDownList ID="drliEnterpriseCountry" runat="server" 
                        Width="150px" TabIndex="2" CssClass="InputControl" Height="20px">
                        <asp:ListItem>ایران</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="drliEnterpriseState" 
                        ErrorMessage="استان را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            استان:</td>
                        <td  valign="top" align="left">
                    <asp:DropDownList ID="drliEnterpriseState" runat="server" 
                        Width="150px" TabIndex="3" CssClass="InputControl" Height="20px">
                        <asp:ListItem>&nbsp; آذربایجان&nbsp; شرقی</asp:ListItem>	
                        <asp:ListItem>&nbsp; آذربایجان&nbsp; غربی</asp:ListItem>	
                        <asp:ListItem>&nbsp;  اصفهان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  ایلام</asp:ListItem>	
                        <asp:ListItem>&nbsp;  تهران</asp:ListItem>	
                        <asp:ListItem>&nbsp; خراسان&nbsp; جنوبی</asp:ListItem>	
                        <asp:ListItem>&nbsp; خراسان&nbsp; رضوی</asp:ListItem>	
                        <asp:ListItem>&nbsp; خراسان&nbsp; شمالی</asp:ListItem>	
                        <asp:ListItem>&nbsp;  خوزستان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  زنجان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  سمنان</asp:ListItem>	
                        <asp:ListItem>&nbsp; سیستان&nbsp; وبلوچستان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  فارس</asp:ListItem>	
                        <asp:ListItem>&nbsp;  لرستان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  مازندران</asp:ListItem>	
                        <asp:ListItem>&nbsp;  مرکزئ</asp:ListItem>	
                        <asp:ListItem>&nbsp;  هرمزگان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  همدان</asp:ListItem>	
                        <asp:ListItem>&nbsp; چهارمحال&nbsp; وبختیارئ</asp:ListItem>	
                        <asp:ListItem>&nbsp;  کردستان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  کرمان</asp:ListItem>	
                        <asp:ListItem>&nbsp; کهگیلویه&nbsp; وبویراحمد</asp:ListItem>	
                        <asp:ListItem>&nbsp;  گلستان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  گیلان</asp:ListItem>	
                        <asp:ListItem>&nbsp;  یزد</asp:ListItem>	
                        <asp:ListItem> البرز</asp:ListItem>	

                    </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td   >
                            &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right"   >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEnterpriseCity" 
                        ErrorMessage="شهر (روستا) را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            شهر (روستا):</td>
                        <td  valign="top" align="right">
                    <asp:TextBox ID="txtEnterpriseCity" runat="server" Width="150px" 
                        CssClass="InputControl" TabIndex="4" MaxLength="100" Height="20px"></asp:TextBox>
                        </td>
                        <td>
                    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtEnterpriseEmail" ErrorMessage="ايميل را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                            ايميل:</td>
                        <td  valign="top">
                            
                                <asp:TextBox ID="txtEnterpriseEmail" runat="server" 
                        Width="150px" TabIndex="5" CssClass="InputControl" Height="20px"></asp:TextBox>
                    
                            </td>
                        <td>
                            وب سايت:</td>
                        <td  valign="top" align="left">
                    
                                <asp:TextBox ID="txtEnterpriseWebSite" runat="server" 
                        Width="150px" TabIndex="6" CssClass="InputControl" Height="20px"></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td   >
                            &nbsp;</td>
                        <td >
                            
                                &nbsp;</td>
                        <td >
                            
                                &nbsp;</td>
                        <td >
                            
                                &nbsp;</td>
                        <td >
                            
                                &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"   >
                            تلفن ثابت:</td>
                        <td align="right" valign="top" >
                            
                                <asp:TextBox ID="txtEnterprisePhone" runat="server" 
                        Width="150px" TabIndex="7" CssClass="InputControl" MaxLength="20" Height="20px"></asp:TextBox>
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                    
                        </td>
                        <td valign="top" >
                            
                            تلفن همراه:</td>
                        <td valign="top" >
                            
                                <asp:TextBox ID="txtEnterpriseCellPhone" runat="server" 
                        Width="150px" TabIndex="8" CssClass="InputControl" MaxLength="20" Height="20px"></asp:TextBox>
                    
                        </td>
                        <td valign="top" >
                            
                            آدرس: </td>
                        <td  align="left">
                            
                            
                    
                                <asp:TextBox ID="txtEnterpriseAddress" runat="server" 
                        Width="145px" TabIndex="9" CssClass="InputControlMultiLine" Height="28px" MaxLength="300" 
                                TextMode="MultiLine"></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"   >
                            &nbsp;</td>
                        <td align="right" valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                            &nbsp;</td>
                        <td valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                            &nbsp;</td>
                        <td  align="left">
                            
                            
                    
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"   >
                            نوع نرم افزار:</td>
                        <td align="right" valign="top" >
                            
                            <asp:RadioButton ID="RadioWebsite" runat="server" GroupName="1" 
                                Text="  وب سایت" />
&nbsp;
                            <asp:RadioButton ID="RadioApplication" runat="server" GroupName="1" 
                                Text="  برنامه کاربردی" />
                    
                        </td>
                        <td valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="drliEnterpriseTime" 
                        ErrorMessage="زمان پیشنهادی برای انجام پروژه وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                زمان پیشنهادی:</td>
                        <td  align="left">
                            
                    <asp:DropDownList ID="drliEnterpriseTime" runat="server" 
                        Width="150px" TabIndex="11" CssClass="InputControl" 
                                    ToolTip="زمان پیشنهادی برای انجام پروژه" Height="20px">
                        <asp:ListItem>یک ماه</asp:ListItem>
                        <asp:ListItem>دو ماه</asp:ListItem>
                        <asp:ListItem>سه ماه</asp:ListItem>
                        <asp:ListItem>چهار ماه</asp:ListItem>
                        <asp:ListItem>پنج ماه</asp:ListItem>
                        <asp:ListItem>شش ماه</asp:ListItem>
                        <asp:ListItem>هشت ماه</asp:ListItem>
                        <asp:ListItem>ده ماه</asp:ListItem>
                        <asp:ListItem>یک سال</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"   >
                            &nbsp;</td>
                        <td align="right" valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                                &nbsp;</td>
                        <td valign="top" >
                            
                            &nbsp;</td>
                        <td  align="left">
                            
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            &nbsp;</td>
                        <td align="right" >
                            
                            &nbsp;</td>
                        <td >
                            
                            &nbsp;</td>
                        <td >
                            
                            &nbsp;</td>
                        <td valign="top" >
                            
                            &nbsp;</td>
                        <td  align="left">
                            
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ادامه" 
                        Width="57px" onclick="btnSave_Click" TabIndex="20" CssClass="Button" />
                        </td>
                    </tr>

                    </table>
            
           
                   
             
           
                &nbsp;<!-------------------- Product ---------------------------><!--mobile-content--></div><!--Col1-->
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
