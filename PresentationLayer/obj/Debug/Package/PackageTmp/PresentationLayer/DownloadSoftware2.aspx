<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadSoftware2.aspx.cs" Inherits="PresentationLayer.DownloadSoftware2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>

    <!-- JQuery Ajax -->
<script type = "text/javascript" src = "AJAXScripts/jquery-1.3.2.min.js"></script>
<script type = "text/javascript" src = "AJAXScripts/jquery.blockUI.js"></script>


<script type = "text/javascript">
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function () {
            $("#" + elementID).block({ message: '<table  align = "center" style="height:100%"><tr><td align="left">' +
     '<img src="AJAXScripts/loadingAnim.gif"/></td></tr></table>',
                css: {},
                overlayCSS: { backgroundColor: '#1f2327', opacity: 0.0, border: '2px solid black'
                }
            });
        });
        prm.add_endRequest(function () {
            $("#" + elementID).unblock();
        });
    }
    $(document).ready(function () {

        BlockUI("dvGrid");
        $.blockUI.defaults.css = {};
    });
</script>

<!-- JQuery Ajax -->    
<link href="CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />    
<%--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>--%>
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
                    >(Home) صفحه اصلي</asp:LinkButton>&nbsp;<asp:Label ID="lbl1" runat="server" Text="/"></asp:Label>&nbsp;
                            </td>



                            <td width="50%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>    
     
      <div align="center" style="width: 100%; " dir="ltr" >

                 <div id = "dvGrid" dir="rtl">

                     
                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                     </asp:ScriptManager>

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 

      <a name="1"></a>

      <table width="100%" class="TableMy860Width">
              <tr>
                  <td align="center" width="40%">
                      &nbsp;</td>
                  <td align="center" width="60%">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" valign="top" width="40%">
                  
                      <span >انتخاب
                            نوع نرم افزار:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;
                    <asp:DropDownList ID="drlistnewsType" runat="server" 
                        Width="189px" TabIndex="2" CssClass="InputControl" AutoPostBack="True" 
                          onselectedindexchanged="drlistnewsType_SelectedIndexChanged">
                        <asp:ListItem>نرم افزار - مالتی مدیا</asp:ListItem>
                        <asp:ListItem>نرم افزار - امنیتی</asp:ListItem>
                        <asp:ListItem>نرم افزار - گرافیکی</asp:ListItem>
                        <asp:ListItem>نرم افزار - دیسک</asp:ListItem>
                        <asp:ListItem>نرم افزار - اینترنت</asp:ListItem>
                        <asp:ListItem>نرم افزار - ارتباطات</asp:ListItem>
                        <asp:ListItem>نرم افزار - اداری</asp:ListItem>
                        <asp:ListItem>نرم افزار - دسکتاپ</asp:ListItem>
                        <asp:ListItem>نرم افزار - کاربردی</asp:ListItem>
                        <asp:ListItem>نرم افزار - سیستم عامل</asp:ListItem>
                        <asp:ListItem>نرم افزار - آموزشی</asp:ListItem>
                        <asp:ListItem>نرم افزار - خانگی</asp:ListItem>
                        <asp:ListItem>نرم افزار - توسعه</asp:ListItem>
                        <asp:ListItem>نرم افزار - توسعه وب</asp:ListItem>
                        <asp:ListItem>آموزش - گرافیک و طراحی</asp:ListItem>
                        <asp:ListItem>آموزش - سه بعدی و انیمیشن</asp:ListItem>
                        <asp:ListItem>آموزش - برنامه نویسی و طراحی وب</asp:ListItem>
                        <asp:ListItem>آموزش - مالتی مدیا</asp:ListItem>
                        <asp:ListItem>آموزش - اداری</asp:ListItem>
                        <asp:ListItem>آموزش - سیستم عامل</asp:ListItem>
                        <asp:ListItem>آموزش - شبکه</asp:ListItem>
                        <asp:ListItem>کتاب - کامپیوتر</asp:ListItem>
                        <asp:ListItem>کتاب - علمی</asp:ListItem>
                        <asp:ListItem>کتاب - تاریخی</asp:ListItem>
                        <asp:ListItem>کتاب - ادبیات</asp:ListItem>
                        <asp:ListItem>کتاب - مذهبی</asp:ListItem>
                        <asp:ListItem>موبایل - نرم افزار</asp:ListItem>
                        <asp:ListItem>موبایل - بازی</asp:ListItem>
                        <asp:ListItem>موبایل - مارک گوشی</asp:ListItem>
                        <asp:ListItem>موبایل - سیستم عامل</asp:ListItem>
                        <asp:ListItem>موبایل - شرکت سازنده</asp:ListItem>
                        <asp:ListItem>موبایل - فریم ور</asp:ListItem>
                        <asp:ListItem>موبایل - خرید کارت شارژ</asp:ListItem>
                        <asp:ListItem>گرافیک - فونت</asp:ListItem>
                        <asp:ListItem>گرافیک - تصویر</asp:ListItem>
                        <asp:ListItem>گرافیک - فتوشاپ</asp:ListItem>
                        <asp:ListItem>گرافیک - قالب آماده</asp:ListItem>
                        <asp:ListItem>فیلم - مستند</asp:ListItem>
                        <asp:ListItem>فیلم - انیمیشن</asp:ListItem>
                        <asp:ListItem>فیلم - آموزشی</asp:ListItem>
                        <asp:ListItem>بازی - اکشن</asp:ListItem>
                        <asp:ListItem>بازی - تیراندازی</asp:ListItem>
                        <asp:ListItem>بازی - مسابقه ای</asp:ListItem>
                        <asp:ListItem>بازی - ورزشی</asp:ListItem>
                        <asp:ListItem>بازی - سرگرم کننده</asp:ListItem>
                        <asp:ListItem>بازی - معمایی</asp:ListItem>
                        <asp:ListItem>بازی - استراتژی</asp:ListItem>
                        <asp:ListItem>بازی - ماجرایی</asp:ListItem>
                        <asp:ListItem>بازی - پلاتفرم</asp:ListItem>
                        <asp:ListItem>بازی - نقش آفرینی</asp:ListItem>
                        <asp:ListItem>بازی - شبیه سازی</asp:ListItem>
                        <asp:ListItem>بازی - کودکان</asp:ListItem>
                    </asp:DropDownList>
                            &nbsp;&nbsp;
                            </td>
                  <td align="center" width="60%">
                                <asp:RadioButton ID="rdioSelect" runat="server" CssClass="LableMyBold" 
                                    GroupName="Noe" Text="  نرم افزارهای از نوع انتخاب شده" Width="200px" 
                                    Checked="True" AutoPostBack="True" 
                          oncheckedchanged="rdioSelect_CheckedChanged" />
                                &nbsp;
                                <asp:RadioButton ID="rdioAll" runat="server"  CssClass="LableMyBold"  
                                    GroupName="Noe" Text="  همه نرم افزارها" Width="121px" 
                          AutoPostBack="True" oncheckedchanged="rdioAll_CheckedChanged" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="rdioSearch" runat="server" GroupName="Noe" CssClass="LableMyBold" 
                                    Text="  جستجو" AutoPostBack="True" 
                                    oncheckedchanged="rdioSearch_CheckedChanged" />
                            </td>
              </tr>
              <tr>
                  <td align="left" width="40%">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td align="center" width="60%">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" width="40%" valign="top">
                      <asp:Label ID="lblSearchTitle" runat="server"  
                           Text="کلمه جست و جو: "></asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                            <asp:TextBox ID="txtSearchKeyword" runat="server" CssClass="InputControl" 
                          Width="189px" Height="22px" 
                                TabIndex="1" KeyDown="OnKeyDownHandler"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            
                            <asp:Button ID="btnSearch" runat="server" CssClass="Button" 
                        OnClick="btn_ok_Click" 
                        Style="border-color: black; border-width: 1px; margin-right: 0px; " 
                        Text="جستجو" Width="44px" TabIndex="4" Height="25px" />
                                            </td>
                  <td align="center" width="60%">


                          
                                    <asp:ImageButton ID="ImageButton27" runat="server" Height="36px" 
                                        ImageUrl="images/Icons/softdownload2.png" 
                                        
                                        PostBackUrl="DownloadSoftware.aspx"  
                                        Width="45px" />
                                    <br />
                                    دانلود نرم افزار بدون توضیحات</td>
              </tr>
              <tr>
                  <td align="right" width="50%" valign="top">
                      &nbsp;</td>
                  <td align="center" width="60%">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" width="50%" valign="top">
                      <asp:Label ID="lblSearchResult" runat="server" Font-Bold="True" 
                            ForeColor="#FF0066" Text="Label"></asp:Label>
                            </td>
                  <td align="center" width="60%">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="center" width="50%" colspan="2" style="width: 100%">
                      
                      <hr size="2px" style="margin:0px 0px 0px 0px; width: 100%; background-color: #0000FF;" />
                      <p></p>
                     
                      
                      </td>
              </tr>
          </table>
        


      
           <asp:Repeater id="Repeater1" runat="server">
                
                <HeaderTemplate>                   
                    <table id="Table1" border="0" cellspacing="0" align="center" 
              Class="TableMy860Width" dir="rtl"  style="margin-top: 0px">

              <tr>
                                 
                      <td align="right"  valign="top" class="style1">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>

              

