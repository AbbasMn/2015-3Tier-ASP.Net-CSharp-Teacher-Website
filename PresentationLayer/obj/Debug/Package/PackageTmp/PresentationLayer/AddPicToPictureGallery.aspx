<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPicToPictureGallery.aspx.cs" Inherits="PresentationLayer.AddPicToPictureGallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">            

<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    
    
<link href="CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />    
<script type="text/javascript" src="jsMy/jquery-1.4.2.min.js"></script>
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
        /*
        *   Examples - images
        */

        $("a.fancybox").fancybox({
            'titleShow': false,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic'
        });

    });



    function Submit1_onclick() {
        updateGallery();
        showGallerySpecification(GalleryPicID);
    }

    </script>
<script type="text/javascript" src="jsMy/fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="jsMy/fancybox/jquery.fancybox-1.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="jsMy/fancybox/jquery.fancybox-1.3.1.css" media="screen" />
<!--Slider Scrip Endt-->

<!--[if IE 8]>
<style type="text/css">
.table_wrap p.heading_3						{width:449px;}
</style>
<![endif]-->


<!--[if IE 7]>
<style type="text/css">
#contactForm{height:365px;}
form#contactForm .submit{margin-top:0px;}
ul#menu li ul li{margin-top:0px;}

        .style1
    {
        width: 146px;
    }

        </style>
<![endif]-->

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
                            <td width="40%" valign="top" align="left">
                       
        <asp:LinkButton CssClass="LinkButtonMy" ID="LinkButton1" runat="server" CausesValidation="false"
                    onclick="LinkButton1_Click1">آلبوم عکس</asp:LinkButton>
                    
                    /
                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>                   
                    / 
                    <asp:LinkButton CssClass="LinkButtonMy" ID="btnLoginPage" runat="server" CausesValidation="false"
                    onclick="btnLoginPage_Click">(Control Pannel) کنترل پانل</asp:LinkButton>
                            </td>



                            <td width="60%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>


       
        <div class="full_width" align="center">
        
                
                
                

        <p align="center">
            &nbsp;</p>

                        <table class="TableMy860Width" dir="rtl">
                            <tr>
                                <td align="right" class="style1" width="25%">
             
                                    <b>
                                    <asp:Button ID="Button2" runat="server" CssClass="Button" 
                                        onclick="Button2_Click" Text="مشاهده اسلايد عکس" Width="139px" />
                                    </b></td>
                                <td align="center" width="50%">
             
                                    <b>براي مشاهده عکسها در ابعاد بزرگتر، بر روي آنها کليک کنيد</b></td>
                                <td align="left" width="25%">
             
            <asp:Button ID="Button1" runat="server" CssClass="Button" 
                onclick="Button1_Click" Text="اضافه کردن عکس به آلبوم" Width="139px" />
        
        
                                    </td>
                            </tr>
                            </table>

        
        
        <ul class="Img-gallery main-wrap" style="margin-left: 17px">

            <asp:Repeater id="Repeater1" runat="server">
                
                <HeaderTemplate>
                </HeaderTemplate>        
            
                <ItemTemplate>
                                <li>
                                    <a href="UserUploadedPictures/<%#Eval("PictureName")%>" class="fancybox"><img src="UserUploadedPictures/<%#Eval("PictureName")%>" 
                                    width="255" height="240" alt="ImageGallery1" 
                                    title="عنوان عکس: <%#Eval("PictureTitle")%> - مکان عکس برداري: <%#Eval("PictureLocation")%> - تاريخ و ساعت عکس برداري: <%#Eval("PictureDate")%>-<%#Eval("PictureTime")%> - توضيحات : <%#Eval("PictureDescription")%>"/></a>
                                </li>
              </ItemTemplate>
              
              <FooterTemplate>

              </FooterTemplate>
               
            </asp:Repeater>
       </ul>
        
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
