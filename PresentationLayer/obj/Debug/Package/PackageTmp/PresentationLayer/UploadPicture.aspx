<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadPicture.aspx.cs" Inherits="PresentationLayer.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">            

<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    
    
<link href="CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />    
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
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
<script type="text/javascript" src="js/fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.1.css" media="screen" />
<!--Slider Scrip Endt-->

<!--[if IE 8]>
<style type="text/css">
.table_wrap p.heading_3						{width:449px;}
</style>
<![endif]-->


<style>



    .style1
    {
        width: 95px;
    }



</style>


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
                  
                                     <li><a href="Main.aspx">
                                        <img src="images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                                    <li><a href="PublicPictureGalleries.aspx">
                        
                                        <img src="images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>

                                    <li><a href="DownloadSoftware.aspx">
                        
                                        <img src="images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>
                        
                                    <li><a href="">
                                        <img src="images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
                              
                                                                                
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
                    onclick="lbtnLogOut_Click"> (LogOut) خروج</asp:LinkButton>
         
                    /           

                          <asp:LinkButton CssClass="LinkButtonMy" ID="btnLoginPage" runat="server" CausesValidation="false"
                    onclick="btnLoginPage_Click">(Control Pannel) کنترل پانل</asp:LinkButton>
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>
        


<div class="four_equals">
            
            
            <table style="width: 100%">
                <tr>
                    <td align="left" valign="top">
                 <ul id="topnavleftMyStudent">
 
                     <li><a href="AddPictureGallery.aspx">آلبوم عکس</a></li>
                                         
                  </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">

       
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
      
                    </td>
                </tr>
            </table>
        
            
                
        </div>


       
        <div class="right_three">
             
        

        
         

          <table dir="rtl" align="right" class="TableMy">
            <tr>
                <td  align="center" colspan="5">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" colspan="5">
          
                 
          
                    <b>انتخاب عکس براي آلبوم</b></td>
            </tr>
            <tr>
                <td  align="right" colspan="5">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td  align="right" colspan="5">
          
                 
          
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy" 
                        Font-Names="Tahoma" Font-Size="10pt"></asp:Label>
    
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy" Font-Names="Tahoma" 
                        Font-Size="10pt"></asp:Label>
            
           
                   
             
           
                                <asp:Label ID="lblCurrentTeacherImageName" runat="server" Visible="False"></asp:Label>
                
                    </td>
            </tr>
            <tr>
                <td  align="center" colspan="5">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    انتخاب عکس:</td>
                <td >
                    <asp:FileUpload ID="FileUpLd" runat="server" Width="88%" 
                ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" TabIndex="1" 
                        CssClass="InputControl"/>
       
                </td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPictureTitle" Display="Dynamic" 
                        ErrorMessage="عنوان عکس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    عنوان عکس:</td>
                <td  align="left">
                    <asp:TextBox ID="txtPictureTitle" runat="server" Width="150px" MaxLength="50" 
                        CssClass="InputControl" Height="22px" TabIndex="2"></asp:TextBox>
       
                </td>
            </tr>
            <tr>
                <td  valign="top">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    تاريخ عکس:</td>
                <td >
                    <asp:TextBox ID="txtPictureDate" runat="server" Width="150px" TabIndex="3" 
                        MaxLength="20" CssClass="InputControl" Height="22px"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    ساعت:</td>
                <td  align="left">
                    <asp:TextBox ID="txtPictureTime" runat="server" Width="150px" TabIndex="4" 
                        MaxLength="20" CssClass="InputControl" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td  valign="top">
                    مکان:<br />
                </td>
                <td >
                    <asp:TextBox ID="txtPictureLocation" runat="server" Width="150px" 
                        TabIndex="5" MaxLength="50" 
                        CssClass="InputControlMultiLine" Height="39px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td valign="top" class="style1">
                    توضيحات:</td>
                <td  align="left">
                    <asp:TextBox ID="txtPictureDescription" runat="server" Width="150px" 
                        TabIndex="6" CssClass="InputControlMultiLine" Height="39px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  valign="top">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    نوع عکس: </td>
                <td >
                    <asp:TextBox ID="txtPictureType" runat="server" Width="150px" MaxLength="20" 
                        CssClass="InputControl" Height="22px" TabIndex="7"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    سطح دسترسي:</td>
                <td  align="left">
                    <asp:TextBox ID="txtPictureAccessLevel" runat="server" Width="150px" MaxLength="100" 
                        CssClass="InputControl" Height="22px" TabIndex="8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    اولويت نمايش:</td>
                <td >
                    <asp:TextBox ID="txtPicturePriority" runat="server" Width="150px" MaxLength="20" 
                        CssClass="InputControl" Height="22px" TabIndex="9"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td class="style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        EnableViewState="False" HeaderText="توجه !" ShowMessageBox="True" 
                        ShowSummary="False" Height="16px" Width="113px" />
                                            </td>
                <td  align="left">
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ذخيره" 
                        Width="50px" onclick="btnSave_Click" TabIndex="10" CssClass="Button" />
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style1">
                                </td>
                <td >
                    &nbsp;</td>
            </tr>
            </table>
           
       </div>

            <div id="footer" >
                    
                    <ul>
                        <li><a href="Main.aspx">صفحه اصلي</a></li>
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
