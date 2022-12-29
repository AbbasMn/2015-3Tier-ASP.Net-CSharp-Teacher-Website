<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MP.Master" CodeBehind="Main.aspx.cs" Inherits="PresentationLayer.Main" %>

<%--<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>--%>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

<!------------------------------Game_slider---------------------------------------------->
<!------------------------------PopUp---------------------------------------------->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.reveal.js"></script>


<script type="text/javascript" src="js/Game_slider.js"></script>

<!------------------------------Game_slider---------------------------------------------->


<!--  ************************************************************************************************ -->         

        <%--<script src="Jqueries/Slider1js/jquery-1.6.1.min.js" type="text/javascript"></script>--%> 
        <script src="Jqueries/Slider1js/jquery-ui.min.js" type="text/javascript"></script>  
        <script src="Jqueries/Slider1js/SlideShow.js" type="text/javascript"></script>  
    
       <script type="text/javascript">
           $(document).ready(function () {
               $('.box_skitter_large').skitter({ auto_play: true, numbers: false, label: true, animation: 'random', hideTools: true });
           });
       </script> 

        <link href="Jqueries/Slider1css/SlideShow.css" type="text/css" rel="stylesheet"/>
 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
<!--  ************************************************************************************************ --> 
<link href="CssMy/mystylesNew.css" rel="stylesheet" type="text/css" media="all" />
    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
   


    <style type="text/css">
        


.LableMy
{
	
	font-size: 8pt;
	font-weight: normal;
	color: blue;
	margin:0 0px 0 0px
	/*background-color: #ffcc66;
	border-right: black 1px solid;
	border-top: black 1px solid;
	border-left: black 1px solid;
	border-bottom: black 1px solid;
	direction: rtl;*/
}


        .style1
        {
            clear: both;
            text-align: justify;
            width:98%;
            font-size:11pt;
        }


        </style>

<style>
.productDiv-wrapper{
/*border-radius: 10px;*/
border: 1px solid #aaa; /* #00b1b2*/
background-color:#eee;
margin-top:3px;
width:375px;
float:right;
margin-right:4px;
margin-bottom:5px;
padding-bottom:0px;
}    

  
  .productDiv h1 {  /* my */
clear: both;
margin-top: 5px !important;
margin-right:10px;
font-size: 22px !important;
line-height:25px;
padding-left:10px;
color:#0086b2;
direction:rtl;
text-align:justify;
float:right;
/*text-decoration:underline;*/
}


 .productDiv p  /* my */
 {
   margin:2px;
   text-align:justify;
   font-size:3px;
   width:350px;
   line-height:20px;
   padding-right:8px;
 
 }
 
  .productDiv footer  /* my */
 {
   margin-top: 30px;
   text-align:justify;
   width:375px;
 }

</style>

</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


       <!-------------------- Slider --------------------------->
<div class="slideShowBody">
                                  <div class="slideShowBox">
                                    <div class="box_skitter box_skitter_large">
                                        
                                      <ul style="display: none;">
                                                
                                      <asp:Repeater id="Repeater1" runat="server">
                                    
                                    <HeaderTemplate>
                                    </HeaderTemplate>        
                                
                                    <ItemTemplate>                          
                                            
                                                <li><a href="">

                                                    <img src="UserUploadedPictures/<%#Eval("PictureName")%>"></a>

                                                    
                                                    <div class="label_text">
                                                    
                                                        <p dir="rtl" style="margin-top:9px; font-size: 9pt;  color:#FFFFFF; font-weight:bold; text-align: justify; text-indent: 10px;"> 
                                                               
                                                               <%#Eval("PictureTitle")%> 
                                                        </p>
                                                        
                                                        <p dir="rtl" style="margin-top:-5px; font-size: 9pt;  color: #FFFFFF;font-weight:normal;  text-align: justify; text-indent: 10px;">
                                                               <%#Eval("PictureLocation")%>&nbsp;&nbsp;<%#Eval("PictureDate")%>&nbsp;&nbsp;<%#Eval("PictureDescription")%></p>
                                                        <%--<%#Eval("PictureOwnerName")%> <%#Eval("PictureOwnerLastName")%>--%>
                                                        <p></p>
                                                    </div>
                                                </li>

                                  </ItemTemplate>
                                  
                                  <FooterTemplate>

                                  </FooterTemplate>
                                   
                                </asp:Repeater>
                                            
                                      </ul>
                                            
                                        
                                      <a class="prev_button" style="display: block;">prev</a>
                                      <a class="next_button" style="display: block;">next</a>
          
                                    </div>
                                  </div>
                            
                            
                            
                            </div>

