<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublicPictureGalleries.aspx.cs" Inherits="PresentationLayer.PublicPictureGalleries" %>

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



    function Submit1_onclick() {
        updateGallery();
        showGallerySpecification(GalleryPicID);
    }

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
                            <td width="30%" valign="top" align="left">
                       
                                 <asp:LinkButton CssClass="LinkButtonMy" ID="lbtLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>

                        &nbsp;<asp:Label ID="lbl2" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="btnControlPanel" runat="server" CausesValidation="false"
                    onclick="btnControlPanel_Click">(Control Pannel) کنترل پانل</asp:LinkButton><asp:LinkButton CssClass="LinkButtonMy" ID="lblStudentRegistration" runat="server"
                            CausesValidation="false" OnClick="btnStudentRegistration_Click"> عضويت در سايت </asp:LinkButton>&nbsp;<asp:Label ID="lbl1" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogIn" runat="server" CausesValidation="false"
                            OnClick="lbtnLogIn_Click">(LogIn) ورود</asp:LinkButton>&nbsp;
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>

       
        <div class="full_width" align="center>
     

        <p align="center">
            &nbsp;</p>

                        <table dir="rtl" style=" font-size: 9pt; width: 100%">
                            <tr>
                                <td align="center">
             
                                    <b>براي مشاهده عکسهاي هر آلبوم، بر روي مشخصات زيرين آلبوم مورد نظر کليک کنيد</b></td>
                            </tr>
                            </table>

        
        
        <ul class="Img-gallery main-wrap">

            <asp:Repeater id="Repeater1" runat="server" 
                onitemcommand="Repeater1_ItemCommand">
                
                <HeaderTemplate>
                </HeaderTemplate>        
            
                <ItemTemplate>
                                
                                <li>
                                <table width="300">
                                    
                                    <tr>
                                        <td align="center">
                                        
                                            <asp:Label ID="lblGalleryID" Visible="false"  runat="server" Text=<%#Eval("GalleryPicID")%>></asp:Label>
                                              
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td align="center">
                                        
                                            <a href="UserUploadedPictures/<%#Eval("GalleryPicThumbPictureName")%>" class="fancybox"><img src="UserUploadedPictures/<%#Eval("GalleryPicThumbPictureName")%>" 
                                            width="253" height="240" alt="ImageGallery1" 
                                            title="عنوان آلبوم: <%#Eval("GalleryPicTitle")%> - مکان عکسبرداري آلبوم : <%#Eval("GalleryPicLocation")%> - تاريخ و ساعت عکسبرداري آلبوم : <%#Eval("GalleryPicDate")%>-<%#Eval("GalleryPicTime")%> - توضيحات : <%#Eval("GalleryPicDescription")%>" style="margin-left: -2px;margin-top: -6px" />
          
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
     
                                        <td align="center" width="255px">
                                                <asp:LinkButton ID="LinkButton1" class="LinkButtonMy" runat="server" 
                                                CommandName="goToFullShow" Font-Underline="False" Height="20px" 
                                                ToolTip="مشاهده آلبوم" Width="100%" Font-Size="7pt" Font-Bold="True"><%#Eval("GalleryPicOwnerName")%>&nbsp;<%#Eval("GalleryPicOwnerLastName")%>: <%#Eval("GalleryPicTitle")%></asp:LinkButton>
                                       
                                        </td>
                                    </tr>
                                     
                                </table>
                                </li>
                                
                                &nbsp;&nbsp;&nbsp;

              </ItemTemplate>
              
              <FooterTemplate>

              </FooterTemplate>
               
            </asp:Repeater>
       </ul>
        
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
      </div>
     
      <div id="footerBelow" >
                   
       </div>        
        
        
        
     
      
      
       
            
    </div>
  </div>
</div>
</form>
    
</body>

</html>
