<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentPublic.Master" CodeBehind="StudentRegistration.aspx.cs" Inherits="PresentationLayer.User.Pages.StudentRegistration" %>




<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!-- Ajax Validation Scripts -->
  
<%--<script type = "text/javascript" src = "../../AJAXScripts/jquery-1.3.2.min.js"></script>
<script type = "text/javascript" src = "../../AJAXScripts/jquery.blockUI.js"></script>

 <link href="../../ApplicationalJQUERIES/JQueryValidation/ValidationEngine.css" rel="stylesheet" type="text/css" />

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
    </script>--%>
  
  
  <!-- Ajax Validation Scripts -->


    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="../../css/StyleMain.css" />
    <link href="../../CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   

    

<!------------------------------JQUERY---------------------------------------------->
<!------------------------------PopUp---------------------------------------------->
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../js/jquery.reveal.js"></script>

<!------------------------------Game_slider---------------------------------------------->
<script type="text/javascript" src="../../js/Game_slider.js"></script>

<!------------------------------Top-Scroll---------------------------------------------->
<script type="text/javascript" src="../../js/Top-Scroll.js"></script>





    </asp:Content>



<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="right">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">

<asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>

                               
<table align="center" class="TableMy">
<tr>
                        <td align="right" colspan="4"   >
          
                 
          
                            <strong>نکته مهم:</strong> د<span  style="outline: 0;">و نوع عضويت در سايت، درنظر گرفته شده است.
                            <br />
                            <br />
                            &nbsp;&nbsp; 1-&nbsp; <strong>عضويت دانشجويي:</strong> براي دانشجوياني که در ترم جاري با اينجانب درسي را گرفته اند. در صورت انتخاب 
                            اين نوع عضويت، شما مي توانيد از امکانات انتخاب واحد 
                            و&nbsp; ساير&nbsp; امور آموزشي سايت استفاده نماييد.<br />
                            <br />
                            &nbsp; 2-&nbsp; <strong>عضويت&nbsp; افتخاري: </strong>براي دانشجوياني که فارغ التحصيل شده اند و يا دوستاني که تمايل دارند در سايت عضو شوند. در صورت انتخاب اين نوع عضويت، شما مي توانيد از امکانات سايت، بجز انتخاب واحد و امور مربوط به آن استفاده 
                            نماييد.<br />
                            <br />
                            <strong>ورود اطلاعات: </strong>وارد نمودن نام، نام خانوادگی، شماره دانشجویی، نام 
                            دانشگاه، رشته تحصیلی، مقطع، جنسیت، نام کاربری و کلمه عبور اجباری، و بقیه موارد 
                            اختیاری 
                            هستند. نام و نام خانوادگی را به فارسی وارد نمایید.<br />
                            </span></tr>
<tr>
                        <td align="center" colspan="4"   >
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </tr>