<!-------------------- Slider --------------------------->




<div class="productDiv-wrapper" style="height:500px;">         
   
                    <div class="productDiv-right">


                    <div class="productDiv">
                        <h1>

                          
                            <asp:Label ID="lbl" Visible="true"  runat="server" Text="معرفی نرم افزار" CssClass="BYekanMy" Font-Size="22px"></asp:Label>


                            
                        </h1>


                        <br />
                        <br />

                        <div class="Game_slider" style="height:447px;" >


                            <asp:Repeater id="repeater3" runat="server">
                 
                 <HeaderTemplate>
                     <ul class="spy">                
                 </HeaderTemplate>
                 
                 <ItemTemplate>                 
                              <li>
                              <p class="info" style="text-align:justify; width:165px; font-weight:bold;"><%#Eval("newsTitle")%></p>
                              <a href="<%#Eval("newsRelatedLink")%>">
                                    <img src="NewsImages/<%#Eval("newsPictureName")%>" width="180px" height="102px" style="margin-top:2px;"></a>                                  
                                                                      
                             </li>                                                                    
                     
                  </ItemTemplate>
                 
                 <FooterTemplate>
                     </ul>                
                 </FooterTemplate>
                 
                 </asp:Repeater>
                         </div>

                      
                        
                        <footer>

                              <div class="short3ColumnParent" style="margin-right:1.5px; margin-bottom:15px;">




</div>                         

                        </footer>

                        
                         
                    </div>

          

                    </div>


                    <div style="clear:both;"></div>
</div>



<div class="productDiv-wrapper" style="height:500px;">         
   
                    <div class="productDiv-right">


                    <div class="productDiv">
                        <h1>

                          
                            <asp:Label ID="Label2" Visible="true"  runat="server" Text="آموزش " CssClass="kalaTitle" Font-Size="22px" Font-Names="BYekan"></asp:Label>


                            
                        </h1>

                        <br />
                        <br />

                        <div class="Game_slider" style="height:447px;">


                            <asp:Repeater id="repeater4" runat="server" 
                                onitemcommand="repeater4_ItemCommand">
                 
                 <HeaderTemplate>
                     <ul class="spy">                
                 </HeaderTemplate>
                 
                 <ItemTemplate>                 
                     
                              <li >
                                    <%--<a href="<%#Eval("newsRelatedLink")%>"><img src="NewsImages/<%#Eval("newsPictureName")%>" width="80px" height="60px"></a>--%>                                  
                                     
                                     <p class="info" style="font-size:12pt; font-weight:bold;">
                                     آموزش  <asp:Label runat="server" id="lbltechEducationTitle" Text=<%#Eval("presentedTechEducationTitle")%>></asp:label>
                                     </p>

                                     <%--<p>&nbsp;&nbsp;</p>--%>
                                     

                                     <p class="info" style="font-size:10pt; font-weight:bold;">کد آموزش: <asp:Label runat="server" id="lbltechEducationCode" Text=<%#Eval("presentedTechEducationCode")%>></asp:label> 
                                     &nbsp;&nbsp;&nbsp;&nbsp
                                     کد دوره: <asp:Label runat="server" id="lbltechEducationID" Text=<%#Eval("presentedTechEducationID")%>></asp:label> 
                                     
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     
                                     
                                     <%--CommandName="goToShowGallery"--%>
                                     <asp:LinkButton ID="LinkButton1" CommandName="goRegister" runat="server" style="font-size:11pt; font-weight:bold;"
                                             CausesValidation="False" ForeColor="green">ثبت نام</asp:LinkButton>
                                     </p>
                                     
                                     <p class="info" style="font-size:9pt; font-weight:bold;">دانسته های مورد نیاز:  <%#Eval("techEductionPrerequisits")%></p>
                              </li>                                                                    
                     
                  </ItemTemplate>
                 
                 <FooterTemplate>
                     </ul>                
                 </FooterTemplate>
                 
                 </asp:Repeater>
                         </div>

                      

                        <footer>

                              <div class="short3ColumnParent" style="margin-right:1.5px; margin-bottom:15px;">




