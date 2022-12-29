<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsDetailes.aspx.cs" Inherits="PresentationLayer.WebForm1" %>

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
            color: #FF0066;
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

<p></p>
      

<table id="Table3" align="right" runat="server" dir="rtl" class="TableMy860Width" 
               style="width: 98.5%">
                                <tr>
                                    <td valign="top" align="center" width="10%">
  
                        

                                        &nbsp;</td>
                                    <td valign="top" align="center">
  
                        

                            جزئيات بيشتر:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                            
                            
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="LableMy"  Font-Underline="True"></asp:HyperLink> 
                            

                            <br />
                                    </td>
                                    <td valign="top" align="center" width="30%">
  
                        

                                        &nbsp;</td>
                                        </tr>
  
                                    </table>
      
           <asp:Repeater id="Repeater1" runat="server">
                
                <HeaderTemplate>
                               
                </HeaderTemplate>
    
                <ItemTemplate>
             
                    
                    <table id="Table1" border="0" cellspacing="0" align="center" 
              Class="TableMy860Width" dir="rtl" width="90%" style="margin-top: -20px">
                    
 
                    <tr>
                        <td colspan="4" align="center" class="style7">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center" class="style7">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">


                            <table width="100%" class="tableMy">
                                <tr>
                                    <td align="right" class="style4" width="10%">
                                        کد: <asp:Label ID="Label2" runat="server" CssClass="LableMy" Text=<%#Eval("newsID")%>></asp:Label></td>
                                    <td align="center" width="60%">
                                        &nbsp;</td>
                                    <td align="left" width="30%">
                                        تاريخ انتشار: <asp:Label ID="Label3" runat="server" CssClass="LableMy" Text=<%#Eval("newsDate")%>></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" class="style4" width="10%">
                                        تعداد بازديد:
                                        <asp:Label ID="Label1" runat="server" CssClass="LableMy" Text=<%#Eval("newsViewerCounter")%>></asp:Label>
                                    </td>
                                    <td align="center">
                                        <b><%#Eval("newsTitle")%></b></td>
                                    <td align="left" width="30%">
                                        ارسال کننده: <asp:Label ID="Label4" runat="server" CssClass="LableMy" Text=<%#Eval("newsAouthorName")%> > </asp:Label><asp:Label ID="Label5" runat="server" CssClass="LableMy" Text=<%#Eval("newsAouthorLastName")%> > </asp:Label></td></td>
                                </tr>
                                </table>

                                <hr size="3px" 
             style="margin:5px 0px 0px 0px; width: 100%; background-color: #0000FF;" /> 
       
       

                        </td>
                    </tr>

                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td width="600px dir="rtl" rowspan="15" valign="top">
                         <pMyNews>                     
                           <%#Eval("newsPassage")%> 
                         </pMyNews>
                                    <br />
                            
                            
                            
                         </td>
                        <td valign="top">
                            &nbsp;</td>
                       
                       <td width="250px" valign="top" rowspan="13" align="left">
                        <table width="100%" align="center">
                        <tr>
                          <td align="right" valign="middle" class="style1">
                            دانلود فايل ضميمه: 
                          </td>

                          <td align="left">
                            <a href="NewsFiles/<%#Eval("newsUploadedFileName")%>"><img src="NewsFiles/downloadicon/<%#Eval("newsUploadedFileType")%>.jpg"></a>
                          </td>
                        
                        </tr>
                        
                        </table>
                                         
                                     
                        <p></p>
                         <ul class="Img-galleryMyNews main-wrap">
 
                                <li>
                                    <a href="NewsImages/<%#Eval("newsPictureName")%>" class="fancybox">
                                    <img src="NewsImages/<%#Eval("newsPictureName")%>" width="250px" 
                                        style="height: 300px"/></a>
                                </li>
                        </ul>

                            
                         </td>
                        <td class="style11" valign="top">
                            &nbsp;</td>
                    </tr>

   

                    </table>
           



                            
                 </ItemTemplate>
                 
              <FooterTemplate>
                
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
</body>
</html>