<tr>
                                 
                      <td align="right"  valign="top" class="style1">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>
                               
                </HeaderTemplate>
    
                <ItemTemplate>
             
              <tr>
                                 
                      <td align="right"  valign="top" class="style1">



                                  
                      </td>

                      <td width="10%" align="left" valign="top">
  
                    
                  </td>
              </tr>


              <tr>
                  
                      <td  align="center" colspan="3">

                          <asp:Label ID="Label1" runat="server"  CssClass="LableBigMyBold" Text=<%#Eval("newsType")%>></asp:Label>
                          <asp:Label ID="Label2" runat="server"  CssClass="LableBigMyBold" Text=<%#Eval("newsTitle")%>></asp:Label>
                          <asp:Label ID="Label3" runat="server"  CssClass="LableBigMyBold" Text=<%#Eval("newsDate")%>></asp:Label>

                          
                          
                          <%--&nbsp;-&nbsp;معرفی توسط <%#Eval("newsAouthorName")%>&nbsp;<%#Eval("newsAouthorLastName")%>&nbsp;-&nbsp;--%>


                      </td>                 
                 
              </tr>

               <tr>
                  
                 
                 
                      <td align="right" valign="middle"  width="3%">
                            <a href="#1">  (بالا)</a>
                      </td>
                  
                 
                 
                      <td width="92%" align="center" valign="top">

                                       <img src="NewsImages/<%#Eval("newsPictureName")%>" width="430px" 
                                        height="250px" />
                                       
                                       
                                  
                      </td>



                      <td width="5%" align="left" valign="middle">
                      <a href="<%#Eval("newsRelatedLink")%>" target="_blank"><img width="70" height="70" src="images/Icons/downLoad.png"></a>
                      </td>
              </tr>

                    
              <tr>
                  
                      <td align="right" valign="middle"  width="100%" colspan="3" >
                           
                                  <p></p>
                                
                                   <pMyNews>                     
                                     <%#Eval("newsPassage")%> 
                                  </pMyNews>
                           
                      </td>                
                 
              </tr>                    

              
              <tr>
                                 
                      <td align="left" class="LableMy" valign="top" colspan="3">

                      <hr size="2px" style="margin:0px 0px 0px 0px; width: 100%; background-color: #0000FF;" />
                      <p></p>
                      <p></p>

      
                      </td>

              </tr>                

                   
           

              

                            
                 </ItemTemplate>
                 
              <FooterTemplate>
                 </table>
              </FooterTemplate>
            </asp:Repeater>   

                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="rdioAll" />
                    </Triggers>
                </asp:UpdatePanel>
            
           
        </div>

    </div>
    
    
    
    
            <div id="footer" >
                    
                    <ul>
                        <li><a href="Main.aspx">صفحه اصليييييي</a></li>
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