</div>                         

                        </footer>

                        
                         
                    </div>

          

                    </div>


                    <div style="clear:both;"></div>
</div>





<asp:Repeater id="repeater2" runat="server">
                
                <HeaderTemplate>                   
                    <table id="Table1" border="0" cellspacing="0" align="center" width="750px"
               dir="rtl"  style="margin-top: 0px">


                               
                </HeaderTemplate>
    
                <ItemTemplate>



              <tr>
                  
                      <td  align="center" valign="top">

                                     <font style="font-weight: bold; direction:rtl;  color: #0000FF; font-size:12pt;" >
                                      <%#Eval("newsTitle")%>&nbsp;(<%#Eval("newsType")%>)</font></td>                 
                 
              </tr>

               <tr>
                  
                 
                 
                      <td width="92%" align="center" valign="top">
                      <a href="<%#Eval("newsRelatedLink")%>" target="_blank">
                                       <img src="NewsImages/<%#Eval("newsPictureName")%>" width="600px" 
                                        height="250px" />
                      </a>
                                       
                                       
                                  
                      </td>



              </tr>

                    
              <tr>
                  
                      <td align="right" valign="top"  width="100%" >
                                  
                                  
                            <div class="style1">
                                    <%#Eval("newsPassage")%>
                            </div>                 
                                      
                           
                           
                      </td>                
                 
              </tr>                                

                     
                 </ItemTemplate>
                 
              <FooterTemplate>
                 </table>
              </FooterTemplate>
            </asp:Repeater>



<%-- <div class="footerDF">
    <div class="cntFooterDF">
    <div class="titleGreen">کارشناسی ارشد نرم افزار</div>
                    
                    تدریس دروس جبرانی<br />
        مشاوره در ارائه سمینار&nbsp; کلاسی<br />
        نگارش پایان نامه و سمینار پایانی<br />
        رشته های
                    مهندسی کامپیوتر -
                    نرم افزار
                    و فناوری اطلاعات
        <br />
        <br />
        <b>به زودی ...  </b>&nbsp;<br>
                    <br />
                    <br>
                    <div class="divImgFooter">
                        <a class="blueText lnk" style="border: 0px" target="_blank" href="Image/Resume.pdf">
                            &nbsp;</a></div>
                </div>

<div class="cntFooterDF">
<div class="titleBlack">کارشناسی مهندسی کامپیوترر</div>
                    

                    تدریس دروس تخصصی
    <br />
    آموزش زبانهای برنامه نویسی<br />
    مشاوره در پروژه کارشناسی<br />
    رشته های
                    مهندسی کامپیوتر -
                    نرم افزار
                    و فناوری اطلاعات<br>
                </div>

</div>



 <div class="footerDF">
    <div class="cntFooterDF">
    <div class="titleGray">جستجو&nbsp; و ارائه مقالات علمی و تخصصی </div>
                    
                    <strong>مقالات تخصصی کاربردی در:</strong><br />
        ارائه سمینار&nbsp; کلاسی<br />
        پایان نامه و سمینار پایانی<br />
        رشته های
                    مهندسی کامپیوتر -
                    نرم افزار
                    و فناوری اطلاعات<br />
        <br />
        <b>به زودی ...  </b>&nbsp;<br>
                    &nbsp;<br>
                </div>

