<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadFiles.aspx.cs" Inherits="PresentationLayer.DownloadFiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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













    <style type="text/css">
        .style1
        {
            width: 100%;
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
                            <td width="50%" valign="top" align="left">
                       
                                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>

                        <asp:Label ID="lbl2" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="btnControlPanel" runat="server" CausesValidation="false"
                    onclick="btnControlPanel_Click">(Control Pannel) کنترل پانل</asp:LinkButton><asp:Label 
                                    ID="lbl3" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogMainPage" runat="server" CausesValidation="false" onclick="lbtnLogMainPage_Click"
                    >(Home) صفحه اصلي</asp:LinkButton>&nbsp;<asp:Label ID="lbl1" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogIn" runat="server" CausesValidation="false"
                            OnClick="lbtnLogIn_Click">(LogIn) ورود</asp:LinkButton>&nbsp;
                            </td>



                            <td width="50%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>    
     
      <div align="center" style="width: 98.5%">

      


      
           <asp:Repeater id="Repeater1" runat="server">
                
                <HeaderTemplate>                    
                    <table id="Table1" border="0" cellspacing="0" align="center" 
              Class="TableMy860Width" dir="rtl"  style="margin-top: 0px">

              <tr>
                                 
                      <td width="90%" align="right" width="85%" class="LableMy" valign="top">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>

              <tr>
                                 
                      <td width="90%" align="right" width="85%" class="LableMy" valign="top">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>

<tr>
                                 
                      <td width="90%" align="right" width="85%" class="LableMy" valign="top">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>
                               
                </HeaderTemplate>
    
                <ItemTemplate>
             
              <tr>
                                 
                      <td width="90%" align="right" width="85%" class="LableMy" valign="top">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>


              <tr>
                  
                 
                 
                      <td width="90%" align="right" width="85%" class="LableMy" valign="top">

                                     <font style="font-weight: bold; direction:rtl" >
                                      (<%#Eval("newsType")%>)&nbsp;-&nbsp;<%#Eval("newsDate")%>&nbsp;-&nbsp;<%#Eval("newsTitle")%>
                                     </font>
                                       
                                       <p></p>

                                        

                                   <pMyNews>                     
                                     <%#Eval("newsPassage")%> 
                                  </pMyNews>

                                  
                      </td>

                      <td width="10%" align="left" valign="top">
                    <a href="NewsFiles/<%#Eval("newsUploadedFileName")%>"><img width="70" height="70" src="images/Icons/downLoad.png"></a>
                    
                  </td>
              </tr>
                    
                      

  <tr>
                                 
                      <td width="90%" align="left" width="85%" class="LableMy" valign="top">

                      <hr size="2px" style="margin:0px 0px 0px 0px; width: 100%; background-color: #0000FF;" />

      
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>                

                   
           

              

                            
                 </ItemTemplate>
                 
              <FooterTemplate>
                 </table>
              </FooterTemplate>
            </asp:Repeater>   

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
    </div>

</body>
</html>
