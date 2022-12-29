<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentsCoursesMarks.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentsCoursesMarks" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%--<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>--%>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

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



<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>



<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->

</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
             <!-- floatcontainer -->
	
    <div class="body_wrapper2" dir="rtl">

	
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
                    <li><a>تنها نمرات ترم جاري قابل مشاهده است.</a></li>
                     <li><a>نمره نهايي درس = نمره ميان ترم + نمره پايان ترم + نمره تمرين + نمره عملي</a></li>
                     <li><a>نمره تجديد نظر، نمره ايست که پس از بررسي اعتراض توسط استاد وارد مي گردد.</a></li>
                     <li><a>براي ثبت اعتراض به نمره، روي لينک     <span class="style1">اعتراض
</span> کليک نماييد. </a></li>
                    
             </ul>

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer -->         
             
           
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

     <div id = "dvGrid" dir="rtl">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
    
            <table align="center" Class="TableMy">
                <tr>
                    <td align="right" class="style2">
                        &nbsp;</td>
                    <td align="right" colspan="2">
                        &nbsp;</td>
                </tr>

                <tr>
                    <td align="right" class="style2">
                        انتخاب ترم :&nbsp;
                        <asp:DropDownList ID="drliTermNumber" runat="server" AutoPostBack="True" 
                            CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                            ontextchanged="drliTermNumber_TextChanged" Width="124px">
                        </asp:DropDownList>
                        &nbsp;</td>
                    <td align="right" colspan="2">
                        <asp:Label ID="lblMatn" runat="server" CssClass="LableMy" Font-Bold="True" 
                            Font-Size="9pt" ForeColor="Black">متن اعتراض: </asp:Label>
                        &nbsp;<strong><asp:Label ID="lblRowID" runat="server" CssClass="LableMy" 
                            Visible="False"></asp:Label>
                        </strong>&nbsp;<asp:Label ID="lblCourseName" runat="server" CssClass="LableMy" 
                            Font-Bold="True"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td align="right" class="style2">
                        <asp:Label ID="lblError" runat="server" CssClass="LableMy" Font-Bold="True"></asp:Label>
                    </td>
                    <td align="left" rowspan="3" valign="top">
                        <asp:TextBox ID="txtProtest" runat="server" CssClass="InputControlBigMultiLine" 
                            Height="54px" MaxLength="100" TextMode="MultiLine" Width="254px"></asp:TextBox>
                        &nbsp;
                    </td>
                    <td align="left" rowspan="3" valign="top">
                        <asp:Button ID="Button1" runat="server" CssClass="Button" Height="26px" 
                            onclick="Button1_Click" Text="ثبت اعتراض" Width="63px" />
                    </td>
                </tr>

                <tr>
                    <td align="right" class="style2">
                        &nbsp;</td>
                </tr>

                <tr>
                    <td align="right" class="style2">
                        <strong>دروس اخذ شده</strong></td>
                </tr>

                <tr>
                    <td align="right" colspan="3">

          
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" 
                                Font-Size="8pt" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                                BorderWidth="1px" Width="100%" DataKeyNames="RowID" ForeColor="Black" 
                                    GridLines="Both">
                                 
                                 
                                 <RowStyle HorizontalAlign="Right" Wrap="False" Font-Names="Tahoma" 
                                        Font-Size="8pt" VerticalAlign="Middle" />
                                    <AlternatingRowStyle BackColor="#FFFFFF" />
                                <Columns>

                                <asp:BoundField ConvertEmptyStringToNull="False" DataField="TakeCourseCourseName" 
                                    HeaderText="نام درس" ReadOnly="True">
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherLastName" 
                                    HeaderText="استاد" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                           
                                
                                <asp:BoundField DataField="TakeCourseMidTermMark" HeaderText="ميان ترم" >
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseFinalMark" HeaderText="پايان ترم" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCoursePracticalMark" HeaderText="نمره عملي" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseExerciseMark" HeaderText="نمره تمرين" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseUltimateMark" HeaderText="نمره نهايي" >
                                
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
 
                                 <asp:TemplateField>
                                
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server" VerticalAlign="Middle"
                                        CommandArgument='<%# Eval("RowID")%>'  OnClick="makeProtest" 
                                         Text="اعتراض" ></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>

                                     <ItemStyle VerticalAlign="Middle" />

                                </asp:TemplateField>                              
                                
                                
                                <asp:BoundField DataField="TakeCourseUltimateMarkAfterReview" 
                                    HeaderText="تجديد نظر">
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                                
                                <asp:TemplateField HeaderText="متن اعتراض">
                                 <ItemTemplate>
                                            <asp:TextBox ID="txtComplainText" runat="server" 
                                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#990000" Height="20px" 
                                            Text='<%#Eval("TakeCourseComplainText")%>' TextMode="MultiLine" Width="110px" 
                                                EnableViewState="False" ReadOnly="True"></asp:TextBox>
                                 </ItemTemplate>                                
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                    <ItemStyle Wrap="False" />
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="پاسخ اعتراض">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtComplainResponse" runat="server" Enabled="False" 
                                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#990000" Height="20px" 
                                            Text='<%#Eval("TakeCourseComplainResponse")%>' TextMode="MultiLine" 
                                            Width="110px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                </asp:TemplateField>
                                
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

           
                  </div>
           
                                <br />
                                <br />
                                <%--<telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" 
                                    GridLines="Both" Skin="Outlook" AllowSorting="True" 
                                    Font-Names="Tahoma" Font-Size="8pt" Height="119px" HorizontalAlign="Right" 
                                    ShowStatusBar="True">
                                    <ClientSettings ActiveRowIndex="0" AllowColumnHide="True" 
                                        ReorderColumnsOnClient="True">
                                        <Selecting AllowRowSelect="True" />
                                    </ClientSettings>
                                    <MasterTableView>
                                        <RowIndicatorColumn>
                                            <HeaderStyle Width="20px" />
                                        </RowIndicatorColumn>
                                        <ExpandCollapseColumn>
                                            <HeaderStyle Width="20px" />
                                        </ExpandCollapseColumn>
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="TakeCourseCourseName" HeaderText="نام درس" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="CourseGroupTeacherLastName" HeaderText="استاد" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="CourseGroupTeacherName" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCourseMidTermMark" HeaderText="ميان ترم"  UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCourseFinalMark" HeaderText="پايان ترم" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCoursePracticalMark" HeaderText="نمره عملي" UniqueName="column">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="TakeCourseExerciseMark" HeaderText="نمره تمرين" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCourseUltimateMark" HeaderText="نمره نهايي" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCourseComplainText" HeaderText="متن اعتراض" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TakeCourseComplainResponse" HeaderText="پاسخ اعتراض" UniqueName="column">
                                            </telerik:GridBoundColumn>

                                        </Columns>
                                    </MasterTableView>
                                    <HeaderStyle Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" 
                                        HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ActiveItemStyle Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" 
                                        ForeColor="Red" />
                                    <ItemStyle Font-Names="Tahoma" Font-Size="8pt" HorizontalAlign="Right" />
                                    <SelectedItemStyle Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt" 
                                        ForeColor="#FF0066" HorizontalAlign="Right" />
                                </telerik:RadGrid>--%>
           
                                <br />
           
                                </td>
                </tr>


            </table>
    
                     </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="drliTermNumber" />
                    </Triggers>
                </asp:UpdatePanel>
                       
                 

                        <%--<asp:Panel ID="Panel1" runat="server" Height="149px">--%><%-- </asp:Panel>--%>
             
           
        </div>

&nbsp;<!-------------------- Product ---------------------------><!--mobile-content--><div class="clear"></div>
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