<tr>
                        <td align="right"   >
                            نام:    
                        <td  valign="top" align="right">
                            <asp:TextBox ID="txtUserStudentName" runat="server"  TabIndex="2"  CssClass="InputControl" MaxLength="20">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtUserStudentName" ErrorMessage="نام را وارد کنید">*</asp:RequiredFieldValidator>
                        </td>
                        <td  valign="top">
                            نام خانوادگی:</td>
                        <td  valign="top" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtUserStudentLastName" 
                                ErrorMessage="نام خانوادگی را وارد کنید">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUserStudentLastName" Runat="server"  
                                CssClass="InputControl" MaxLength="30" 
                                >
                            </asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            <td  valign="top" align="right" >
                                
                        </td>
                        <td  valign="top" >
                            </td>
                        <td  valign="top" align="right" >
                            </td>
                    </tr>
                    <tr>
                        <td   >
                            نوع عضویت:</td>
                        <td  valign="top">
                                <asp:RadioButton ID="rdioMemberShipTypeStudent" runat="server"  
                                    GroupName="MemberShipType" Text="   عضويت دانشجويي" Width="136px" 
                                    Checked="True"  />
                                </td>
                        <td  valign="top">
                            </td>
                        <td  valign="top" align="left">
                                <asp:RadioButton ID="rdioMemberShipTypeProud" runat="server"  
                                    GroupName="MemberShipType" Text=" عضويت افتخاري       "  
                                     />
                            </td>
                    </tr>
                    <tr>
                        <td   >
                            </td>
                        <td  valign="top">
                            </td>
                        <td  valign="top">
                            </td>
                        <td  valign="top">
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            شماره دانشجويي (ارقام 0 تا 9):</td>
                        <td  valign="top" align="right">
                            <asp:TextBox ID="txtUserStudentID" runat="server"  TabIndex="3" 
                        CssClass="InputControl" MaxLength="9" 
                                >
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtUserStudentID" 
                                ErrorMessage="شماره دانشجویی را وارد کنید">*</asp:RequiredFieldValidator>
                        </td>
                        <td  valign="top">
                            نام دانشگاه:</td>
                        <td  valign="top" align="left">
                            <asp:DropDownList ID="drliStudentUniversity" Runat="server" EmptyMessage="دانشگاه را انتخاب کنید" 
                                  CssClass="InputControl" 
                                DropDownWidth="160px"   NoWrap="True" 
                                Width="155px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td   >
                            </td>
                        <td >
                            </td>
                        <td >
                            </td>
                        <td >
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            رشته تحصيلي:</td>
                        <td align="right" >
                    <asp:DropDownList ID="drliUserStudentEducationBranchName" Runat="server" EmptyMessage="رشته را انتخاب کنید" 
                                  CssClass="InputControl" 
                                DropDownWidth="160px"   NoWrap="True" 
                                Width="155px">
                    </asp:DropDownList>
                        </td>
                        <td >
                            مقطع:</td>
                        <td  align="left">
                            <asp:DropDownList ID="drliUserStudentEducationLevel" Runat="server" EmptyMessage="مقطع را انتخاب کنید" 
                                  CssClass="InputControl" 
                                DropDownWidth="160px"   NoWrap="True" 
                                Width="155px">
                                <Items>
                                    <asp:ListItem runat="server" Text="کارداني" 
                                        Value="کارداني" Owner="drliUserStudentEducationLevel" />

                                    <asp:ListItem runat="server" Text="کارشناسي" 
                                        Value="کارشناسي" Owner="drliUserStudentEducationLevel" />
                                        
                                    <asp:ListItem runat="server" Text="کارشناسي ارشد" 
                                        Value="کارشناسي ارشد" Owner="drliUserStudentEducationLevel" /> 
                                        
                                    <asp:ListItem runat="server" Text="دکتري" 
                                        Value="دکتري" Owner="drliUserStudentEducationLevel" />                                                                                
 </Items>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td  dir="rtl"  >
                            </td>
                        <td >
                            </td>
                        <td >
                            </td>
                        <td >
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            جنسيت:                       </td>
                        <td  align="center">
                    <table style="width: 70%" align="right">
                        <tbody  style="outline: 0;">
                        <tr valign="top">
                            <td class="" align="right">
                                <asp:RadioButton ID="rdioUserStudentSexMale" runat="server"  
                                    GroupName="Gender" Text="مرد  " Textalign="right" Width="44px" TabIndex="6" 
                                    Checked="True"  />
                            </td>
                            <td 
                                valign="middle" class="" align="right">
                                <asp:RadioButton ID="rdioUserStudentSexFemale" runat="server"  
                                    GroupName="Gender" Text="زن  " Textalign="right" Width="56px" 
                                    TabIndex="7" style="height: 20px"  />
                            </td>
                        </tr>
                    </table>
                        </td>
                        <td >
                            تخصص (ها):</td>
                        <td  align="left">
                    
                                <asp:TextBox ID="txtUserStudentSpecialty" runat="server" 
                         TabIndex="8" MaxLength="30"   CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td   >
                            </td>
                        <td >
                    
                                </td>
                        <td >
                    
                                </td>
                        <td >
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            نام کاربري:</td>
                        <td align="right" >
                    <asp:TextBox ID="txtUserStudentUserName" runat="server"  TabIndex="9" 
                        CssClass="InputControl" MaxLength="20" 
                                ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtUserStudentUserName" 
                                ErrorMessage="نام کاربری را وارد کنید">*</asp:RequiredFieldValidator>
                        </td>
                        <td >
                            کلمه عبور:</td>
                        <td  align="left">
                    
                            
                    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtUserStudentPassword" 
                                ErrorMessage="کلمه عبور را وارد کنید">*</asp:RequiredFieldValidator>
                    
                            
                    
                    <asp:TextBox ID="txtUserStudentPassword" runat="server"  TabIndex="10" 
                        CssClass="InputControl" MaxLength="20" 
                                TextMode="Password" ></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td   >
                            </td>
                        <td >
                    
                            
                    
                            </td>
                        <td >
                    
                            
                    
                            </td>
                        <td >
                            </td>
                    </tr>
                    <tr>
                        <td  valign="top" align="right"  >
                            آدرس سکونت:                
                        <td  
                            valign="top" align="right">
                    
                            
                    
                                <asp:TextBox ID="txtUserStudentAddress" runat="server" 
                         TabIndex="11" CssClass="InputControlMultiLine" Height="88px"  
                                TextMode="MultiLine" ></asp:TextBox>
                    
                        </td>
                        <td  valign="top">
                    
                            
                    
                            محل کار:</td>
                        <td  align="left" valign="top">
                            
                                <asp:TextBox ID="txtUserStudentOfficeName" runat="server" 
                         TabIndex="14" CssClass="InputControlMultiLine" Height="76px"  
                                    TextMode="MultiLine" ></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td  valign="top"  >
                            <td  valign="top">
                    
                            
                    
                                </td>
                        <td  valign="top">
                    
                            
                    
                                </td>
                        <td  valign="top">
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            وب سايت:</td>
                        <td align="right" >
                    
                                <asp:TextBox ID="txtUserStudentWebSite" runat="server" 
                         TabIndex="12"  CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                        <td >
                    
                            ايميل:</td>
                        <td align="left" >
                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtUserStudentEmail" ErrorMessage="ایمیل را وارد کنید">*</asp:RequiredFieldValidator>
                            
                                <asp:TextBox ID="txtUserStudentEmail" runat="server" 
                         TabIndex="13" CssClass="InputControl" 
                                    MaxLength="50" ></asp:TextBox>
                    
                            </td>
                    </tr>
                    <tr>
                        <td   >
                            </td>
                        <td >
                            
                                </td>
                        <td >
                            
                                </td>
                        <td >
                    
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtUserStudentEmail" Display="None" 
                                    ErrorMessage="ایمیل درست وارد شود" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   >
                            تلفن ثابت:</td>
                        <td align="right" >
                            
                                <asp:TextBox ID="txtUserStudentPhone" runat="server" 
                         TabIndex="15" MaxLength="20" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                        <td >
                            
                            تلفن همراه:</td>
                        <td  align="left">
                            
                                <asp:TextBox ID="txtUserStudentCellPhone" runat="server" 
                         TabIndex="16" MaxLength="20" CssClass="InputControl"
                                    ></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td   >
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                ShowMessageBox="True" ShowSummary="False" />
                            </td>
                        <td >
                            
                                </td>
                        <td >
                            
                                </td>
                        <td >
                            </td>
                    </tr>
                    <tr>
                        <td class="" style="height: 14px" colspan="2" 
                            align="center">
                            &nbsp;</td>
                        <td  
                            align="center">
                            </td>
                        <td  align="left">
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ثبت نام" 
                        Width="57px" onclick="btnSave_Click" TabIndex="17" CssClass="Button" />
                        </td>
                    </tr>


        </table>
           
                <div class="clear"></div>
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

    
           <img src="../../Pic/Icon/s-flash5.gif">
            <asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled"  ></asp:LinkButton>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000"  ></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  

