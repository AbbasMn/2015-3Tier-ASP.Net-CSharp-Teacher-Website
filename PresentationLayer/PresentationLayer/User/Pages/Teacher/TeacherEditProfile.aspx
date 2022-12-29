<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherEditProfile.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherEditProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    <link href="../../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="../../../jsMy/jquery-1.4.2.min.js"></script>


<script type="text/javascript">
    $(document).ready(function () {

        $("#topnavrightMy li").prepend("<span></span>"); //Throws an empty span tag right before the a tag

        $("#topnavrightMy li").each(function () { //For each list item...
            var linkText = $(this).find("a").html(); //Find the text inside of the <a> tag
            $(this).find("span").show().html(linkText); //Add the text in the <span> tag
        });

        $("#topnavrightMy li").hover(function () {	//On hover...
            $(this).find("span").stop().animate({
                marginTop: "-40" //Find the <span> tag and move it up 40 pixels
            }, 250);
        }, function () { //On hover out...
            $(this).find("span").stop().animate({
                marginTop: "0"  //Move the <span> back to its original state (0px)
            }, 250);
        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {

        $("#topnavleftMyStudent li").prepend("<span></span>"); //Throws an empty span tag right before the a tag

        $("#topnavleftMyStudent li").each(function () { //For each list item...
            var linkText = $(this).find("a").html(); //Find the text inside of the <a> tag
            $(this).find("span").show().html(linkText); //Add the text in the <span> tag
        });

        $("#topnavleftMyStudent li").hover(function () {	//On hover...
            $(this).find("span").stop().animate({
                marginTop: "-40" //Find the <span> tag and move it up 40 pixels
            }, 250);
        }, function () { //On hover out...
            $(this).find("span").stop().animate({
                marginTop: "0"  //Move the <span> back to its original state (0px)
            }, 250);
        });

    });
</script>


<script type="text/javascript">

    $(document).ready(function () {

        $('.leftMenu li').hover(
		function () {
		    //show its submenu
		    $('ul', this).show();

		},
		function () {
		    //hide its submenu
		    $('ul', this).hide();
		}
	);

    });
</script>









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
                  
                                     <li><a href="../../../Main.aspx">
                                        <img src="../../../images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                                    <li><a href="../../../PublicPictureGalleries.aspx">
                        
                                        <img src="../../../images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>

                                    <li><a href="../../../DownloadSoftware.aspx">
                        
                                        <img src="../../../images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>
                        
                                    <li><a href="">
                                        <img src="../../../images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
                              
                                                                                
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
 
        <!-- Middle Column -->
               
        <div class="ful-with">
      
           

                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" 
                align="center" style="width: 99.5%">
                    <tr>
                        <td colspan="6" align="center">
          
                 

            
           
                   
             
           
                            
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
          
                 
          
               <asp:Label ID="lblCurrentTeacherImageName" runat="server" Text="Label" 
                                Visible="False"></asp:Label>    
             
           

           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           

           <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
                            <b>&nbsp;ويرايش مشخصات</b></td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                    </tr>
                                            <tr>
                        <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUserTeacherName" ErrorMessage="نام استاد را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام:    
                                                <td valign="top" class="style2">
                                                    &nbsp;</td>
                        <td class="style3" valign="top">
                    <asp:TextBox ID="txtUserTeacherName" runat="server" Width="170px" 
                        CssClass="InputControl" MaxLength="30" TabIndex="1" Height="22px"></asp:TextBox>
                                                </td>
                        <td class="" valign="top" align="left">
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtUserTeacherLastName" 
                        ErrorMessage="نام خانوادگي استاد را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام خانوادگی:</td>
                        <td align="left">
                    <asp:TextBox ID="txtUserTeacherLastName" runat="server" Width="170px" TabIndex="2" 
                        CssClass="InputControl" MaxLength="30" Height="22px"></asp:TextBox>
                                                </td>

                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td class="style2" valign="top">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                            &nbsp;</td>
                        <td class="" valign="top">
                            &nbsp;</td>
                                                  <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtUserTeacherID" 
                        ErrorMessage="شماره استاد را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            شماره استاد:</td>
                        <td class="style2" valign="top">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                    <asp:TextBox ID="txtUserTeacherID" runat="server" Width="170px" TabIndex="3" 
                        CssClass="InputControl" MaxLength="4" Height="22px"></asp:TextBox>
                        </td>
                        <td valign="top" align="left">
                            &nbsp;</td>
                                              <td>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="drliUserTeacherSpecialty" 
                        ErrorMessage="رشته تحصيلي را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            رشته تحصيلي:</td>
                        <td align="left">
                    <asp:DropDownList ID="drliUserTeacherSpecialty" runat="server" 
                        Width="170px" TabIndex="4" CssClass="InputControl" Height="22px">
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td class="style2" valign="top">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                            &nbsp;</td>
                        <td valign="top" align="left">
                            &nbsp;</td>
                                                  <td></td>
                        <td></td>
                    <tr>
                        <td>
                            </td>
                        <td class="style1" valign="top">
                            </td>
                        <td valign="top">
                            </td>
                        <td valign="top">
                            </td>
                                                  <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="drliUserTeacherFinalEducationLevel" 
                        ErrorMessage="آخرين مدرک تحصيلي استاد را وارد نماييد" Display="Dynamic">*</asp:RequiredFieldValidator>
                            آخرين مدرک نحصيلي:</td>
                        <td class="style2" valign="top">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                    <asp:DropDownList ID="drliUserTeacherFinalEducationLevel" runat="server" TabIndex="5" 
                        Width="170px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="" valign="top" align="left">

                                

                                </td>
                                                      <td>جنسيت:</td>
                        <td align="center">
                        <table align="center">
                                    <tr valign="top">
                                        <td class="">
                                            <asp:RadioButton ID="rdioUserTeacherSexMale" runat="server" Checked="True" 
                                                Font-Size="Small" GroupName="Gender" Height="22px" TabIndex="6" Text="آقا  " 
                                                TextAlign="Left" Width="44px" />
                                        </td>
                                        <td class="" valign="top" align="center">
                                            <asp:RadioButton ID="rdioUserTeacherSexFemale" runat="server" Font-Size="Small" 
                                                GroupName="Gender" Height="22px" style="height: 20px" TabIndex="7" 
                                                Text=" خانم  " TextAlign="Left" ValidationGroup=" " Width="56px" />
                                        </td>
                                    </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                            &nbsp;</td>
                        <td class="" valign="top">
                            &nbsp;</td>
                                                  <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtUserTeacherUserName" 
                        ErrorMessage="نام کاربري را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام کاربري:</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                    <asp:TextBox ID="txtUserTeacherUserName" runat="server" Width="170px" TabIndex="8" 
                        CssClass="InputControl" MaxLength="20" Height="22px"></asp:TextBox>
                        </td>
                        <td class="" align="left">
                    
                            
                    
                            &nbsp;</td>
                                              <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtUserTeacherPassword" 
                        ErrorMessage="کلمه عبور را وارد نماييد" Display="Dynamic" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            کلمه عبور:</td>
                        <td align="left">
                    
                            
                    
                    <asp:TextBox ID="txtUserTeacherPassword" runat="server" Width="170px" TabIndex="9" 
                        CssClass="InputControl" MaxLength="20" TextMode="Password" Height="22px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="">
                            &nbsp;</td>
                                                  <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="">
                            &nbsp;</td>
                                                  <td></td>
                        <td></td>
                    </tr>
                    </tr>
                    <tr>
                        <td >
                                                                        <asp:Image ID="imgTeacherImage" 
                                runat="server" Height="88px" 
                                                                        style="margin-right: 0px" 
                                Width="102px" BorderColor="White" 
                                                                        BorderStyle="Outset" 
                                BorderWidth="1px" />
                                             
                                                                </td>
                        <td >
                            &nbsp;</td>
                        <td valign="middle" >
                    
                            
                    
                                           <asp:FileUpload ID="FileUpLd" runat="server" Width="170px" 
                                            ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" Height="20px" />
                                           <br />
                                           <br />
                                           <asp:CheckBox ID="chbDefaultPic" runat="server" Text="  حدف کامل عکس کاربري" />
                        </td>
                        <td >
                    
                            
                    
                            &nbsp;</td>
                        <td valign="top" >
                    
                            
                    
                            آدرس سکونت:                
                        </td>
                        <td align="left" valign="top" >
                    
                            
                    
                                <asp:TextBox ID="txtUserTeacherAddress" runat="server" 
                        Width="161px" TabIndex="10" CssClass="InputControlMultiLine" Height="53px" MaxLength="300" 
                                TextMode="MultiLine"></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  valign="top">
                            وب سايت:<td  valign="top">
                            &nbsp;<td  
                            valign="top">
                    
                            
                    
                                <asp:TextBox ID="txtUserTeacherWebSite" runat="server" 
                        Width="170px" TabIndex="13" CssClass="InputControl" MaxLength="100" Height="22px"></asp:TextBox>
                    
                        </td>
                        <td  
                            valign="top">
                    
                            
                    
                                &nbsp;</td>
                        <td  valign="top">
                    
                            
                    
                            محل کار:</td>
                        <td  align="left" valign="top">
                            
                                <asp:TextBox ID="txtUserTeacherOfficeName" runat="server" 
                        Width="161px" TabIndex="11" CssClass="InputControlMultiLine" Height="53px" MaxLength="100" 
                                    TextMode="MultiLine"></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td  valign="top">
                            &nbsp;<td  valign="top">
                            &nbsp;<td  valign="top">
                    
                            
                    
                                &nbsp;</td>
                        <td  valign="top">
                    
                            
                    
                                &nbsp;</td>
                        <td  valign="top">
                    
                            
                    
                                &nbsp;</td>
                        <td  valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtUserTeacherEmail" ErrorMessage="ايميل را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                            ايميل:</td>
                        <td >
                            &nbsp;</td>
                        <td >
                    
                                <asp:TextBox ID="txtUserTeacherEmail" runat="server" 
                        Width="170px" TabIndex="12" CssClass="InputControl" MaxLength="50" Height="22px"></asp:TextBox>
                    
                        </td>
                        <td >
                    
                                &nbsp;</td>
                        <td >
                    
                            تلفن همراه:</td>
                        <td align="left" >
                            
                                <asp:TextBox ID="txtUserTeacherCellPhone" runat="server" 
                        Width="170px" TabIndex="15" CssClass="InputControl" MaxLength="20" Height="22px"></asp:TextBox>
                    
                            </td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            تلفن ثابت:</td>
                        <td >
                            &nbsp;</td>
                        <td >
                            
                                <asp:TextBox ID="txtUserTeacherPhone" runat="server" 
                        Width="170px" TabIndex="14" CssClass="InputControl" MaxLength="20" Height="22px"></asp:TextBox>
                    
                        </td>
                        <td >
                            
                                &nbsp;</td>
                        <td >
                            
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td  align="left">
                            
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ويرايش" 
                        Width="57px" onclick="btnSave_Click" TabIndex="17" CssClass="Button" />
                    
                        </td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                    </tr>
                    </table>
            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../../Main.aspx">صفحه اصلي../../Main.aspx">صفحه اصلي</a></li>
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
