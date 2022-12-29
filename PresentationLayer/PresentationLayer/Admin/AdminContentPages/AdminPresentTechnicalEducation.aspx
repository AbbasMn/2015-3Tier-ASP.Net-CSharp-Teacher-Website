<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPresentTechnicalEducation.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AdminPresentTechnicalEducation" %>

<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

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
        


     
        
        
 
 
<div class="ful_with">      


<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>







    
        <table dir="rtl" style=" font-size: 9pt;" 
                  class="TableMy860Width">
            <tr>
                <td class="style1" align="center">
          
                 
          
                    </td>
            </tr>
            <tr>
                <td class="style1" align="right">
          
                 
          
                    <strong>ورود اطلاعات دوره های تخصصی</strong><asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
          
                 
          
                    <br />
                    <br />
                    <table>
                        <tr>
                            <td>
                                                                <strong>لیست دوره ها</strong><br />
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                            EnableViewState="False" PageSize="3" 
                                        Width="650px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" DataKeyNames="techEducationID">
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
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="techEductionTechnicalBranch" HeaderText="رشته" />
                                <asp:BoundField DataField="techEductionTheoryHours" HeaderText="ساعت توری" />
                                <asp:BoundField DataField="techEductionPracticalHours" HeaderText="ساعت عملی" />
                                <asp:BoundField DataField="techEductionPrerequisits" 
                                    HeaderText="دوره پیشنیاز" />
<%--                                <asp:ButtonField CommandName="goSelect" Text="انتخاب" >
                                <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>--%>

                               <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkRemove0" runat="server" 
                                        CommandArgument='<%# Eval("techEducationID")%>' OnClick="selectTechEducation" 
                                         Text="انتخاب"></asp:LinkButton>
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

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                                    
                        
                                                            </td>
                                                            <td>
                                                                <strong>لیست اساتید</strong><br />
                        
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                            EnableViewState="False" PageSize="3" 
                                        Width="200px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" DataKeyNames="UserTeacherID">
                                                <RowStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right" 
                                                    Wrap="True" />
                                                <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="UserTeacherLastName" HeaderText="نام خانوادگی استاد">
                                </asp:BoundField>
                                <asp:BoundField DataField="UserTeacherName" HeaderText="نام استاد" >
                                </asp:BoundField>
                                <asp:BoundField DataField="UserTeacherID" 
                                    HeaderText="کد استاد">
                                </asp:BoundField>
