<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDeleteCourse.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AddDeleteCourse" %>

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
            height: 13px;
        }
        .style2
        {
            height: 26px;
        }
        .style3
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
        


     
        
        
 
 
          <div class="left_three">      



    
        <table dir="rtl" style="width: 100%;  font-size: 9pt;">
            <tr>
                <td  align="center" colspan="4">
          
                 
          
                    &nbsp;</td>
                <td  align="center">
          
                 
          
                    &nbsp;</td>
                <td  align="center">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td  align="right" colspan="4" class="style1">
          
                 
          
                    <strong>ورود اطلاعات درس</strong></td>
                <td  align="right" class="style1">
          
                 
          
                    </td>
                <td  align="right" class="style1">
          
                 
          
                    </td>
            </tr>
            <tr>
                <td  align="center" colspan="4">
          
                 
          
                    
                </td>
                <td  align="center">
          
                 
          
                    &nbsp;</td>
                <td  align="center">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    نام درس:</td>
                <td  align="left">
                    <asp:TextBox ID="txtCourseName" CssClass="validate[required]" runat="server" Width="132px" MaxLength="30" 
                         Height="22px" TabIndex="1"></asp:TextBox>
                </td>
                <td  align="left">
                    شماره درس:</td>
                <td  align="left">
                    <asp:TextBox ID="txtCourseID" runat="server" Width="132px" MaxLength="5" 
                        TabIndex="2" 
                        CssClass="validate[required,custom[integer],maxSize[5],minSize[1]]" 
                        Height="22px"></asp:TextBox>
                </td>
                <td  align="left">
                    ارائه براي مقطع:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCourseEducationLevel" runat="server" TabIndex="3" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td valign="middle">
                    دانشکده ارائه:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCourseFacultyName" runat="server" TabIndex="4" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>مهندسي</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  align="left">
                    ارائه براي رشته:</td>
                <td  align="left">
                    <asp:DropDownList ID="drliBranch" runat="server" 
                        Width="132px" TabIndex="5" CssClass="InputControl" 
                        DataTextField="EducationBranchName" Height="22px">
                    </asp:DropDownList>
                </td>
                <td  align="left">
                    نوع درس:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCourseType" runat="server" TabIndex="6" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>تخصصي</asp:ListItem>
                        <asp:ListItem>اصلي</asp:ListItem>
                        <asp:ListItem>پايه</asp:ListItem>
                        <asp:ListItem>عمومي</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
                <td  align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    واحدتئوري درس:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCourseTheoryUnit" runat="server" TabIndex="7" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  align="left">
                    واحدعملي درس:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCoursePracticalUnit" runat="server" TabIndex="8" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  align="left">
                    ارائه براي ترم:</td>
                <td  align="left">
                    <asp:DropDownList ID="DrLiCourseSemisterNumber" runat="server" TabIndex="9" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            </table>

         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


           


                   


    <div id = "dvGrid" dir="rtl" >
          
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

<table width="100%" >
                        <tr>
                            <td>
                                       <div align="right">            
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
         </div></td>
                            <td>

        <div align="left">
          <asp:Button ID="btnAdd" runat="server" Text="ذخیره" OnClick = "insertCourse" 
                  CssClass="Button" Width="47px" Height="25px" />
