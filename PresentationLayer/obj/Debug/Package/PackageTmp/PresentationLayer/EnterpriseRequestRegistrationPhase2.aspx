<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MP.Master"  CodeBehind="EnterpriseRequestRegistrationPhase2.aspx.cs" Inherits="PresentationLayer.EnterpriseRequestRegistrationPhase2" %>

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
      
   
                <table Class="TableMy" align="center">
                    <tr>
                        <td align="center">
                            <b>مرحله دوم: ثبت مشخصات وب سایت و نرم افزار کاربردی</b></td>
                    </tr>
                    <tr>
                        <td align="center">
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <strong>نکات مهم:</strong> <span >
                            <br />
                            <strong> ۱- حجم فضا یا Host:</strong> با توجه به نوع وب سایت 
                            حجم فضای میزبان قابل انتخاب و خریداری است. فضای ۵۰۰ مگابایت برای انواع وب سایت 
                            ها مناسب است. در صورت نیاز می توان این فضا را افزایش داد.<br />
                            <br />
                             <strong>۲- نوع سکو یا plan: </strong>با توجه به نوع سیستم عامل 
                            windows و یا Linux انتخاب می شود. برای سایتهای طراحی شده با ASP.NET سکوی Windows 
                            باید انتخاب گردد.</span></td>
                    </tr>
                    <tr>
                        <td >
                        
                        
                         <hr size="3px" style="width: 100%; background-color: #0000FF; " />  
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top"   >
                <asp:Panel ID="PanelWebSite" runat="server">

                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" 
                align="center" style="width: 99.5%">
                    
                    <tr>
                        <td align="right"   >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="drliEnterpriseWebsiteType" 
                        ErrorMessage="نوع وب سایت را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نوع وب سایت:</td>
                        <td align="right" valign="top" >
                            
                    <asp:DropDownList ID="drliEnterpriseWebsiteType" runat="server" 
                        Width="150px" TabIndex="12" CssClass="InputControl" Height="20px">
                        <asp:ListItem>تجاری</asp:ListItem>
                        <asp:ListItem>خبری</asp:ListItem>
                        <asp:ListItem>شخصی</asp:ListItem>
                        <asp:ListItem>سازمانی</asp:ListItem>
                        <asp:ListItem>فروشگاهی</asp:ListItem>
                        <asp:ListItem>تبلیغاتی</asp:ListItem>
                    </asp:DropDownList>
                    
                        </td>
                        <td >
                            
                                نوع دامنه (Domain):</td>
                        <td valign="top" >
                            
                    <asp:DropDownList ID="drliEnterpriseWebsiteDomainType" runat="server" 
                        Width="150px" TabIndex="13" CssClass="InputControl" Height="20px">
                        <asp:ListItem>com.</asp:ListItem>
                        <asp:ListItem>ir.</asp:ListItem>
                        <asp:ListItem>net.</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td >
                            
                            حجم فضا (Host):</td>
                        <td  align="left">
                            
                    <asp:DropDownList ID="drliEnterpriseWebsiteHostValue" runat="server" 
                        Width="150px" TabIndex="14" CssClass="InputControl" Height="20px">
                        <asp:ListItem>۲۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem>۳۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem>۴۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem>۵۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem>۷۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem>۹۰۰ مگابایت</asp:ListItem>
                        <asp:ListItem Value="۱ گیگابایت">۱ گیگابایت</asp:ListItem>
                        <asp:ListItem>بیشتر از ۱ گیگابایت</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" >
                        </td>
                        <td align="right"  valign="top">
                        </td>
                        <td >
                        </td>
                        <td  valign="top">
                        </td>
                        <td >
                        </td>
                        <td align="left" >
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right" valign="top">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td   >
                            نوع سکو (Plan):</td>
                        <td >
                            
                    <asp:DropDownList ID="drliEnterpriseWebsitePlan" runat="server" 
                        Width="150px" TabIndex="15" CssClass="InputControl" Height="20px">
                        <asp:ListItem>ویندوز</asp:ListItem>
                    </asp:DropDownList>
                    
                        </td>
                        <td >
                            
                                دامنه موردنظر 1:</td>
                        <td >
                            
                    <asp:TextBox ID="txtEnterpriseWebsiteDomainName1" runat="server" Width="150px" 
                        CssClass="InputControl" TabIndex="16" MaxLength="50" Height="20px"></asp:TextBox>
                        </td>
                        <td >
                            
                                دامنه موردنظر 2:</td>
                        <td align="left" >
                    <asp:TextBox ID="txtEnterpriseWebsiteDomainName2" runat="server" Width="150px" 
                        CssClass="InputControl" TabIndex="17" MaxLength="50" Height="20px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td   >
                            دامنه موردنظر 3:</td>
                        <td >
                            
                    <asp:TextBox ID="txtEnterpriseWebsiteDomainName3" runat="server" Width="150px" 
                        CssClass="InputControl" TabIndex="18" MaxLength="50" Height="20px"></asp:TextBox>
                        </td>
                        <td >
                            
                                </td>
                        <td >
                            
                                </td>
                        <td >
                            
                                </td>
                        <td align="left" >
                            <asp:Button ID="btnNextPhase" runat="server" CssClass="Button" 
                                onclick="btnNextPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="ادامه" Width="57px" />
                            <asp:Button ID="btnLastPhase" runat="server" CssClass="Button" 
                                onclick="btnLastPhase_Click" style="margin-right: 0px" TabIndex="20" 
                                Text="مرحله قبل" Width="57px" />
                        </td>
                    </tr>

                </table>
                </asp:Panel>
            
           
                   
             
           
                            <br />
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

