<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentTakeCourseGroup.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentTakeCourseGroup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">


<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>



<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->

    <!------------------------------CSS---------------------------------------------->
        
    <link rel="Stylesheet" type="text/css" href="../../../css/StyleMain.css" />
    <link href="../../../CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   

    

<!------------------------------JQUERY---------------------------------------------->
<!------------------------------PopUp---------------------------------------------->
<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.reveal.js"></script>

<!------------------------------Game_slider---------------------------------------------->
<script type="text/javascript" src="../../../js/Game_slider.js"></script>

<!------------------------------Top-Scroll---------------------------------------------->
<script type="text/javascript" src="../../../js/Top-Scroll.js"></script>





</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>    
<%--
        <!-- floatcontainer -->
	
    <div class="body_wrapper2" dir="rtl>

	
	<div id="content_container2" class="contentright" style="margin-left: 0px;">
		<div id="content2" style="margin-left: 0px;">
	
        
	        <ol id="forums2" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat2">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a href="http://">نکات مهم</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_2" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_2" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum2" class="forumbit_post">
                                    <div class="forumrow">
                                    

              <ul class="list1">
                    <li><a>انتخاب واحد هميشه براي ترم جاري قابل انجام است.</a></li>
                     <li><a>براي انتخاب هر درس، آن را تک زده سپس بر روي دکمه ذخيره کليک کنيد.</a></li>
                     <li><a>هر درس فقط يک بار قابل انتخاب است.</a></li>
                     <li><a>براي حذف درس انتخاب شده از ليست دروس انتخابي، ابتدا آن را تيک زده و سپس بر روي دکمه حذف کليک کنيد. </a></li>
                    <li><a> <b>تذکر مهم </b>:دروسي که براي آنها نمره اي توسط استاد وارد شده است و نيز در مورد آنها پيامي ارسال يا دريافت شده باشد، غير قابل حذف هستند.</a></li>
             </ul>

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer -->   --%>    
             

            <table align="center" width="500px" class="TableMy">
                <tr>
                    <td align="right" valign="top">
                        <strong>انتخاب ترم:&nbsp;</strong> 

    
                                <asp:DropDownList ID="drliTermNumber" runat="server" 
                                Width="124px" CssClass="InputControl" DataTextField="SemisterNumber" 
                                    Height="22px" AutoPostBack="True" 
                            ontextchanged="drliTermNumber_TextChanged">
                            </asp:DropDownList>




                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
           <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                </td>
                </tr>
                
                                              

                <tr>
                    <td align="center" valign="top">

                              
                        <strong>
                        نمودار تعداد دانشجو ی هر درس</strong><asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>                               
    <asp:PieChart ID="PieChart1" runat="server" Width="100%" ChartWidth = "700px" ChartHeight="200" 
                         BorderStyle="None" Font-Names="Tahoma" Font-Size="7pt"></asp:PieChart>



                      <asp:BarChart ID="BarChart1" runat="server"  ChartHeight="200" 
        ChartWidth = "700px" Width="100%" Visible = "false" EnableTheming="True" 
                        Font-Names="tahoma" Font-Size="7pt"
        CategoryAxisLineColor="#D08AD9" 
        ValueAxisLineColor="#D08AD9" BorderStyle="None">

    </asp:BarChart>

                     </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="drliTermNumber" />
                    </Triggers>
                </asp:UpdatePanel>
                        
           
                   
             
           
                                </td>
                </tr>
                
                                              

                </table>
    
           
<div id = "dvGrid" dir="rtl" align="center">
    
            <table align="center" width="500px" class="TableMy">
                <tr>
                    <td align="left" valign="top">

              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 
    
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" 
                                Font-Size="8pt" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                                BorderWidth="1px" Width="100%" DataKeyNames="RowID" ForeColor="Black">
                                 
                                 
                                 <RowStyle HorizontalAlign="Right" Wrap="True" Font-Names="Tahoma" 
                                        Font-Size="8pt" />
                                    <AlternatingRowStyle BackColor="#FFFFFF" />
                                <Columns>

                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server" 
                                        CommandArgument='<%# Eval("RowID")%>' OnClick="takeCourse" 
                                         Text="انتخاب"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>
                           
                            </asp:TemplateField>
