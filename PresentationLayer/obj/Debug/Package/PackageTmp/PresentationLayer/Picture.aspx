<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Picture.aspx.cs" Inherits="PresentationLayer.Picture" %>

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
        /*
        *   Examples - images
        */

        $("a.fancybox").fancybox({
            'titleShow': false,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic'
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

    <style type="text/css">

        .style1
        {
            width: 146px;
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
                
                    <a class="leftlogo"></a>

                    
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
                    
                    <a class="rightlogo"></a>
                    
                    <ul class="leftMenu">
                        <li><a>کارشناس و مشاور نظام مهندسي کامپيوتر </a>
<%--                            <ul>
                                <li><a href="short-codes.html">Short-COdes</a></li>
                                <li>|</li>
                                <li><a href="left-column.html">Left Panel</a></li>
                                <li>|</li>
                                <li><a href="right-column.html">Right Panel</a></li>
                                <li>|</li>
                                <li><a href="3-columns.html">3 Column</a></li>
                                <li>|</li>
                                <li><a href="misc.html">Miscellaneous</a></li>
                                <li>|</li>
                                <li><a href="dynamic-tabs.html">Dynamic Tab's</a></li>
                                <li>|</li>
                                <li><a href="sliding-page.html">Sliding Page</a></li>
                            </ul>--%>
                        </li>
<%--                        <li><a href="#">تصاوير</a>
                            <ul>
                                <li><a href="gallery1.html">Gallery&nbsp;1</a></li>
                                <li>|</li>
                                <li><a href="gallery2.html">Gallery&nbsp;2</a></li>
                                <li>|</li>
                                <li><a href="gallery3.html">Gallery&nbsp;3</a></li>
                            </ul>
                        </li>--%>
<%--                        <li><a href="#">معماري نرم افزار</a>
                            <ul>
                                <li><a href="blog.html">Blog Page</a></li>
                                <li>|</li>
                                <li><a href="blog-post-view.html">Blog Post View</a></li>
                            </ul>
                        </li>--%>
                    </ul>
                </div>
            </div>
    <div class="main_wrap">
      <div class="main_wrap_support">
      
      <div class="full_width">
        <p class="breadcrumb"><a href="index-2.html">صفحه اصلي</a> / <a href="devtodo.html">Category</a> / <strong class="active-link">Page Title</strong></p>
       

       <p align="center">&nbsp;</p>
       <p align="center">&nbsp;</p>
    
    
    
        <table align="center" Class="TableMy">
                        <tr>
                            <td align="right">
                                عنوان آلبوم عکس:
                            </td>
                            <td align="right">
                                <asp:Label ID="lblGalleryPicTitle" runat="server" Font-Names="Tahoma" 
                                    Font-Size="10pt" CssClass="LableMy" Text="Label"></asp:Label>
                            </td>
                            <td align="right">
                                تاريخ و ساعت آلبوم عکس:
                            </td>
                            <td align="right">
                                <asp:Label ID="lblGalleryPicDateTime" runat="server" Font-Names="Tahoma" 
                                    Font-Size="10pt" CssClass="LableMy" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                مکان عکس برداري:
                            </td>
                            <td align="right">
                                <asp:Label ID="lblGalleryPicLocation" runat="server" Font-Names="Tahoma" 
                                    Font-Size="10pt" CssClass="LableMy" Text="Label"></asp:Label>
                            </td>
                            <td align="right">
                                شماره آلبوم عکس:
                            </td>
                            <td align="right">
                                <asp:Label ID="lblGalleryPicId" runat="server" Font-Names="Tahoma" 
                                    Font-Size="10pt" CssClass="LableMy" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                توضيحات آلبوم عکس:</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="3">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="3">
                                <asp:Label ID="lblGalleryPicDescription" runat="server" Font-Names="Tahoma" 
                                    Font-Size="10pt" CssClass="LableMy" Text="Label"></asp:Label>
                            </td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                    </table>
                    
        <ul class="Img-gallery main-wrap">

            <asp:Repeater id="Repeater1" runat="server">
                
                <HeaderTemplate>
                </HeaderTemplate>        
            
                <ItemTemplate>
                                <li>
                                    <a href="UserUploadedPictures/<%#Eval("PictureName")%>" class="fancybox"><img src="UserUploadedPictures/<%#Eval("PictureName")%>" 
                                    width="300" height="160" alt="ImageGallery1" 
                                    title="عنوان عکس: <%#Eval("PictureTitle")%> - مکان عکس برداري: <%#Eval("PictureLocation")%> - تاريخ و ساعت عکس برداري: <%#Eval("PictureDate")%>-<%#Eval("PictureTime")%> - توضيحات : <%#Eval("PictureDescription")%>"/></a>
                                </li>
              </ItemTemplate>
              
              <FooterTemplate>

              </FooterTemplate>
               
            </asp:Repeater>
         </ul>
                    
         
        
      
      <div id="footer">
                    <a class="footerlogoLeft"></a>
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
    </div>
  </div>
</div>
</form>
</body>

</html>
