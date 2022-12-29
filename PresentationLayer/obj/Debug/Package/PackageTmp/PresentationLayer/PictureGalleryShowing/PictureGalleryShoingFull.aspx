<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PictureGalleryShoingFull.aspx.cs" Inherits="PresentationLayer.PictureGalleryShowing.PictureGalleryShoingFull" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
    
    	<meta charset="utf-8" />
        
    	<title>وب سايت علمي - آموزشي مهندس منتصري</title>
    	
    	    <link href="../CssMy/mystyles.css" rel="stylesheet" type="text/css" media="all" />
    	
    	
        <meta name="description" content="GalleryJack is a jQuery full background image gallery" />
        <meta name="keywords" content="jQuery gallery, jQuery full image background, image gallery" />
        
        <!-- Fullscreen Standalone Gallery CSS -->
        <style type="text/css">
			
			html {
			
				background-color: #000;
				
			}
			
			body {
			
				margin: 0px;
				padding: 0px;
				overflow: hidden;
							
			}
			
		    .style1
            {
                width: 100%;
            }
			
		</style>
        
        <!-- Change "nofollow" to "follow" below if you want your images to be indexed by search engines -->
        <meta name="robots" content="index, nofollow" /> 
        
        <!-- CSS urls for Google Fonts -->
        
        
