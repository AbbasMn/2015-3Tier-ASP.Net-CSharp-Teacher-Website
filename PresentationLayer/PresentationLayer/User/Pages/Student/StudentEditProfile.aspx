<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentEditProfile.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentEditProfile" %>



<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
        
    <link rel="Stylesheet" type="text/css" href="../../../css/StyleMain.css" />
    
    <link href="../../../CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   

    

<!------------------------------JQUERY---------------------------------------------->
<!------------------------------PopUp---------------------------------------------->
<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.reveal.js"></script>

<!------------------------------Game_slider---------------------------------------------->
<script type="text/javascript" src="../../../js/Game_slider.js"></script>

<!------------------------------Top-Scroll---------------------------------------------->
<script type="text/javascript" src="../../../js/Top-Scroll.js"></script>





    





    <style type="text/css">
        .style1
        {
            width: 187px;
        }
        .style2
        {
            width: 159px;
        }
        .style3
        {
            width: 105px;
        }
        .style4
        {
            width: 20px;
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
      
   <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>

                <table Class="TableMy" align="right" dir="ltr">
                    <tr>
                        <td colspan="4" align="center">
                            <b>ويرايش مشخصات</b></td>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4" >
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                            <asp:Label ID="lblCurrentStudentImageName" runat="server" Text="Label" 
                                Visible="False"></asp:Label>
            
           
                   
             
           
                              </td>
                        <td align="center" >
          
                 
          
                            </td>
                    </tr>
                    <tr>
                        <td class="style1" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUserStudentName" ErrorMessage="نام را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام:    
                            <td  valign="top" class="style2">
                                
                            <asp:TextBox ID="txtUserStudentName" Runat="server"  
                                  TabIndex="2" 
                        CssClass="InputControl" MaxLength="30">
                            </asp:TextBox>
                        </td>
                        <td  valign="top" class="style3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtUserStudentLastName" 
                        ErrorMessage="نام خانوادگي را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام خانوادگی:</td>
                        <td  valign="top" align="left" class="style4">
                            <asp:TextBox ID="txtUserStudentLastName" Runat="server"  
                                CssClass="InputControl" MaxLength="20" 
                                >
                            </asp:TextBox>
                            </td>
                        <td  valign="top" align="left" class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td  valign="top" class="style2">
                            </td>
                        <td  valign="top" class="style3">
                            </td>
                        <td  valign="top" class="style4">
                            </td>
                        <td  valign="top" class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtUserStudentID" 
                        ErrorMessage="شماره دانشجويي را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            شماره دانشجويي (ارقام 0 تا 9):</td>
                        <td  valign="top" class="style2">
                            <asp:TextBox ID="txtUserStudentID" runat="server"  TabIndex="3" 
                        CssClass="InputControl" MaxLength="9" 
                                >
                            </asp:TextBox>
                        </td>
                        <td  valign="top" class="style3">
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="drliStudentUniversity" 
                        ErrorMessage="نام دانشگاه را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام دانشگاه:</td>
                        <td  valign="top" align="left" class="style4">
                            <asp:DropDownList ID="drliStudentUniversity" Runat="server" 
                                  CssClass="InputControl" 
                                   NoWrap="True" 
                                >
                            </asp:DropDownList>
                        </td>
                        <td  valign="top" align="left" class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                            </td>
                        <td class="style3" >
                            </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="drliUserStudentEducationBranchName" 
                        ErrorMessage="رشته تحصيلي را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            رشته تحصيلي:</td>
                        <td align="right" dir="ltr" class="style2" >

                    <asp:DropDownList ID="drliUserStudentEducationBranchName" Runat="server" 
                                  CssClass="InputControl" 
                                   NoWrap="True" 
                                >
                    </asp:DropDownList>
                        </td>
                        <td class="style3" >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="drliUserStudentEducationLevel" 
                        ErrorMessage="مقطع را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            مقطع:</td>
                        <td  align="left" class="style4">
                            <asp:DropDownList ID="drliUserStudentEducationLevel" Runat="server" 
                                  CssClass="InputControl" 
                                   NoWrap="True" 
                                >
                                <Items>
                                    <asp:ListItem runat="server" Text="کارداني" 
                                        Value="کارداني" Owner="drliUserStudentEducationLevel" />

                                    <asp:ListItem runat="server" Text="کارشناسي" 
                                        Value="کارشناسي" Owner="drliUserStudentEducationLevel" />
                                        
                                    <asp:ListItem runat="server" Text="کارشناسي ارشد" 
                                        Value="کارشناسي ارشد" Owner="drliUserStudentEducationLevel" /> 
                                        
                                    <asp:ListItem runat="server" Text="دکتري" 
                                        Value="دکتري" Owner="drliUserStudentEducationLevel" />                                                                                
 </Items>
                            </asp:DropDownList>



                        </td>
                        <td  align="left" class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  dir="rtl" class="style1">
                            </td>
                        <td class="style2" >
                            </td>
                        <td class="style3" >
                            </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            جنسيت:</td>
                        <td  align="center" class="style2">
                    <table style="width: 70%" align="right">
                        <tr valign="top">
                            <td class="">
                                <asp:RadioButton ID="rdioUserStudentSexMale" runat="server" Font-Size="Small" 
                                    GroupName="Gender" Text="مرد  " TextAlign="Left" Width="44px" TabIndex="6" 
                                    Checked="True" />
                            </td>
                            <td 
                                valign="top" class="">
                                <asp:RadioButton ID="rdioUserStudentSexFemale" runat="server" Font-Size="Small" 
                                    GroupName="Gender" Text="زن  " TextAlign="Left" Width="56px" 
                                    TabIndex="7" style="height: 20px" />
                            </td>
                        </tr>
                    </table>
                        </td>
                        <td class="style3" >
                            تخصص (ها):</td>
                        <td  align="left" class="style4">
                    
                                <asp:TextBox ID="txtUserStudentSpecialty" runat="server" 
                         TabIndex="8" MaxLength="30" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                        <td  align="left" class="style4">
                    
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                    
                                </td>
                        <td class="style3" >
                    
                                </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtUserStudentUserName" 
                        ErrorMessage="نام کاربري را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام کاربري:</td>
                        <td class="style2" >
                    <asp:TextBox ID="txtUserStudentUserName" runat="server"  TabIndex="9" 
                        CssClass="InputControl" MaxLength="20" 
                                ></asp:TextBox>
                        </td>
                        <td class="style3" >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtUserStudentPassword" 
                        ErrorMessage="کلمه عبور را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            کلمه عبور:</td>
                        <td  align="left" class="style4">
                    
                            
                    
                    <asp:TextBox ID="txtUserStudentPassword" runat="server"  TabIndex="10" 
                        CssClass="InputControl" MaxLength="20" 
                                TextMode="Password" ></asp:TextBox>
                            </td>
                        <td  align="left" class="style4">
                    
                            
                    
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                    
                            
                    
                            </td>
                        <td class="style3" >
                    
                            
                    
                            </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                                                                        <asp:Image ID="imgStudentImage" 
                                runat="server" Height="88px" 
                                                                        style="margin-right: 0px" 
                                Width="102px" BorderColor="White" 
                                                                        BorderStyle="Outset" 
                                BorderWidth="1px" />
                                             
                                                                </td>
                        <td valign="middle" class="style2" >
                    
                            
                    
                                           <asp:FileUpload ID="FileUpLd" runat="server"  
                                            ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" Height="20px" />
                                           <br />
                                           <br />
                                           <asp:CheckBox ID="chbDefaultPic" runat="server" Text="  حدف کامل عکس کاربري" />
                        </td>
                        <td valign="top" class="style3" >
                    
                            
                    
                            آدرس سکونت:                
                        </td>
                        <td align="left" valign="top" class="style4" >
                    
                            
                    
                                <asp:TextBox ID="txtUserStudentAddress" runat="server" 
                         TabIndex="11" CssClass="InputControlMultiLine" Height="88px" MaxLength="300" 
                                TextMode="MultiLine" ></asp:TextBox>
                    
                        </td>
                        <td align="left" valign="top" class="style4" >
                    
                            
                    
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                    
                            
                    
                            </td>
                        <td class="style3" >
                    
                            
                    
                            </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  valign="top" class="style1">
                            وب سايت:<td  
                            valign="top" class="style2">
                    
                            
                    
                                <asp:TextBox ID="txtUserStudentWebSite" runat="server" 
                         TabIndex="12" MaxLength="100" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                        <td  valign="top" class="style3">
                    
                            
                    
                            محل کار:</td>
                        <td  align="left" valign="top" class="style4">
                            
                                <asp:TextBox ID="txtUserStudentOfficeName" runat="server" 
                         TabIndex="14" CssClass="InputControlMultiLine" Height="76px" MaxLength="100" 
                                    TextMode="MultiLine" ></asp:TextBox>
                    
                        </td>
                        <td  align="left" valign="top" class="style4">
                            
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td  valign="top" class="style1">
                            <td  valign="top" class="style2">
                    
                            
                    
                                </td>
                        <td  valign="top" class="style3">
                    
                            
                    
                                </td>
                        <td  valign="top" class="style4">
                            </td>
                        <td  valign="top" class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtUserStudentLastName" ErrorMessage="ايميل را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                            ايميل:</td>
                        <td class="style2" >
                    
                                <asp:TextBox ID="txtUserStudentEmail" runat="server" 
                         TabIndex="13" CssClass="InputControl"
                                    MaxLength="50" ></asp:TextBox>
                    
                        </td>
                        <td class="style3" >
                    
                            تلفن همراه:</td>
                        <td align="left" class="style4" >
                            
                                <asp:TextBox ID="txtUserStudentCellPhone" runat="server" 
                         TabIndex="16" MaxLength="20" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                            </td>
                        <td align="left" class="style4" >
                            
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                            
                                </td>
                        <td class="style3" >
                            
                                </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                            
                                </td>
                        <td class="style3" >
                            
                                </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            تلفن ثابت:</td>
                        <td class="style2" >
                            
                                <asp:TextBox ID="txtUserStudentPhone" runat="server" 
                         TabIndex="15" MaxLength="20" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                        <td class="style3" >
                            
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td  align="left" class="style4">
                            
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ويرايش" 
                         onclick="btnSave_Click" TabIndex="17" CssClass="Button" />
                    
                        </td>
                        <td  align="left" class="style4">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style2" >
                            
                                </td>
                        <td class="style3" >
                            
                                </td>
                        <td class="style4" >
                            </td>
                        <td class="style4" >
                            &nbsp;</td>
                    </tr>
                    </table>
            
           
                   
             
           
        &nbsp;&nbsp;<!-------------------- Product ---------------------------><!--mobile-content--><div class="clear"></div>
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

    
           <img src="../../../pic/Icon/s-flash5.gif">
            <asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled"  ></asp:LinkButton>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000"  ></asp:LinkButton>
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