<div class="cntFooterDF">
<div class="titleYellow">طراحی وب سایت و نرم افزار</div>                    
                    <br />
    <br />
    <b>به زودی ...  </b>&nbsp;<br>
                </div>
</div>--%>


                          <div class="clear"></div>
                    </div><!--Col1-->
<!--------------------------------------- COL-2 ----------------------------------------------------------->
 <div class="col2"> 
 <!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>ورود کاربران</h5>
<div style="clear:both">
        


    <table align="center" width="100%" id="tableLogin"  runat="server">
                  
                  
          
                        
                        <tr>
                        <td align="right" width="100%" >
                
   
  
                  <asp:Label ID="lblUserName" runat="server" 
                    Text="نام کاربري:" ></asp:Label>
            &nbsp;</td>
                        <td align="center" width="100%" >
                            </strong>
                            
                            <asp:TextBox ID="txtUserName" runat="server" 
                        ToolTip="نام کاربری را وارد کنید" Width="110px" MaxLength="20" 
                                TabIndex="1" KeyDown="OnKeyDownHandler" Skin="WebBlue" 
                                CssClass="LoginInputControl"></asp:TextBox></td>
                            </tr>
                  
                  
          
                        
                        <tr>
                      <td 
                                                align="right" width="100%" >
  
   
  
                  <asp:Label ID="lblPassword" runat="server" 
                    Text="کلمه عبور:" ></asp:Label>
            &nbsp;</td>
                      <td 
                                                align="left" width="100%" >
                                            <asp:TextBox ID="txtPassword" runat="server" 
                        TextMode="Password" ToolTip="کلمه عبور را وارد کنید" Width="110px" MaxLength="20" 
                                                TabIndex="2" Skin="WebBlue" CssClass="LoginInputControl"></asp:TextBox></td></tr><tr>
                          <td 
                                                align="right" width="100%" >
  
   
  
                  <asp:Label ID="lblUserType" runat="server" 
                    Text="نوع کاربر:" ></asp:Label>
            &nbsp;</td>
                          <td 
                                                align="center" width="100%" >
                    
                              <asp:DropDownList ID="dropdownUserType" runat="server" Width="110px" 
                                  CssClass="LoginInputControl">
                                  <asp:ListItem>دانشجو</asp:ListItem>
                                  <asp:ListItem>استاد</asp:ListItem>
                                  <asp:ListItem>مدیر</asp:ListItem>
                              </asp:DropDownList>
                    
                    <%--<telerik:RadComboBox ID="dropdownUserType" runat="server" 
                        Width="115px" TabIndex="3"   Skin="WebBlue">
                        <Items>

                                    <telerik:RadComboBoxItem runat="server" Text="دانشجو" 
                                        Value="دانشجو" Owner="drliUserStudentEducationLevel" />

                                    <telerik:RadComboBoxItem runat="server" Text="استاد" 
                                        Value="استاد" Owner="drliUserStudentEducationLevel" />

                                    <telerik:RadComboBoxItem runat="server" Text="مدیر" 
                                        Value="مدیر" Owner="drliUserStudentEducationLevel" />

                        </Items>

                    </telerik:RadComboBox>--%></td></tr><tr>
                      <td 
                                                align="left" width="100%" colspan="2" >
                                            &nbsp;&nbsp; 
                
                <asp:Label ID="lblMessage" runat="server" Font-Bold="False" ></asp:Label> 
                
                            
                            <asp:Button ID="btnLogin" runat="server" CssClass="Button" 
                        OnClick="btnLogin_Click" 
                        Style="border-color: black; border-width: 1px; margin-right: 0px; height: 24px;" 
                        Text="ورود" Width="44px" TabIndex="4" />
                                            </td></tr>
                        </table>
        