</td>
                        </tr>
                    </table>


       <p></p>
 

        <asp:GridView ID="GridView1" runat="server"  Width = "100%"
        AutoGenerateColumns = "False" Font-Names = "Tahoma" 
        Font-Size = "9pt" AlternatingRowStyle-BackColor = "#C2D69B"  
        HeaderStyle-BackColor = "green" Height="100%" 
                onpageindexchanging="OnPaging" >
                                         
       <RowStyle HorizontalAlign="Right" Wrap="False" Font-Names="Tahoma" 
                                        Font-Size="10pt" />
                                    <AlternatingRowStyle BackColor="#FFFFFF" />
       <Columns>
 
        <asp:TemplateField   HeaderText = "نام درس">
            <ItemTemplate>
                <asp:Label ID="lbl1" runat="server" Text='<%# Eval("CourseName")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>

        <asp:TemplateField   HeaderText = "شماره درس">
            <ItemTemplate>
                <asp:Label ID="lbl2" runat="server" Text='<%# Eval("CourseID")%>'></asp:Label>
            </ItemTemplate>

            <ItemStyle  />
        </asp:TemplateField>

        <asp:TemplateField   HeaderText = "مقطع">
            <ItemTemplate>
                <asp:Label ID="lbl3" runat="server" Text='<%# Eval("CourseEducationLevel")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>

                <asp:TemplateField   HeaderText = "دانشکده">
            <ItemTemplate>
                <asp:Label ID="lbl4" runat="server" Text='<%# Eval("CourseFacultyName")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>

                <asp:TemplateField   HeaderText = "رشته">
            <ItemTemplate>
                <asp:Label ID="lbl5" runat="server" Text='<%# Eval("CourseEducationBranchName")%>'></asp:Label>
            </ItemTemplate>

            <HeaderTemplate>

            </HeaderTemplate> 
            <ItemStyle  />
        </asp:TemplateField>

                <asp:TemplateField   HeaderText = "نوع">
            <ItemTemplate>
                <asp:Label ID="lbl6" runat="server" Text='<%# Eval("CourseType")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>

                <asp:TemplateField   HeaderText = "واحد تئوري">
            <ItemTemplate>
                <asp:Label ID="lbl7" runat="server" Text='<%# Eval("CourseTheoryUnit")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>
                <asp:TemplateField   HeaderText = "واحد عملی">
            <ItemTemplate>
                <asp:Label ID="lbl8" runat="server" Text='<%# Eval("CoursePracticalUnit")%>'></asp:Label>
            </ItemTemplate>


            <ItemStyle  />
        </asp:TemplateField>


                <asp:TemplateField   HeaderText = "شماره ترم">
            <ItemTemplate>
                <asp:Label ID="lbl9" runat="server" Text='<%# Eval("CourseSemisterNumber")%>'></asp:Label>
            </ItemTemplate>

            <ItemStyle  />
        </asp:TemplateField>



        
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument = '<%# Eval("CourseName")%>' 
                 OnClientClick = "return confirm('حذف درس را تایید می نمایید؟')"
                Text = "حذف" OnClick = "DeleteCourse"></asp:LinkButton>
            </ItemTemplate>
             <HeaderTemplate>
                
            </HeaderTemplate> 
        </asp:TemplateField> 
       </Columns> 
                                     <FooterStyle BackColor="white" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="8pt" ForeColor="White" Font-Names="Tahoma" HorizontalAlign="Center" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>                

        </ContentTemplate> 



    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "GridView1" /> 
    </Triggers> 
    </asp:UpdatePanel> 

    </div>
    
        </div>
        
         <!-- Middle Column -->      
        
        
        
        
        
        
        
        
        <!-- Right Column -->        
        
        <div class="four_equals" >
           
          <ul id="topnavrightMy">
             <li><a href="AdminSetStudentPermission.aspx"> سطح دسترس دانشجو</a></li>
            <li><a href="AdminAddechnicalEducation.aspx">تعریف دوره تخصصی</a></li> 
            <li><a href="AdminPresentTechnicalEducation.aspx">ارایه دوره تخصصی</a></li> 
            <li><a href="AdminInserNews.aspx">ارسال اطلاعيه</a></li>  
            <li><a href="AdminEditNews.aspx">ويرايش اطلاعيه</a></li> 
            <li><a href="AdminSelectStudentsForRecieveMessage.aspx">ارسال پیام</a></li> 
            <li><a href="AdminShowRecievedMessages.aspx">پیامهای رسیده</a></li> 
            <li><a href="AdminInsertLink.aspx">وب سايت جديد</a></li> 
            <li><a href="TeacherRegistration.aspx">استاد جديد</a></li>          
            <li><a href="AddDeleteUniversity.aspx">دانشگاه</a></li>
            <li><a href="AddDeleteBranch.aspx">رشته تحصيلي</a></li>
            <li><a href="AddDeleteCourse.aspx">درس</a></li>
            <li><a href="AddTermNumber.aspx">ترم تحصيلي</a></li>           
            <li><a href="../../AddPictureGallery.aspx">آلبوم عکس</a></li>
                              
          </ul>  
          
 
                                   

                                    
             
      </div>
      
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



    <link href="../../ApplicationalJQUERIES/JQueryValidation/ValidationEngine.css" rel="stylesheet"
        type="text/css" />


    <script src="../../ApplicationalJQUERIES/JQueryValidation/jquery.validationEngine-fa.js"
        type="text/javascript"></script>

    <script src="../../ApplicationalJQUERIES/JQueryValidation/jquery.validationEngine.js"
        type="text/javascript"></script>

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
