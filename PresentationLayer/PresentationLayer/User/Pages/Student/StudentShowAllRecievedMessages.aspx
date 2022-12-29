<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentShowAllRecievedMessages.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentShowAllRecievedMessages" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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





</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
       <div id = "dvGrid" dir="rtl" align="center">        
                     
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 

                <table align="center">
                <tr>
                    <td align="right">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
           <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                 
          
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="0" 
                            CellSpacing="0" CssClass="LableMy" RepeatColumns="3" 
                            RepeatDirection="Horizontal" TextAlign="Left" Width="80%" 
                            AutoPostBack="True" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; همه پيامها</asp:ListItem>
                            <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; پيامهاي پاسخ داده شده</asp:ListItem>
                            <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; پيامهاي پاسخ داده نشده</asp:ListItem>
                        </asp:RadioButtonList>
            
           
                   
             
           
                        </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                   <asp:Repeater id="repeater1" runat="server" onitemcommand="repeater1_ItemCommand">
                 
               <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                                  <div class="internalDivMessageMy">
                            <a class="internalDivMessageMylogo" ></a><a class="internalDivMessageMylogoTittle" >
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID" Visible="false"  runat="server" Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageMy">

                            <pMessageMy>
                                <label id="lbl1" class="LableMy"> پيام:</label>
                                
                                   <%#Eval("messagePassage")%> 
                            </pMessageMy>
                            
                             
                    <a class="internalDivMessageMyfooterlogoLeft">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="goToResponse" 
                                ImageUrl="~/PresentationLayer/images/Icons/widget-comment.png" 
                                ToolTip="پاسخ دادن به پيام" />
                   </a>

                                 <hr class="internalDivLineMessageMy" />
                                                           
                            <pMessageMy>
                            <label id="lbl3" class="LableMy"> فرستنده:</label>
                            <%#Eval("messageSenderName")%> <%#Eval("messageSenderLastName")%> - <%#Eval("messageDate")%>
                            </pMessageMy>

                              
                            <hr class="internalDivLineMessageMy" /> 
                            <pMessageMy>
                            <label id="lbl2" class="LableMy">پاسخ شما: <%#Eval("messageResponseDate")%></label>
                            <br />
                               <%#Eval("messageResponsePassage")%> 
                               
                            </pMessageMy>                            
                            

                                
                            
                        </div>
                  </ItemTemplate>
                 
                 <FooterTemplate>
                 
                 </FooterTemplate>
                 
                 </asp:Repeater>
          
                    </td>
                </tr>
                
                              

                <tr>
                    <td align="center">
          
                 
          
                        
                        
          
                 
          
                        
                        
                                
          
                 
          
                        
                        
          
                 
          
                        
                        
                                </td>
                </tr>  
                
                              

            </table>


                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="RadioButtonList1" />
                    </Triggers>
                </asp:UpdatePanel>
            
           
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

