<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadFiles2.aspx.cs" Inherits="PresentationLayer.DownloadFiles2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>

    
<link href="CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />    



<style>
    
    .hamyar_slider {
	list-style-type:none;
	position:relative;
	margin:-30px 0px 0px 13px;
	direction:ltr !important; /* Dont' change this */
	/*font-family:tahoma;*/
	font-size:9pt;
        top: 0px;
        left: 0px;
    }
.hamyar_slider ul li {
	list-style-type:none;
	float:left;
	padding:0px;
	border:1px solid #ccc;
	margin:5px;
	border-radius:5px;
	-webkit-transition : all 0.4s ease-in;
	-moz-transition : all 0.4s ease-in;
	-o-transition : all 0.4s ease-in;
	cursor:pointer;
	position:relative;
	width:71px;
	height:90px;
	text-align:center;
	direction:ltr; /* You can change it */
}
.hamyar_slider li:hover {
	border:1px solid #00F;
	-webkit-transition : all 0.4s ease-in;
	-moz-transition : all 0.4s ease-in;
	-o-transition : all 0.4s ease-in;
}
.disable {
	-webkit-transition : all 0.4s ease-in;
	-moz-transition : all 0.4s ease-in;
	-o-transition : all 0.4s ease-in;
	opacity:.5;
}
[class^="icon-"],
[class*=" icon-"] {
  display: inline-block;
  width: 14px;
  height: 14px;
  margin-top: 1px;
  *margin-right: .3em;
  line-height: 14px;
  vertical-align: text-top;
  background-image: url("../../../Jqueries/hamyar-slider/img/glyphicons-halflings.png");
  background-position: 14px 14px;
  background-repeat: no-repeat;
}

/* White icons with optional class, or on hover/focus/active states of certain elements */

.icon-white,
.nav-pills > .active > a > [class^="icon-"],
.nav-pills > .active > a > [class*=" icon-"],
.nav-list > .active > a > [class^="icon-"],
.nav-list > .active > a > [class*=" icon-"],
.navbar-inverse .nav > .active > a > [class^="icon-"],
.navbar-inverse .nav > .active > a > [class*=" icon-"],
.dropdown-menu > li > a:hover > [class^="icon-"],
.dropdown-menu > li > a:focus > [class^="icon-"],
.dropdown-menu > li > a:hover > [class*=" icon-"],
.dropdown-menu > li > a:focus > [class*=" icon-"],
.dropdown-menu > .active > a > [class^="icon-"],
.dropdown-menu > .active > a > [class*=" icon-"],
.dropdown-submenu:hover > a > [class^="icon-"],
.dropdown-submenu:focus > a > [class^="icon-"],
.dropdown-submenu:hover > a > [class*=" icon-"],
.dropdown-submenu:focus > a > [class*=" icon-"] {
  background-image: url("../../../Jqueries/hamyar-slider/img/glyphicons-halflings-white.png");
}
.icon-arrow-left {
  background-position: -240px -96px;
}

.icon-arrow-right {
  background-position: -266px -96px;
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
<p>
</p>


      
<div style="width:100%; margin:35px 0 0 0px;">
<div class="hamyar_slider" >
      <ul>

                   <asp:DataList ID="DataList1" runat="server" DataKeyField="newsID" 
                        onitemcommand="DataList1_ItemCommand" Width="100%" 
                        RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                             
                    <ItemTemplate>
                        <a href="NewsFiles/<%#Eval("newsUploadedFileName")%>"><li><img src="NewsFiles/downloadicon/<%#Eval("newsUploadedFileType")%>.jpg"><%#Eval("newsTitle")%></li></a> 

                                                               

                    </ItemTemplate>
                </asp:DataList>



        
      </ul>
    </div>

</div>
 

      
              

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