<%--        <link href="http://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Questrial" rel="stylesheet" type="text/css" />--%>
        
        <!-- Core GalleryJack CSS Files -->
        <link rel="stylesheet" type="text/css" href="css/cj_gallery.css?v=1" />
        <link rel="stylesheet" type="text/css" href="css/cj_gallery_video.css?v=1" />
    	<!--[if lte IE 8 ]><link rel="stylesheet" type="text/css" href="css/cj_gallery_ie_8.css?v=1" /><![endif]-->
        <!--[if lte IE 7 ]><link rel="stylesheet" type="text/css" href="css/cj_gallery_ie_7.css?v=1" /><![endif]-->
        
        <!-- Browser Scripts -->
        <script src="js/modernizr.min.js" type="text/javascript"></script>
        <script src="js/mdetect.min.js" type="text/javascript"></script>
        
        <!-- GalleryJack runs on jQuery 1.7.0, it has not been tested with legacy jQuery versions -->
        <!-- Only one instance of jQuery should be loaded into a webpage -->
        
        
    	<script type="text/javascript" src="js/jquery.min.js"></script>

        <!-- GalleryJack Scripts -->
        <script type='text/javascript'>            jQuery.noConflict();</script>
        <script src="js/jquery.address-1.4.min.js" type="text/javascript"></script>
        <script src="js/jquery.clip-animation.min.js" type="text/javascript"></script>
        <script src="js/cj-galleryjack-core.min.js?v=1" type="text/javascript"></script>
        <script src="js/cj-top-right-buttons.min.js?v=1" type="text/javascript"></script>
        <script src="js/cj-music-player.min.js?v=1" type="text/javascript"></script>
        <script src="js/cj-contact-form.min.js?v=1" type="text/javascript"></script>
        <script src="js/cj-html-video.min.js?v=1" type="text/javascript"></script>
        
        <!-- Custom gallery settings -->
        <script type="text/javascript">

            // "true" for the fullscreen version, "false" for the fixed sized version
            var cjFullScreenMode = true,

            /* The custom width if "cjFullScreenMode" is set to "false" */
			cjCustomWidth = null,

            /* The custom height if "cjFullScreenMode" is set to "false" */
			cjCustomHeight = null,

            /* Choose to use thumbnails, true/false */
			cjUseThumbs = true,

            /* Clicking the large image will load the next image, true/false */
			cjBgClickLoadsNext = true,

            /* Choose to use deep-linking for images, true/false */
			cjDeepLinkMode = true,

            /* "true" for the ajax version of the gallery, "false" for the regular version (see documentation for more details) */
			cjAjaxVersion = false,

            /* Choose to autoplay the music, true/false */
			cjAutoPlayMusic = true,

            /* Choose to show the image info when the gallery loads, true/false */
			cjShowInfoByDefault = true;

        
        </script>
        
        <script src="js/cj-galleryjack-settings.js?v=1" type="text/javascript"></script>
        
	</head>
   
    <form id="form1" runat="server">

        <body>
  <div id="cj-gallery">
            
            <noscript><img class="cj-noscript" src="../UserUploadedPictures/1.jpg"width="1400" height="933" alt="alternative image" /></noscript>
            <!-- Audio tag required for Music Player.  Delete entirely for no music -->
        	
        	
        	<audio id="cj-music">
            	
                <!-- Flash music player fallback.  Change the swf urls if swf path changes -->
            	<object type="application/x-shockwave-flash" data="flash/gallery_music.swf" width="0" height="0" id="cj-fallback">
                    
                    <param name="movie" value="flash/gallery_music.swf" />
                    <param name="allowScriptAccess" value="always" />
                    <param name="bgcolor" value="#000000" />

				</object>
            
            </audio>
            
            <!-- The image info container, delete entirely for no image info -->
            <div id="cj-image-info">
            	
                <!-- This can be deleted if you do not wish to use the close button icon -->
                <span class="cj-close-info"></span>
                
                <!-- Leave this element blank.  It will be populated dynamically with image info -->
                <p id="cj-image-info-text"></p>
            
            </div>
            
            <!-- BEGIN TOP RIGHT CIRCLE BUTTONS -->
            <!-- All buttons are optional and can be removed -->
                 

            <div id="cj-author-info">
                
                <!-- The bg image preloader, delete entirely for no preloader -->
                <div id="cj-preloader"><img src="../images/PictureGalleryShowingGraphics/preloader.png" width="19" height="19" alt="preloader" /></div>

                <!-- The author info button -->
                <div id="cj-info-button">

                    <asp:LinkButton  ID="btnPublicAlbum" runat="server" CausesValidation="false"
                    onclick="btnPublicAlbum_Click">آلبوم هاي عکس</asp:LinkButton>
                    
                    <asp:Label ID="Label1" runat="server" Text="/"></asp:Label>
                                        
                   <asp:LinkButton  ID="lbtLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>
                    <asp:Label ID="lbl2" runat="server" Text="/"></asp:Label>
                    <asp:LinkButton  ID="btnControlPanel" runat="server" CausesValidation="false"
                    onclick="btnControlPanel_Click">(Control Pannel) کنترل پانل</asp:LinkButton>


                    <%--<span class="cj-cursive-font">&copy; Abas Montaseri</span>--%>

                </div>
                
                <!-- The contact form button -->
  <%--               <div id="cj-email-button">
                        
                   <form method="POST" id="cj-contact-form" action="#">
                                
                        <fieldset>
                                    
                            <input class="cj-field" type="text" value="Name" name="name-required" maxlength="30" /><br />
                            <input class="cj-field" type="text" value="Email" name="email-required" maxlength="30" /><br />
                                    
                            <textarea name="message-required">Message</textarea><br />
                                    
                            <input id="cj-submit" type="submit" value="Send" name="submit" /> 
                                    
                        </fieldset>
                        
                       
                            
                    </form>
                
                </div>--%>
                
                <!-- The social share button (leave empty here) -->
                <%--<div id="cj-share-button"></div>--%>
                
                <!-- The music player button -->
                <!-- 
                	 If multiple songs are set in the settings script, this button will toggle the player.
                     Otherwise this button will acty as play/pause if only one song is found .
                -->
                <div id="cj-music-button">
                	
                    <!-- The song information, delete entirely for no song info -->
                    <div id="cj-music-meta">
                    	
                        <!-- The current song number, delete for no song numbers -->
                    	<span class="cj-music-numbers">/</span>
                        
                        <!-- The current song title, delete for no song title -->
                        <span class="cj-current-song"></span>
                        
                    </div>
                    
                    <!-- The music player controls -->
                    <div id="cj-music-controls">
                        
                        <span class="cj-music-left"></span>
                        <span class="cj-music-pause"></span>
                        <span class="cj-music-play"></span>
                        <span class="cj-music-right"></span>
                        
                    </div>

                </div>
            
            </div>
            
            <!-- BEGIN FOOTER SECTION -->
      		<div id="cj-footer">
                
                <!-- The gallery controls, delete entirely for no controls -->
                <div id="cj-gallery-controls">
                    
                    <!-- All controls are optional.  Delete any controls you do not wish to use -->
                    <span class="cj-left-icon"></span>
                    <span class="cj-info-icon"></span>
                    <span class="cj-up-icon"></span>
                    <span class="cj-close-icon"></span>
                    <span class="cj-pause-icon"></span>
                    <span class="cj-play-icon"></span>
                    <span class="cj-right-icon"></span>
                    
				</div>
                
                <!-- The thumbnail and category container, delete entirely for no thumbs and no categories -->
                <div id="cj-footer-container"> 
                    
                    <!-- The thumbnail container, delete entirely for no thumbs -->
                    <div id="cj-thumb-container">
                    
                    	<div id="cj-thumbnails"></div>
                        
                    </div>
                    
                    <!-- The category container, delete entirely for no categories -->
                    <div id="cj-categories"></div>
                    
                </div>
                
            </div>
            
            <!-- The thumbnail tool-tip container.  Delete entirely for no tool-tip -->
            <div id="cj-thumb-tooltip"></div>
            
            <!-- BEGIN HTML5 VIDEO, DELETE IF YOU ARE NOT USING LOCAL VIDEO -->
            <div id="cj-video-player">
                
                <!-- Custom Video Controls -->
                <div id="cj-vid-controls">
                    
                    <!-- Play/Pause -->
                    <div class="cj-vid-play-pause">
                    
                        <img class="cj-vid-play" src="../images/PictureGalleryShowingGraphics/vid_play.png" width="6" height="12" alt="play video" />
                        <img class="cj-vid-pause" src="../images/PictureGalleryShowingGraphics/vid_pause.png" width="6" height="10" alt="pause video" />
                        
                    </div>
                    
                    <!-- Video Track/Progress -->
                    <div class="cj-vid-lines">
                    
                        <span class="cj-vid-total"></span>
                        <span class="cj-vid-progress"></span>
                        
                    </div>
                    
                    <!-- Video Volume Buttons -->
                    <div class="cj-vid-vol-buttons">
                    
                        <img class="cj-vid-volume" src="../images/PictureGalleryShowingGraphics/vid_volume.png" width="13" height="10" alt="video volume" />
                        <img class="cj-vid-mute" src="../images/PictureGalleryShowingGraphics/vid_mute.png" width="7" height="10" alt="volume mute" />
                        
                    </div>
                    
                    <!-- Video Volume Track -->
                    <div class="cj-vid-vol-lines">
                    
                        <span class="cj-vid-vol-total"></span>
                        <span class="cj-vid-vol-current"></span>
                        
                    </div>
                    
                    <!-- Video Fullscreen Buttons -->
                    <div class="cj-vid-fullscreen">
                    
                        <img class="cj-vid-full" src="../images/PictureGalleryShowingGraphics/fullscreen.png" width="10" height="10" alt="fullscreen" />
                        <img class="cj-vid-normal" src="../images/PictureGalleryShowingGraphics/normalscreen.png" width="10" height="10" alt="normal screen" />
                    
                    </div>
                
                </div>
                
            </div>
            
            <!-- ************************* -->
            <!-- BEGIN GALLERY IMAGE LISTS -->
            <!-- ************************* -->
            <div id="cj-bg-images">
                
                <!-- BEGIN CATEGORY -->
                
                <!-- UL ATTRIBUTES:
					
                    "title" = The category title 
                        
                    "class" = The first value is for the image scaling type.  Options are:
                        
						1) cj-stretch (fill the screen, top-left position)
						2) cj-stretch-center (fill the screen, center-center position)
						3) cj-fit (show the entire image, the image will not be cropped, center-center position)
                                  
						The second value is for the transition type.  Options are
                                  
						1) cj-fade 
						2) cj-slide
						3) cj-slide-over
						4) cj-wipe
                                  
					"data-rel" = The width and height of the category thumbnails (first number = width, second number = height)
                                  
				-->
                <%--<ul title="models" class="cj-stretch cj-fade" data-rel="100x67">
                    
                    <!-- BEGIN IMAGE ITEM -->
                    <li>
                        
                        <!-- BEGIN IMAGE DATA -->
                        <ul>
                            
                            <!-- "title" = The url to the large background image -->
                            <li class="cj-large" title="../UserUploadedPictures/1.jpg"></li>
                            
                            <!-- "title" = The url to the thumbnail image -->
                            <!-- Tool-tip text goes inside the list item, leave blank for no tool-tip -->
                            <li class="cj-thumb" title="../UserUploadedPictures/thumbs/1.jpg">Image One</li>
                            
                            <!-- For no info, delete entirely or leave empty -->
                            <!-- Info supports any HTML markup -->
                            <li class="cj-info">
                                
                                <h2>models image one</h2>
                                
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit a Ut rutrum orci ut massa semper luctus. Suspendi sagist, sem id consectetur scelerisque, turpis velit varius elit, ac dictum ipsum tortor id justo. <a href="http://codecanyon.net/user/CodingJack" target="_blank">LINK</a></p>
                                
                            </li>
                            
                            <!-- Local Video Example -->
                            <li class="cj-video" title="video/sample.mp4"></li>
                                
                        </ul>
                        <!-- END IMAGE DATA -->
                        
                    </li>
                    <!-- END IMAGE ITEM -->
                        
                    <li>
                        
                        <ul>
                                
                            <li class="cj-large" title="../UserUploadedPictures/2.jpg"></li>
                            <li class="cj-thumb" title="../UserUploadedPictures/thumbs/2.jpg">Image Two</li>
                                
                            <li class="cj-info">
                                
                                <h2>models image two</h2>
                                
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit a Ut rutrum orci ut massa semper luctus. Suspendi sagist, sem id consectetur scelerisque, turpis velit varius elit, ac dictum ipsum tortor id justo. <a href="http://codecanyon.net/user/CodingJack" target="_blank">LINK</a></p>
                                
                            </li>
                            
                            <!-- YouTube Example -->
                            <li class="cj-video" title="http://www.youtube.com/watch?v=fI8C2zkaLZY"></li>
                                
                        </ul>
                        
                    </li>
                        


    
                </ul>--%>
                <!-- END CATEGORY -->
                     

                              

                              
  
                                              
                              
                             
                              
                                                                    
                            <asp:Repeater id="Repeater1" runat="server">
                            
                            <HeaderTemplate>                    
                            
                            <ul title="<%#Eval("GalleryPicTitle")%>" class="cj-fit cj-fade" data-rel="200x125" >
                              
                                   <%--GalleryPicTitle     data-rel="200x125"--%>                            
                            </HeaderTemplate>        
                        
                            <ItemTemplate>
                            

                                <li>
                                    
                                    <ul>
                                            
                                        <li class="cj-large" title="../UserUploadedPictures/<%#Eval("PictureName")%>"></li>
                                        <li class="cj-thumb" title="../UserUploadedPictures/thumbs/<%#Eval("PictureName")%>"><%#Eval("PictureTitle")%></li>
                                            
                                        <li class="cj-info">
                                            <h3My>ارسال توسط <%#Eval("PictureOwnerName")%> <%#Eval("PictureOwnerLastName")%></h3My>
                                            <h2My>آلبوم <%#Eval("GalleryPicTitle")%> </h2My>
                                            <h2My><%#Eval("PictureLocation")%> - <%#Eval("PictureDate")%> - <%#Eval("PictureTime")%> </h2My>
                                            
                                            <h3My><%#Eval("PictureDescription")%></h3My>
                                            
                                        </li>
                                            
                                    </ul>
                                    
                                </li>

                            </ItemTemplate>
                          
                          <FooterTemplate>

                          </FooterTemplate>
                           
                        </asp:Repeater>
                        
                      </ul>                         
                
                 
                     
            </div>
            
            <!-- Just preloading some images so there is no load loading delay if activated -->
            <div id="cj-preload">
            
                <img src="../images/PictureGalleryShowingGraphics/video_play.png" width="50" height="110" alt="video play" />
                <img src="../images/PictureGalleryShowingGraphics/video_close.png" width="26" height="54" alt="video close" />
                <img src="../images/PictureGalleryShowingGraphics/thumb_left.png" width="14" height="60" alt="thumb left" />
                <img src="../images/PictureGalleryShowingGraphics/thumb_right.png" width="14" height="60" alt="thumb right" />
                <img src="../images/PictureGalleryShowingGraphics/music_play.png" width="22" height="46" alt="music play" />
                <img src="../images/PictureGalleryShowingGraphics/vid_bg.png" width="30" height="28" alt="video bg" />
                <img src="../images/PictureGalleryShowingGraphics/vid_progress.png" width="10" height="28" alt="video progress" />
                <img src="../images/PictureGalleryShowingGraphics/vid_total.png" width="10" height="28" alt="video total" />
                <img src="../images/PictureGalleryShowingGraphics/video_preloader.gif" width="31" height="31" alt="video preloader" />
                  
            </div>
            
    	</div>

    
    </body>
    </form>
</html>
