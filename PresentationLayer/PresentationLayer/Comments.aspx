<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="PresentationLayer.Comments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">            

<head>

	<title>وب سايت علمي - آموزشي مهندس منتصري</title>
	
    <link href=" CssMy/mystyles.css" rel="stylesheet" type="text/css" media="all" />
   

        <style type="text/css">
            .text
            {
                text-align: justify;
                font-size: 10pt;
                    
                font-style: normal; 
                color: #000000; 
                line-height: 15pt; 
                direction:rtl; 
                lang:FA;              
            }
            
            
            .title
            {
                text-align: justify;
                font-size: 10pt;
                color: #FF0000;
                
                font-weight: bold;
                font-style: normal;
                direction:rtl; 
                lang:FA;                    
                
            }            


            .subtitle
            {
                text-align: justify;
                direction:rtl;  
                font-size: 9pt;
                color: #0000FF;
                
                font-weight: bold;
                font-style: normal;
                text-indent: 2pt;
                lang:FA;                                
                
            }    




            .style1
            {
                color: #FF0066;
            }




            .style2
            {
                color: #FF3399;
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
                            <td width="30%" valign="top" align="left">
                       
    &nbsp;<asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogMainPage" runat="server" CausesValidation="false" onclick="lbtnLogMainPage_Click"
                    >(Home) صفحه اصلي</asp:LinkButton>
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">

                                                <div class="MyTicker" dir="rtl" style="color: blue; text-indent: 6px;"><span id="theTicker"> </span></div>
                                               <script src="Jqueries/ticker.js" type="text/javascript"></script>

                            </td> 
                        </tr>
                     </table>
        
       <!-- Middle Column -->
       
               
          <div class="left_three">      
              
        
      
         <table  width="750px" dir="rtl">
              <tr>
                  <td align="right" dir="rtl" valign="top">
                            &nbsp;</td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">

                         <a name="1">نقشه سايت</a></td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                                  <span class="style1"><strong>امکانات مديريت پرتال
                                  <br />&nbsp;&nbsp;&nbsp; - </strong></span>ويرايش مشخصات کاربري مدير<strong><br />
                                  <span class="style1">&nbsp;&nbsp;&nbsp; - </span></strong>تعريف سطح دسترسي هر کاربر<strong><br />
                                  <span class="style1">&nbsp;&nbsp;&nbsp; - </span></strong>تعريف دانشگاه<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف رشته تحصيلي<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف استاد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف ترم تحصيلي<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف 
                                  و پيشنهاد وب سايت<br /><span class="style1"><strong>&nbsp;&nbsp;&nbsp; -
                                  </strong></span>ارسال خبر (اطلاعيه)<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ويرايش خبر (اطلاعيه)<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف آلبوم عکس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>آپلود عکس براي 
                                  آلبوم<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; و امکانات ديگري که در آينده نزديک به 
                                  پرتال (وب سايت) اضافه خواهند شد.<br />
                                  <br /><span class="style1"><strong>امکانات استاد
                                  </strong>
                                  <br />
                                  <strong>&nbsp;&nbsp;&nbsp; - </strong></span>ويرايش مشخصات کاربري استاد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>انتخاب دانشگاه 
                                  هاي محل تدريس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف گروه درسي<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ويرايش گروه درسي<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف تاريخ 
                                  هاي امتحان براي گروه درسي<br /><span class="style1"><strong>&nbsp;&nbsp;&nbsp; -
                                  </strong></span>تعريف تمرين و پروژه براي گروه درسي<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>آپلود انواع 
                                  فايل براي دانلود توسط دانشجو<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>دريافت فايلهاي حل تمرين و گزارشات پروژه ارسال شده توسط دانشجو<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تخصيص نمره به حل تمرين (گزارش)<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>مشاهده اطلاعات 
                                  جامع آموزشي دانشجو (نمرات، اعتراض به نمره و تجديد نظر، پروژه ها و حل تمرين ها، 
                                  پيامهاي ارسالي/دريافتي <span class="style1"><strong>&nbsp;&nbsp; </strong>
                                  </span>به/از دانشجو)<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ارسال خبر 
                                  (اطلاعيه)<br /><span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong>
                                  </span>ويرايش خبر (اطلاعيه)<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>وارد کردن 
                                  نمرات دانشجو (ميان ترم، پايان ترم، تمرين، عملي) در ليست نمرات
                                  <br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>بررسي اعتراض 
                                  به نمره و تغيير نمره<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف 
                                  و پيشنهاد وب سايت<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ارسال پيام به 
                                  دانشجو<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>مشاهده پيامهاي 
                                  ارسالي و پاسخ آنها<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>پاسخ به پيام 
                                  دانشجو<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف آلبوم عکس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>آپلود عکس براي 
                                  آلبوم<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; و امکانات ديگري که در آينده نزديک به 
                                  پرتال (وب سايت) اضافه خواهند شد.<br />
                                  <br />
                                  <span class="style1"><strong>امکانات دانشجو <br />&nbsp;&nbsp;&nbsp;  </strong>
                                 </span><%--
                                 ثبت نام در سايت <br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ويرايش مشخصات 
                                  کاربري
                                  <br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>انتخاب واحد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>دريافت انواع 
                                  فايل آپلود شده توسط استاد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>دريافت فايل 
                                  تمرين يا پروژه درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ارسال فايل حل 
                                  تمرين يا پروژه درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>مشاهده نمرات 
                                  هر درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ثبت اعتراض به 
                                  نمره درس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>ارسال پيام به 
                                  استاد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>مشاهده پيامهاي 
                                  ارسالي و پاسخ آنها<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>پاسخ به پيام 
                                  استاد<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>تعريف آلبوم عکس<br />
                                  <span class="style1"><strong>&nbsp;&nbsp;&nbsp; - </strong></span>آپلود عکس براي 
                                  آلبوم

                                  
                                  <p></p>--%>
                                 
                                 <br />
                                 <asp:Image ID="Image1" runat="server" Height="485px" 
                                      ImageUrl="CommentsImages/StudentsUseCase.gif" 
                                      style="text-align: center" Width="100%" />


                                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; و امکانات ديگري که در آينده نزديک به پرتال (وب سايت) اضافه خواهند شد.</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">

                         <hr size="3px" style="width: 730px; background-color: #0000FF; " />  </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>



              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">

                         <a name="2">مشخصات و رزومه تحصيلي</a>
                         <a href="#1">  (بالاي صفحه)</a> </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        

                      <span class="style2"><strong style="color: #FF0066">مشخصات فردي<br />
                      </strong></span>نام و نام خانوادگي:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; سيد عباس منتصري&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; شماره تماس:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 09361067736&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; وب سايت:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; www.montaseri.ir
                      <br />
                      <br />
                 پست الکترونيکي:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  info@montaseri.ir&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;
                      s.abas.montaseri@gmail.com&nbsp;&nbsp; 
                      -&nbsp;&nbsp;   Montaseri@biau.ac.ir
                      <br />
                      <br />
                      <span class="style2"><strong style="color: #FF0066">تحصيلات<br />
                      </strong></span> 
                      
                      ديپلم:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رياضي و فيزيک&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; سال: 1378
                      <br />
                      <br />
                      پيش دانشگاهي:&nbsp;&nbsp;&nbsp; رياضي و فيزيک&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      &nbsp; سال: 1379 
                      <br />
                      <br />
                      <br />
                     کارشناسي:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; علوم کامپيوتر - سيستمهاي اطلاعاتي&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; دانشگاه شهيد باهنر کرمان&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    سال: 84-80
                      <br />
                      <br />
                      عنوان پروژه کارشناسي:  تحليل، طراحي و پياده سازي سيستم حسابداري  و گزارش گيري خريد و فروش به روش شيءگرايي<br />
                      <br />
                      <br />
                      کارشناسي ارشد:&nbsp;&nbsp; مهندسي کامپيوتر - نرم افزار&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; دانشگاه آزاد واحد اراک&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    سال: 87-85
                      <br />
                      <br />
                      عنوان پايان نامه:        توسعه ي هستان شناسي (Ontology) براي اطلاعات نامعلوم بانک هاي اطلاعاتي RDF/XML 
                            
                      <br />
                      <br />
                      <span class="style2"><span style="color: #FF0066; font-weight: 700;">افتخارات علمي – تخصصي</span></span><br />
                      1-	رتبه ي 4000 کنکور سراسري دانشگاههاي سراسري سال 1380.
                      <br />
                      <br />
                      2-	رتبه ي 500 آزمون ورودي کارشناسي ارشد مهندسي کامپيوتر - نرم افزار، دانشگاه هاي سراسري، سال 1385.
                      <br />
                      <br />
                      3-	رتبه ي 2 آزمون ورودي کارشناسي ارشد مهندسي کامپيوتر - نرم افزار، دانشگاه 
                      آزاد واحد اراک، سال 1385.
                      <br />
                      <br />
                      4-	مشاور و کارشناس عضو نظام صنفي رايانه اي استان فارس (شاخه نرم افزار و پرتال).<br />
                      <br />
                      5- راهنما و مشاور دانشجويان مهندسي کامپيوتر در تحليل، طراحي و پياده سازي نرم 
                      افزارهاي کاربردي.<br />
                      <br />
                      6-	عضو فعال انجمن علمي کامپيوتر دانشگاه شهيد باهنر کرمان.
                      <br />
                      <br />
                      7- راه يابي به مسابقات علمي دانش آموزي مقطع راهنمايي کشور.

                 </td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      <hr size="3px" style="width: 730px; background-color: #0000FF; " />  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                    <a name="3"> 
                         رزمومه کاري                  
                 <a href="#1">  (بالاي صفحه)</a> 
                  </td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                                  <span class="style2"><strong style="color: #FF0066">تدريس و آموزش<br />
                      </strong></span>1- مدير گروه رشته کامپيوتر و فناوري اطلاعات در دانشگاه آزاد واحد بيضا فارس<br />
                                  <br />
                                  2-&nbsp; مدير گروه رشته کامپيوتر در آموزشکده فني امام حسين (ع) استهبان&nbsp;<br />
                                  <br />
                                  3-	بالغ بر 8 سال سابقه تدريس در دانشگاه ها و موسسات آموزش عالي به شرح زير:<br />

                 
                                  <br />
                                  دانشگاه آزاد واحد بيضا (عضو هيات علمي)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                  تدريس دروس:&nbsp;تخصصي کارداني و کارشناسي کامپيوتر و فناوري اطلاعات
                                  <br />

                                  <br />
                                  دانشگاه آزاد واحد اراک &nbsp;(85-85)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تدريس دروس:&nbsp;پايگاه داده ها - چندزبانه سازي - مباحث ويژه<br />

                                  <br />
                                 دانشگاه پيام نور فسا &nbsp;(86-86)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; تدريس دروس:&nbsp;ساختمان داده ها - برنامه نويسي C<br />

                                  <br />
                                  دانشگاه پيام نور صفاشهر &nbsp;(88-87)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تدريس دروس:&nbsp;سيستم 
                                  عامل - مهندسي نرم افزار 1 و&nbsp; 2 - آز پايگاه داده<br />

                                  <br />
                                  آموزشکده فني امام حسين (ع) استهبان&nbsp;(88-84)&nbsp;&nbsp;تدريس دروس:&nbsp;ساختمان داده -&nbsp;ذخيره 
                                  و بازيابي اطلاعات - برنامه نويسي - پروژه &nbsp;
                                  <br />
                                  <br />
                                  دانشگاه علمي کاربردي مرکز پاسارگاد&nbsp;(88-87)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تدريس دروس:&nbsp;ساختمان داده - تجزيه 
                                  و تحليل سيستم - پايگاه داده - پروژه کارشناسي
                                  <br />
                                  <br />
                                  دانشگاه آزاد واحد نيريز&nbsp;(88-88)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تدريس دروس:&nbsp;برنامه 
                                  نويسي - پروژه
                                  <br />
                                  <br />
                                  دانشگاه آزاد واحد ارسنجان&nbsp;(88-88)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تدريس دروس:&nbsp;ساختمان داده ها - مباحث ويژه - پروژه<br />
                                  <br />
                                  دانشگاه آزاد واحد کوار&nbsp;(88-88)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                  &nbsp; تدريس دروس:&nbsp;ذخيره و بازيابي اطلاعات - آز گرافيک
                                  <br />

                 </td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      <hr size="3px" style="width: 730px; background-color: #0000FF; " />  </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                   <a name="4">
                         علايق علمي - آموزشي
                            </a>
                         <a href="#1">  (بالاي صفحه)</a> 
                         </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                 1-	وب معنايي (Semantic Web)
                                  <br />
                                  2-	فناوري اطلاعات و ارتباطات.<br />
3-	فرايندهاي مهندسي نرم افزار.
                                  <br />
                                  4-	سبک هاي معماري نرم افزار و معماري سازماني.
                                  <br />
                                  5-	تکنولوژي و متدولوژي هاي تحليل و طراحي سرويس گرا، شيءگرا.<br />
6-	تجزيه و تحليل و طراحي سيستمهاي اطلاعاتي.
                                  <br />
                                  7-	طراحي و پياده سازي پايگاه داده ها.<br />
                      8-	برنامه نويسي پيشرفته کامپيوتر.

                 </td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      <hr size="3px" style="width: 730px; background-color: #0000FF; " />  </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                   <a name="5">
                         مقاله و طرح پژوهشي
                         <a href="#1">  (بالاي صفحه)</a> 
                         </a>
                         </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                 1-	توسعه ي زبان آنتولوژي وب بر اساس منطق 
                                  SHOIN فازي، دومين همايش ملي مهندسي برق، کامپيوتر و فناوري اطلاعات، 1387.
                                  <br />
                                  <br />
                                  2-مدلسازي روابط فازي آنتولوژي، دومين همايش ملي مهندسي برق، کامپيوتر و فناوري اطلاعات، 1387.<br />
                                  <br />
3-	رهيافتي نوين براي اندازه گيري کيفيت وب سرويس با استفاده از سيستم چندعامله، دومين همايش ملي مهندسي برق، کامپيوتر و فناوري اطلاعات، 1387.<br />
                                  <br />
4-	توسعه ي زبان آنتولوژي وب بر اساس منطق SHOIN فازي براي اطلاعات نامعين بانک هاي اطلاعاتيRDF/XML، دوازدهمين کنفرانس مهندسي برق ايران، 1388.<br />
                                  <br />
5-	بررسي نقش منطق هاي توصيفي در ايجاد زبانهاي آنتولوژي و بررسي زبان آنتولوژي وب (OWL) بر اساس مفاهيم منطق توصيفي، همايش ملي مهندسي برق و کامپيوتر، 1390.<br />
                                  <br />

6-	Ontology’s Fuzzy Relations Modeling and Extracting Hidden Fuzzy Relations in OWL Fuzzy Improvement, 5th Symposium on Advances in Science and Technology, 2011.

                                  <br />
                                  <br />
                                  7-	The Algorithms for Creation Ontology’s Hidden Fuzzy Relations and Implementation in Fuzzy OWL, 3nd International scientific conference of Iranian Students in Blarus, 2012.

                 </td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      <hr size="3px" style="width: 730px; background-color: #0000FF; " />  
                        </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                   <a name="6">
                        نرم افزارهاي توليدي
                        <a href="#1">  (بالاي صفحه)</a> 
                         </a>
                        </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                 تحليل، طراحي و پياده سازي:<br />
1-	پرتال (وب سايت) ارتباطي استاد - دانشجو با تکنولوژي 3 لايه اي و شيءگرايي، 4 ماه زمان انجام پروژه، 
                                 پياده سازي با کامپايلر .Net، زبان C# و پايگاه داده SQL Server.
                                 <br />
                                 <br />
                                 2- نرم افزار حسابداري آسان و عمومي با نام حسابدار (بالغ بر 70 جدول پايگاه داده و 
                                 100 فرم واسط کاربري)، 36 ماه زمان انجام پروژه، پياده سازي با کامپايلر Delphi و 
                                 پايگاه داده SQL Server.
                                 <br />
                                 <br />
                                 3- نرم افزار مديريت و حسابداري براي فروشندگان و واسطه هاي (تعداد ذينفعان در هر 
                                 خريد و فروش 5 نفر) خريد و فروش انجير، 6 ماه زمان انجام پروژه، پياده سازي با 
                                 کامپايلر Delphi و پايگاه داده SQL Server.
                                 <br />
                                 <br />
                                 4- نرم افزار مديريت و حسابداري انتقال سهم 
                      مالکين آب کشاورزي شهرستان استهبان، 
                                 3 ماه زمان انجام پروژه، پياده سازي با کامپايلر Delphi و پايگاه داده Access.
                                 <br />
                                 <br />
                                 5- نرم افزار مديريت اطلاعات اداره ي حفاري شهرداري شيراز، 1 ماه زمان انجام پروژه، پياده سازي با کامپايلر Delphi و پايگاه داده SQL Server.

                                 <br />
                                 <br />
                                 6- نرم افزار حسابداري فروش اقساطي اجناس و تعيين جرائم ديرکردهاي پرداخت، 2 ماه زمان انجام پروژه، پياده سازي با کامپايلر Delphi و پايگاه داده SQL Server.</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      <hr size="3px" style="width: 730px; background-color: #0000FF; " />  
                        </td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                   <a name="7">
                        زمينه هاي مشاوره
                        
                        </a>
                       <a href="#1">  (بالاي صفحه)</a> 
                        </td>
                  <td align="left" valign="top&nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" dir="rtl" valign="top" class="text">
                        
                                  &nbsp;</td>
              </tr>

              <tr>
                  <td align="right" dir="rtl" valign="top" class="subtitle">
                      &nbsp;</td>
                  <td align="left" valign="top">
                      &nbsp;</td>
              </tr>

              </table>
          
        </div>
        
       <!-- Middle Column -->
       
       
       
       <!-- Right Column -->       
       
       <div class="four_equals">
          

          
            <table align="right" dir="rtl" width="70%" 
                style=" font-size: 9pt;  color: #0000FF" >
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                    <a href="#1">
                        نقشه سايت
                                                    </a>  
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td> <a href="#2">
                        مشخصات و رزومه تحصيلي
                        </a>
                        </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td> <a href="#3">
                        رزمومه کاري
                        </a>
                        </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>
                     <a href="#4">
                        علايق علمي - آموزشي
                        </a>
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>
                     <a href="#5">
                        مقاله و طرح پژوهشي
                        </a>
                        </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>
                     <a href="#6">
                        نرم افزارهاي توليدي
                        </a>
                        </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>
                     <a href="#7">
                        زمينه هاي مشاوره
                        </a>
                        </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                </table>

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
</body>

</html>