<%--<!-------------------- Game`s-Slider --------------------------->
 <div class="Game_slider">
<h5>بازیهای کامپیوتری</h5>
       <ul class="spy">
<!----------------------------------------------Li-1-------------------------------------------------------------------->          
          <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Total War ROME II Caesar in Gaul.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۷۵,۰۰۰ ریال </h6>
                   <p class="info">Total War ROME II Caesar in Gaul</p>
         </li>
<!----------------------------------------------Li-2-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/State of Decay Breakdown.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۶۵,۰۰۰ ریال </h6>
                   <p class="info">State of Decay Breakdown</p>
         </li>
<!----------------------------------------------Li-3-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/The Typing of The Dead Overkill.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۷۰,۰۰۰ ریال </h6>
                   <p class="info">Typing of The Dead Overkill</p>
         </li>
<!----------------------------------------------Li-4-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Ashes Cricket 2013.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۵۰,۰۰۰ ریال </h6>
                   <p class="info">Ashes Cricket 2013</p>
         </li>
<!----------------------------------------------Li-5-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Assassins Creed IV Black Flag Gold Edition pc 1.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۹۰,۰۰۰ ریال </h6>
                   <p class="info">Assassins Creed IV Black Flag Gold Edition</p>
         </li>
<!----------------------------------------------Li-6-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Omerta City of Gangsters The Japanese Incentive.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۸۰,۰۰۰ ریال </h6>
                   <p class="info">Omerta City Japanese</p>
         </li>
<!----------------------------------------------Li-7-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Neverwinter Nights 2 Platinum Edition.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۷۵,۰۰۰ ریال </h6>
                   <p class="info">Neverwinter Nights 2 Platinum Edition</p>
         </li>
<!----------------------------------------------Li-8-------------------------------------------------------------------->          
         <li>
             <a href="#" title="پرسپولیس"><img width="60" height="60" src="../../../Pic/Game`s/Deadfall Adventures.jpg" title="پرسپولیس" /></a>
                <h6> قیمت:  ۱۰۰,۰۰۰ ریال </h6>
                   <p class="info">Deadfall Adventures</p>
         </li>
<!------------------------------------------------------------------------------------------------------------------------>          
     </ul>
 </div>
 <div class="clear"></div>             

	--%>

	

</div><!--Col2-->



<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>



      
</asp:Content>