<%--                                <asp:ButtonField CommandName="goSelect" Text="انتخاب" >
                                <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>--%>

                               <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkRemove1" runat="server" 
                                        CommandArgument='<%# Eval("UserTeacherID")%>' OnClick="selectTeacher" 
                                         Text="انتخاب"></asp:LinkButton>
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

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                                    
                        
                                                            </td>
                                                        </tr>
                            
    
                        <tr>
                            <td colspan="2">

       <hr size="3px" 
             style="margin: 0px 0px -50px 0px; width: 100%; background-color: #0000FF;" /> 
       

                                                            </td>
                                                        </tr>
                            
    
                    </table>
          
                 
          
                </td>
            </tr>
            <tr>
                <td class="style1" align="center">
          

          
                                        <table class="style2" width="100%">
                                            <tr>
                                                <td align="right">
                                                    عنوان دوره: 
                                                </td>
                                                <td align="right" colspan="3">
            
           
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 
             
           
                    <asp:Label ID="lblTechEducationTitle" runat="server" CssClass="LableMy"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; کد دوره:
                    <asp:Label ID="lblTechEducationCode" runat="server" CssClass="LableMy"></asp:Label>
          
          
             
           
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
                    </Triggers>
                </asp:UpdatePanel> 
          
                 
          

                 
          
                                                </td>
                                                &nbsp;<td align="left">
                                                    &nbsp;استاد:</td>
                                                <td align="left" colspan="5">
            
           
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate> 
             
           
          
       <asp:Label ID="lblTechEducationTeacherName" runat="server" CssClass="LableMy"></asp:Label>
          
                 
          
             
           
                    <asp:Label ID="lblTechEducationTeacherLastName" runat="server" 
                        CssClass="LableMy"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; کد استاد:
          
                 
          
             
           
                    <asp:Label ID="lblpresentedTechEducationTeacherID" runat="server" 
                        CssClass="LableMy"></asp:Label>


                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ترم آموزشی:&nbsp;
                    <asp:DropDownList ID="drliTermNumber" runat="server" AutoPostBack="True" 
                        CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                        TabIndex="1" Width="100px">
                    </asp:DropDownList>


                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView2" />
                    </Triggers>
                </asp:UpdatePanel> 
          
                 
          
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                                <td align="left">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
            
           
                   
             
           
                                                    گروه دوره:</td>
                                                <td align="left">
            
           
                   
             
           
                    <asp:TextBox ID="txtpresentedTechEducationGroupNumber" runat="server" Width="100px" MaxLength="3" 
                        CssClass="validate[required,maxSize[3],minSize[1]]" Height="20px" TabIndex="2"></asp:TextBox>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    محل برگزاری:</td>
                                                <td align="left">
            
           
                   
             
           
                    <asp:TextBox ID="txtpresentedTechEducationLocation" runat="server" Width="100px" MaxLength="50" 
                        CssClass="InputControl" Height="20px" TabIndex="6"></asp:TextBox>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    هزینه دوره:</td>
                                                <td align="right">
            
           
                   
             
           
                    <asp:TextBox ID="txtpresentedTechEducationFee" runat="server" Width="100px" MaxLength="50" 
                        CssClass="InputControl" Height="20px" TabIndex="3"></asp:TextBox>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    تاریخ شروع:</td>
                                                <td align="right">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupStart" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="4" Width="79px" Height="20px"></pcal:PersianDatePickup>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    تاریخ پایان:</td>
                                                <td align="right">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupEnd" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="5" Width="79px" Height="20px"></pcal:PersianDatePickup></td>
                                            </tr>

                                            <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                            </tr>

                                           <tr>
                                                <td align="right">
            
           
                   
             
           
                                        ظرفيت کلاس:</td>
                                                <td align="left">
            
           
                   
             
           
                    <asp:TextBox ID="txtpresentedTechEducationTotalCapacity" runat="server" Width="100px" MaxLength="3" 
                        CssClass="validate[required,custom[integer],maxSize[3],minSize[1]]" Height="20px" TabIndex="7"></asp:TextBox>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    امتحان پايانی:</td>
                                                <td align="left">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupFinalTerm" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="8" Width="79px" Height="20px"></pcal:PersianDatePickup>
          
                 
          
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    ساعت</td>
                                                <td align="right">
            
           
                   
             
           
                                                    <asp:TextBox ID="txtpresentedTechEducationFinalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="9" Height="20px"></asp:TextBox></td>
                                                <td align="left">
            
           
                   
             
           
                                                    امتحان ميان ترم:</td>
                                                <td align="right">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupMidTerm" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="10" Width="79px" Height="20px"></pcal:PersianDatePickup>
                                                </td>
                                                <td align="left">
            
           
                   
             
           
                                                    ساعت</td>
                                                <td align="right">
            
           
                   
             
           
                                                    <asp:TextBox ID="txtpresentedTechEducationMidTermTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="11" Height="20px"></asp:TextBox>
                                                </td>
                                            </tr>

                                           <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="right">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="right">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                            </tr>

                                           <tr>
                                                <td align="right" valign="top">
                                                    امتحان عملي:</td>
                                                <td align="left" valign="top">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupPractical" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="14" Width="79px" Height="20px"></pcal:PersianDatePickup>
                                                    </td>
                                                <td align="left" valign="top">
            
           
                   
             
           
                                                    ساعت</td>
                                                <td align="right" valign="top">
            
           
                   
             
           
                                        <asp:TextBox ID="txtpresentedTechEducationPracticalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="15" Height="20px"></asp:TextBox></td>
                                                <td align="left" valign="top">
            
           
                   
             
           
                                                    تحويل تمرين:</td>
                                                <td align="right" valign="top">
            
           
                   
             
           
                                        <pcal:PersianDatePickup ID="PersianDatePickupExcercise" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="12" Width="79px" Height="20px"></pcal:PersianDatePickup>
                                                </td>
                                                <td align="left" valign="top">
            
           
                   
             
           
                                                    ساعت</td>
                                                <td align="right" valign="top">
            
           
                   
             
           
                                                    <asp:TextBox 
                                                    ID="txtpresentedTechEducationExerciseTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="13" Height="20px"></asp:TextBox></td>
                                                <td align="left" valign="top">
            
           
                   
             
           
                                                    توضیحات:</td>
                                                <td align="right" rowspan="3" valign="top">
            
           
                   
             
           
                    <asp:TextBox ID="txtpresentedTechEducationComments" runat="server" Width="102px" MaxLength="50" 
                        CssClass="InputControl" Height="46px" TabIndex="16" TextMode="MultiLine"></asp:TextBox>
          
                 
          
                                                </td>
                                            </tr>

                                           <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                                <td align="left">
            
           
                   
             
           
                                                    &nbsp;</td>
                                            </tr>
                                           <tr>
                                                <td align="right" valign="top">
                                                    &nbsp;</td>
                                                <td align="right" valign="top" colspan="7">
            
           
                   
             
           
                                                &nbsp;</td>
                                                <td align="right">
            
           
                   
             
           
                                                    &nbsp;</td>
                                            </tr>
                                           <tr>
                                                <td align="center" valign="top" colspan="10">

       <hr size="3px" 
             style="margin: 0px 0px -50px 0px; width: 100%; background-color: #0000FF;" /> 
       

                                                </td>
                                            </tr>
                                           </table>
            
           
    
             
           
                    </td>
            </tr>
                        
            </table>

                        
                        
                        
        <table width="100%" dir="rtl" class="TableMy860Width">
                            <tr>
                                <td align="left">

                        
                        
                        
                                    &nbsp;<div id = "dvGrid" dir="rtl">

              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                        
  <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ايجاد دوره" 
                        Width="70px" onclick="insertTechEducation" TabIndex="17" CssClass="Button" />
                                              
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                            EnableViewState="False" PageSize="3" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" 
                        DataKeyNames="presentedTechEducationID" >
                                                <RowStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right" 
                                                    Wrap="True" />
                                                <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField ConvertEmptyStringToNull="False" DataField="presentedTechEducationTitle" 
                                    HeaderText="عنوان دوره" ReadOnly="True">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="presentedTechEducationCode" HeaderText="کد دوره" >
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="presentedTechEducationFee" HeaderText="هزینه">
                                    <HeaderStyle HorizontalAlign="Right" />
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="presentedTechEducationTermNumber" HeaderText="ترم" />
                                <asp:BoundField DataField="presentedTechEducationStartDate" 
                                    HeaderText="شروع" />
                                <asp:BoundField DataField="presentedTechEducationEndDate" HeaderText="پایان" />
                                <asp:BoundField DataField="presentedTechEducationTeacherName" 
                                    HeaderText="استاد" />
                                <asp:BoundField DataField="presentedTechEducationTeacherLastName" />
                                <asp:BoundField DataField="presentedTechEducationLocation" 
                                    HeaderText="مکان" />

                                                                    <asp:BoundField DataField="presentedTechEducationTotalCapacity" 
                                    HeaderText="ظرفیت کل" />
                                                                    <asp:BoundField DataField="presentedTechEducationGroupNumber" 
                                    HeaderText="گروه" />
                                                                    <asp:BoundField DataField="presentedTechEducationMidTermDate" 
                                    HeaderText="میان ترم" />
                                                                    <asp:BoundField DataField="presentedTechEducationMidTermTime" />
                                                                    <asp:BoundField DataField="presentedTechEducationFinalDate" 
                                    HeaderText="پایان ترم" />
                                                                    <asp:BoundField DataField="presentedTechEducationFinalTime" />
                                                                    <asp:BoundField DataField="presentedTechEducationPracticalDate" 
                                    HeaderText="عملی" />
                                                                    <asp:BoundField DataField="presentedTechEducationFinalTime" />
                                                                    <asp:BoundField DataField="presentedTechEducationExerciseDate" 
                                    HeaderText="تمرین" />
                                                                    <asp:BoundField DataField="presentedTechEducationExerciseTime" />


                                <asp:BoundField DataField="presentedTechEducationComments" 
                                    HeaderText="توضیحات" />


       <asp:TemplateField> 
            <ItemTemplate>
                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument = '<%# Eval("presentedTechEducationID")%>' 
                 OnClientClick = "return confirm('حذف دوره را تایید می نمایید؟')"
                Text = "حذف" OnClick = "deletePresentedTechEducation"></asp:LinkButton>
            </ItemTemplate>

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
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>


          
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
                    </Triggers>
                </asp:UpdatePanel>
</div>
                                    
                                </td>
                            </tr>
              </table>


                                    

</div>
        
         <!-- Middle Column -->      
        
         
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
