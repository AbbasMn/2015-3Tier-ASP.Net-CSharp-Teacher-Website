<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddechnicalEducation.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AdminAddechnicalEducation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>

    
            <!-- JQuery Ajax -->
<script type = "text/javascript" src = "../../AJAXScripts/jquery-1.3.2.min.js"></script>
<script type = "text/javascript" src = "../../AJAXScripts/jquery.blockUI.js"></script>


<script type = "text/javascript">
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function () {
            $("#" + elementID).block({ message: '<table  align = "center" style="height:100%"><tr><td align="left">' +
     '<img src="../../AJAXScripts/loadingAnim.gif"/></td></tr></table>',
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
    <link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<%--<script type="text/javascript" src="../../jsMy/jquery-1.4.2.min.js"></script>--%>


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


    



    

    
    <style type="text/css">
        .style1
        {
            font-weight: bold;
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
                  
                         <li><a href="../../Main.aspx">
                            <img src="../../images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                        <li><a href="../../PublicPictureGalleries.aspx">
                        
                            <img src="../../images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>


                        <li><a href="../../DownloadSoftware.aspx">
                        
                            <img src="../../images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>


                        <li><a href="">
                            <img src="../../images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
 
                                                                                
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
        


     
        
        
 
 
          <div class="ful_with">      



    
        <table dir="rtl" style="width: 100%;  font-size: 9pt;">
            <tr>
                <td class="style1" align="center" colspan="2">
          
                 
          
                    &nbsp;</td>
                <td class="style1" align="center">
          
                 
          
                    &nbsp;</td>
                <td class="style1" align="center">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" align="right" colspan="2">
          
                 
          
                    ورود اطلاعات دوره های تخصصی</td>
                <td class="style1" align="right">
          
                 
          
                    &nbsp;</td>
                <td class="style1" align="right">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" align="center" colspan="2">
          
                 
          
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
           
                   
             
           
                    &nbsp;
          
                 
          
                        
           
                    </td>
                <td class="style1" align="center">
          
                 
          
                    &nbsp;</td>
                <td class="style1" align="center">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    عنوان دوره:</td>
                <td class="style4" align="right">
                    <asp:TextBox ID="txtTechEducationTitle" runat="server" Width="250px" MaxLength="400" 
                        CssClass="validate[required,maxSize[400]]" Height="20px" TabIndex="1"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    کد دوره:</td>
                <td class="style4" align="left">
                    <asp:TextBox ID="txtTechEducationCode" runat="server" Width="250px" MaxLength="20" 
                        TabIndex="2" CssClass="validate[required,maxSize[20]]" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    سطح دوره:</td>
                <td class="style4" align="right">
                    <asp:DropDownList ID="DrLiTechEducationLevel" runat="server" TabIndex="3" 
                        Width="250px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>مبتدی</asp:ListItem>
                        <asp:ListItem>متوسط</asp:ListItem>
                        <asp:ListItem>پیشرفته</asp:ListItem>
                        <asp:ListItem>حرفه ای</asp:ListItem>
                        <asp:ListItem>عمومي</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4" align="left">
                    ارائه براي رشته:</td>
                <td class="style4" align="left">
                    <asp:DropDownList ID="drliTechEductionTechnicalBranch" runat="server" 
                        Width="250px" TabIndex="4" CssClass="InputControl" 
                        DataTextField="EducationBranchName" Height="20px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    ارائه براي مقطع:</td>
                <td class="style4" align="right">
                    <asp:DropDownList ID="DrLiTechEductionTechnicalBranchLevel" runat="server" TabIndex="5" 
                        Width="250px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                        <asp:ListItem>دیپلم</asp:ListItem>
                        <asp:ListItem>همه مقاطع</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4" align="left">
                    تعداد ساعت تئوري:</td>
                <td class="style4" align="left">
                    <asp:TextBox ID="txtTechEductionTheoryHours" runat="server" Width="250px" MaxLength="50" 
                        CssClass="InputControl" Height="20px" TabIndex="6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    تعداد ساعت عملي:</td>
                <td class="style4" align="right" valign="top">
                    <asp:TextBox ID="txtTechEductionPracticalHours" runat="server" Width="250px" MaxLength="50" 
                        CssClass="InputControl" Height="20px" TabIndex="7"></asp:TextBox>
                </td>
                <td class="style4" align="left" valign="top">
                    دوره های پیشنیاز:</td>
                <td class="style4" align="left">
                    <asp:TextBox ID="txtTechEductionPrerequisits" runat="server" Width="250px" 
                        CssClass="InputControl" Height="64px" TabIndex="8" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    نرم افزارهای یشنیاز:</td>
                <td class="style4" align="right">
                    <asp:TextBox ID="txtTechEductionSoftwarePrerequisits" runat="server" Width="250px" 
                        CssClass="InputControl" Height="64px" TabIndex="9" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="4">

                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>


                    <div id="dvGrid" dir="rtl">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <table dir="rtl" width="100%">
                                    <tr>
                                        <td>
                                            <div align="right">
                                                <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                                <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                                            </div>
                                        </td>
                                        <td>
                                            <div align="left">
                                                <asp:Button ID="btnAdd" runat="server" CssClass="Button" Height="25px" 
                                                    OnClick="insertTechEducation" Text="ذخیره" Width="47px" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:GridView ID="GridView1" runat="server" 
                                                AlternatingRowStyle-BackColor="#C2D69B" AutoGenerateColumns="False" 
                                                Font-Names="Tahoma" Font-Size="9pt" HeaderStyle-BackColor="green" Height="100%" 
                                                Width="100%" DataKeyNames="techEducationID">
                                                <RowStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right" 
                                                    Wrap="True" />
                                                <AlternatingRowStyle BackColor="#FFFFFF" />
                                                <Columns>
                                
                                <asp:BoundField ConvertEmptyStringToNull="False" DataField="techEducationTitle" 
                                    HeaderText="عنوان دوره" ReadOnly="True">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="techEducationCode" HeaderText="کد دوره" >
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="techEducationLevel" HeaderText="سطح دوره">
                                    <HeaderStyle HorizontalAlign="Right" />
                                    <ItemStyle Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="techEductionTechnicalBranch" HeaderText="رشته" />
                                <asp:BoundField DataField="techEductionTechnicalBranchLevel" 
                                    HeaderText="مقطع" />
                                <asp:BoundField DataField="techEductionTheoryHours" HeaderText="ساعت توری" />
                                <asp:BoundField DataField="techEductionPracticalHours" HeaderText="ساعت عملی" />
                                <asp:BoundField DataField="techEductionPrerequisits" 
                                    HeaderText="دوره پیشنیاز" />
                                <asp:BoundField DataField="techEductionSoftwarePrerequisits" 
                                    HeaderText="نرم افزار پیشنیاز" />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkRemove" runat="server" 
                                                                CommandArgument='<%# Eval("techEducationID")%>' OnClick="deleteTechEducation" 
                                                                OnClientClick="return confirm('حذف دوره را تایید می نمایید؟')" Text="حذف"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                    </asp:TemplateField>


                             </Columns>
                                                <FooterStyle BackColor="white" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#1777b1" Font-Bold="True" Font-Names="Tahoma" 
                                                    Font-Size="8pt" ForeColor="White" HorizontalAlign="Center" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>


          
                                    <br />
          
                 
          
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="GridView1" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>










                        
                                    </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>

            </table>

    
          
        </div>
        
         <!-- Middle Column -->      
        
        
        
        
        
        
        
        
        <!-- Right Column -->        
        
        
      
       <!-- Right Column -->  
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../Main.aspx">صفحه اصلي</a></li>
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

    <link href="../../ApplicationalJQUERIES/JQueryValidation/ValidationEngine.css" rel="stylesheet"  type="text/css" />

    <script src="../../ApplicationalJQUERIES/JQueryValidation/jquery.validationEngine-fa.js"  type="text/javascript"></script>

    <script src="../../ApplicationalJQUERIES/JQueryValidation/jquery.validationEngine.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            $("#form1").validationEngine('attach', { promptPosition: "topRight" });
        });
    </script>
    <script type="text/javascript">
        function DateFormat(field, rules, i, options) {
            var regex = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
            if (!regex.test(field.val())) {
                return "Please enter date in dd/MM/yyyy format."
            }
        }
    </script>
</body>
</html>