<%--                                <asp:TemplateField HeaderText="انتخاب">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose0" runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle Width="15px" />
                                </asp:TemplateField>--%>
                                <asp:BoundField DataField="CourseName" HeaderText="نام درس" />
                                <asp:BoundField DataField="GroupNumber" HeaderText="گروه درس" />
                                <asp:BoundField DataField="EducationLevel" HeaderText="مقطع درس" />
                                <asp:BoundField DataField="CourseType" HeaderText="نوع درس" />
                                <asp:BoundField DataField="TeacherLastName" HeaderText="استاد" />
                                <asp:BoundField DataField="CourseTheoryUnit" HeaderText="واحد تئوري" />
                                <asp:BoundField DataField="CoursePracticalUnit" HeaderText="واحد عملي" />
                                <asp:BoundField DataField="ClassTotalCapicity" HeaderText="ظرفيت کلاس" />
                            </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="7pt" ForeColor="White" Font-Names="Tahoma" HorizontalAlign="Center" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>

                 </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="drliTermNumber" />
                    </Triggers>
                </asp:UpdatePanel>

    
                                </td>
                </tr>

                <tr>
                    <td align="right">
                        

                      
                        <strong>
                        

                      
                        دروس انتخابي:</strong></td>
                </tr>

            </table>

       
    
            <table align="center" class="TableMy">
                
                <tr>
                    <td align="left" valign="top">

     
          
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>             
          
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" 
                                Font-Size="8pt" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                                BorderWidth="1px" Width="100%" DataKeyNames="RowID" ForeColor="Black" 
                                    GridLines="Both">
                                 
                                 
                                 <RowStyle HorizontalAlign="Right" Wrap="True" Font-Names="Tahoma" 
                                        Font-Size="8pt" />
                                    <AlternatingRowStyle BackColor="#FFFFFF" />
                                <Columns>

                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server" 
                                        CommandArgument='<%# Eval("RowID")%>' OnClientClick = "return confirm('حذف درس انتخاب واحد شده را تایید می نمایید؟')" OnClick="deleteTakeCourse" 
                                         Text="حذف"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>

                                </asp:TemplateField>
<%--                                <asp:TemplateField HeaderText="حذف">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose" runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle Width="15px" Wrap="True" />
                                </asp:TemplateField>--%>
                                <asp:BoundField DataField="TakeCourseCourseName" 
                                    ConvertEmptyStringToNull="False" HeaderText="نام درس" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseUniversityNameCourseNameYearTermGroupNumber" 
                                    HeaderText="ترم تحصيلي" >
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupNumber" 
                                    HeaderText="گروه">
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseEducationBranchName" HeaderText="رشته" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseEducationLevel" HeaderText="مقطع" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseType" 
                                    HeaderText="نوع" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherName" 
                                    HeaderText="استاد" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherLastName" >
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                            
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="7pt" ForeColor="White" Font-Names="Tahoma" 
                                HorizontalAlign="Center" />
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

  
                                        </td>
                </tr>
                
                
            </table>

</div>

<!-------------------- Product ---------------------------><!--mobile-content--><div class="clear"></div>
<!-------------------- Product --------------------------->
    <!--mobile-content-->
                          <div class="clear"></div>
                    </div><!--Col1-->
<!--------------------------------------- COL-2 ----------------------------------------------------------->
 <div class="col2">                 

<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>اخبار</h5>
<div style="clear:both"></div> 
<marquee dir="rtl"  behavior="alternate" direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>
<div align="center">
<p align="right">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="newsID" 
                                                             onitemcommand="DataList1_ItemCommand" Width="100%" 
                                                             RepeatDirection="Horizontal" RepeatLayout="Flow">

    <ItemTemplate>

    
           <img src="../../../pic/Icon/s-flash5.gif">
            <asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled" Font-Names="tahoma" Font-Size="8pt"></asp:LinkButton>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000" Font-Names="tahoma" Font-Size="8pt"></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  


 <div class="clear"></div>             

	

	

</div><!--Col2-->



<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

