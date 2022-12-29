<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSetStudentPermission.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AdminSetStudentPermission" %>

<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">            

<head id="Head1" runat="server">

    <meta charset="utf-8">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>


<!--  ************************************************************************************************ -->







<link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

 





    </head>
<body>
<form id="form1" runat="server">
<div id="contact"></div>
<div id="contentArea">
  <div class="contentBg">
  
    <div class="main_wrap headPos">
                <div class="head headPos">

                </div>
            </div>
    
    <div class="main_wrap">
    
      <div class="main_wrap_support">

      <table align="left" width="100%" style="margin-top: -200px" >
                        <tr>
                            <td align="left">
                                <a class="leftlogo"></a>
                                
                             </td>
                            
                            
                            <td align="center" valign="top">
                               <ul class="rightMenuMy">
                  
                         <li><a href="../../Main.aspx">
                            <img src="../../images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                        <li><a href="../../PublicPictureGalleries.aspx">
                        
                            <img src="../../images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>


                        <li><a href="../../DownloadSoftware.aspx">
                        
                            <img src="../../images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>


                        <li><a href="">
                            <img src="../../images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
 
                                                                                
                    </ul>  
                            </td>
                            
                            
                            <td align="right">
                                <a class="rightlogo"></a>
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td align="left" colspan="3">
                            <ul class="leftMenu">
                               <li><a>کارشناس و مشاور نظام مهندسي کامپيوتر </a>

                               </li>

                            </ul>
                            </td>
 
                        </tr>
                    </table>
      
                    <table class="breadcrumb  align="right"  style="margin-top: -18px">
                        <tr>
                            <td width="30%" valign="top" align="left">
                       
                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>
         
                    /           

                          <asp:LinkButton CssClass="LinkButtonMy" ID="btnLoginPage" runat="server" CausesValidation="false"
                    onclick="btnLoginPage_Click">(Control Pannel) کنترل پانل</asp:LinkButton>  
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>
                   
        <div class="full_with">
<table class="TableMy860Width" dir="rtl">
        <tr>
            <td align="right" valign="top" width="30%">
                                
                                
             
                                        <table dir="rtl" >
                                                <tr>
                                                    <td align="right" valign="top">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        &nbsp;</td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <asp:CheckBox ID="chbUniveersity" runat="server" Text="  نام دانشگاه: " />
                                                    </td>
                                                    <td align="right" valign="top">
                    <asp:DropDownList ID="drliStudentUniversity" runat="server" 
                        Width="170px" TabIndex="4" CssClass="InputControl">
                    </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <asp:CheckBox ID="chbBranch" runat="server" Text="  رشته تحصيلي:" />
                                                    </td>
                                                    <td align="right" valign="top">
                    <asp:DropDownList ID="drliUserStudentEducationBranchName" runat="server" 
                        Width="170px" TabIndex="16" CssClass="InputControl">
                    </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <asp:CheckBox ID="chbLevel" runat="server" Text="  مقطع:" />
                                                    </td>
                                                    <td align="right" valign="top">
                    <asp:DropDownList ID="drliUserStudentEducationLevel" runat="server" TabIndex="5" 
                        Width="170px" CssClass="InputControl">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                    </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ليست دانشجويان" 
                        Width="150px" onclick="btnSave_Click" TabIndex="16" CssClass="Button" />
                                                    </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td colspan="2">
                                                        <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                    </td>
                                                </tr>
                                                
                                                </table>
                                
             
                                </td>
 <td align="right" valign="top" width="25%" style="width: 70%">
                                
            
                                
                  
             
                <table width="100%">
                    <tr>
                        <td align="center">
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                    </tr>
                    <tr>
                        <td align="center">
            
           
                   
             
           
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                                            </table>
            
            
                                
                  
             
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="2" style="width: 75%">
                                
                                
             
                                        <b>ليست دانشجويان
                                        <br />
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" DataKeyNames="UserStudentRowID" 
                                            onrowcommand="GridView1_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="#000066" />
                            <Columns>
                                <asp:BoundField DataField="UserStudentUnivesityName" HeaderText="دانشگاه" />
                                <asp:BoundField DataField="UserStudentID" HeaderText="شماره دانشجويي">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
<asp:BoundField DataField="UserStudentLastName" HeaderText="نام خانوادگي">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="False" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:BoundField DataField="UserStudentName" 
                                    HeaderText="نام">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UserStudentEducationBranchName" HeaderText="رشته" />
                                <asp:BoundField DataField="UserStudentEducationLevel" HeaderText="مقطع" />
                                <asp:TemplateField HeaderText="Online">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chbIsOnline" runat="server" 
                                            Checked='<%# Eval("UserStudentOnline")%>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Blocked">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chbIsBlocked" runat="server" 
                                            Checked='<%# Eval("UserStudentBlocked")%>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UploadPic">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chbUploadPic" runat="server" 
                                            Checked='<%# Eval("UserStudentUploadPic")%>' Enabled="False"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="SoftLink">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chbSoftLink" runat="server" Checked='<%# Eval("UserStudentDeleted")%>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField CommandName="goToEdit" Text="دسترسي">
                                <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <EmptyDataTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EmptyDataTemplate>
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" 
                                Font-Size="8pt" ForeColor="White" Font-Names="Tahoma" />
                        </asp:GridView>
                                                        </b>
                                                    </td>
        </tr>
        </table>        
        </div>


       
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../Main.aspx">صفحه اصلي</a></li>
                        <li>|</li>
                        <li><a href="">تصاوير</a></li>
                        <li>|</li>
                        <li><a href="">ارتباط با ما</a></li>
                        <li>|</li>
                        <li><a href="">سازه هاي نرم افزاري</a></li>
                        <li>|</li>
                        <li><a href="">معماري نرم افزار</a></li>
                        <li>|</li>
                        <li><a href="">آموزش و تدريس خصوصي</a></li>
                        
                        
                    </ul>
                    <p>
                        Copyright © Software & Web Application Design By Abbas Montaseri - 2013
                </div>    
        
      </div>
     
      <div id="footerBelow" >
                   
       </div>    
  </div>
</div>
    </div>
    
 

   
    
</form>
    
    
    
</body>

</html>