<table align="center" width="100%" id="tableWelcome" runat="server">
                  
                  
          
                        
                        <tr>
                        <td align="center" width="100%" style="width: 200%" >
                
   
  
                  <asp:Label ID="lblWlcome1" runat="server" 
                    Text="نام کاربري:"  Font-Bold="True"  
                                  ForeColor="Black"></asp:Label>
                            </td>
                            </tr><tr>
                      <td 
                                                align="center" width="100%" 
                                style="width: 200%" >
  
   
  
                  <asp:Label ID="lblWlcome2" runat="server" 
                    Text="نام کاربري:"  Font-Bold="False"  
                                  ForeColor="Black"></asp:Label>
                            </td>
                        </tr><tr>
                          <td 
                                                align="center" width="100%" 
                                style="width: 200%" >
  
   
  
                  <asp:Label ID="lblWlcome3" runat="server" 
                    Text="نام کاربري:"  Font-Bold="False"  
                                  ForeColor="Black"></asp:Label>
                            </td>
                          </tr>
                        <tr>
                          <td 
                                                align="center" width="100%" 
                                style="width: 200%" >
  
   
  
                              <asp:LinkButton ID="LinkBtnLogOut" runat="server" CssClass="LinkButtonMy" 
                                  onclick="LinkBtnLogOut_Click">خروج</asp:LinkButton>
                            </td>
                          </tr>
                        </table>
            
                </div> 
</div> 
                 

<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>کامپیوتر و فناوری اطلاعات</h5>
<div style="clear:both"></div> 

<marquee dir="rtl"  behavior="alternate"  direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>

<div align="center">
<p align="right" style="margin-right:5px;">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="newsID" 
                                                             onitemcommand="DataList1_ItemCommand" Width="100%" 
                                                             RepeatDirection="Horizontal" RepeatLayout="Flow">

    <ItemTemplate>

    
           <img src="pic/Icon/s-flash5.gif">
            <%--<asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled"  ></asp:LinkButton>--%>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000"  ></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  

<!--------------------------- Links -------------------------------------->


<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>مکانیک خودرو</h5>
<div style="clear:both"></div> 

<marquee dir="rtl"  behavior="alternate"  direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>

<div align="center">
<p align="right" style="margin-right:5px;">
 <asp:DataList ID="DataList3" runat="server" DataKeyField="newsID" 
                                                             onitemcommand="DataList3_ItemCommand" Width="100%" 
                                                             RepeatDirection="Horizontal" RepeatLayout="Flow">

    <ItemTemplate>

    
           <img src="pic/Icon/s-flash5.gif">
            <%--<asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled"  ></asp:LinkButton>--%>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000"  ></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  

<!--------------------------- Links -------------------------------------->


<div class="Links">
<h5>آمار سایت</h5>
<table dir="rtl" width="100%" frame="void">
        <tr>
            <td align="right" valign="top">
                تاریخ امروز:</td>
            <td align="right" valign="top">
  
   
  
                  <asp:Label ID="lblToday" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                بازدید امروز:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipTodayLoginsCounter" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                حاضرین در سایت:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipOnlineCounter" runat="server" Text="Label" 
                    ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                 
                 اعضای سایت:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipCounter" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                کل بازدیدها:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipTotalLoginsCounter" runat="server" Text="Label" 
                    ></asp:Label>
            </td>
        </tr>
        </table>
</div> 



<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>بازدیدهای امروز</h5>

<marquee dir="rtl"  behavior="alternate"  direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>

<div align="center">
<p align="right">

                                    <asp:DataList ID="DataList2" runat="server" 
                                                            Width="100%" 
                                                             >
                                                             
                                                           <ItemTemplate>
                                               
                                                       <img  width="8px" height="8px" src="images/Icons/<%#Eval("UserStudentOnline")%>.gif" style="margin-top:3px; margin-right:-1px; " />
                                                    
                                                    
                                                  
                                                           <%#Eval("UserStudentLastName")%>
                                                           <%#Eval("UserStudentName")%>
                                                    

                                                

                                                
                                                          </ItemTemplate>
                                                      </asp:DataList>

                                            
</p>
</div></marquee>
</div> 

</div><!--Col2-->

<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

