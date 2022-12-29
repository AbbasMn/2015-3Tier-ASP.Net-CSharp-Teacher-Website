<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessagePage.aspx.cs" Inherits="PresentationLayer.MessagePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    <link href="CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>


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







 <style>
             .style1
        {
            color: #0000FF;
        }
  blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          @-webkit-keyframes  blink { to { visibility: hidden; } }
           @-moz-keyframes blink { to { visibility: hidden; } } 
           @-o-keyframes blink { to { visibility: hidden; } } 
           @keyframes blink { to { visibility: hidden; } }
 </style>









    </head>
<body>
<form id="form1" runat="server">


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
                            <td width="80%" valign="top" align="left">
                       
                                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>

                        <asp:Label ID="lbl2" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="btnControlPanel" runat="server" CausesValidation="false"
                    onclick="btnControlPanel_Click">(Control Pannel) کنترل پانل</asp:LinkButton><asp:Label 
                                    ID="lbl3" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogMainPage" runat="server" CausesValidation="false" onclick="lbtnLogMainPage_Click"
                    >(Home) صفحه اصلي</asp:LinkButton>&nbsp;<asp:Label ID="lbl1" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogIn" runat="server" CausesValidation="false"
                            OnClick="lbtnLogIn_Click">(LogIn) ورود</asp:LinkButton> 
                            </td>



                            <td width="20%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>
 
        <!-- Middle Column -->
               
        <div class="ful-with">
      
   
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" 
                align="center" style="width: 99.5%">
                    <tr>
                        <td align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
          
                 
          
             
           
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
          
                 
          
             
           
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                Font-Size="9pt">متن پیام</asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style1">
                            <strong>
                            <blink><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" 
                                NavigateUrl="Main.aspx">بازگشت به صفحه ی عملیات انجام گرفته</asp:HyperLink></blink>
                            </strong></td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td align="center">
                            <strong><span class="style1">پس از چند ثانیه به کنترل پانل کاربر 
                            ناوبری خواهید شد</span></strong></td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                        
                                <asp:ScriptManager ID="ScriptManager1" runat="server" 
                                    AsyncPostBackTimeout="0" />
        <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="10000" />

        <asp:UpdatePanel ID="Message" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" />
        </Triggers>
        <ContentTemplate>


        </ContentTemplate>
        </asp:UpdatePanel>
                        
                        </td>
                    </tr>

                    <tr>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    </table>
            

                   
             
           
        </div>
        
         <!-- Middle Column -->
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
