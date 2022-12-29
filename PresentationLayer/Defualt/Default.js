
/// <reference path="jquery-1.4.1.min.js" />
/// <reference path="Public.js" />
/// <reference path="jquery.corner.js" />


$(document).ready(function () {
    
    $('.numberBuyNewsView').click(numberBuyNewsView_click);
    var numberBuyNewsViewClicked = 'false';
    //============ click in Div numberBuyNewsView
    function numberBuyNewsView_click() {
        numberBuyNewsViewClicked = 'true';
    }

    $('.numberBuyNewsView').keypress(numberBuyNewsView_keypress);
    //========================== enter in footerBuyBasket TextBox 
    function numberBuyNewsView_keypress(key) {
        if (key.keyCode == 13) {
            addToBasketNewsView(this);
            key.preventDefault();
        }
    }

    $('.priceDefault').click(priceDefault_click);
    //============ click in Div addToBasketNewsView
    function priceDefault_click() {
        addToBasketNewsView(this);
    }

    //============ add To Basket Buy
    function addToBasketNewsView(thisTemp) {

        if (numberBuyNewsViewClicked == 'false') {
            var parent = $(thisTemp).closest('.news');

            parent.find('.numberBuyNewsView').val(parseInt(parent.find('.numberBuyNewsView').val()));
            if (parent.find('.numberBuyNewsView').val() == 'NaN') {
                parent.find('.numberBuyNewsView').val('1');
            }

            objBuy.status = 'on';
            objBuy.id = parent.find('.txtImg1').find('.txtID').val();
            objBuy.titr = parent.find('.txtImg1').find('.titr1').html();
            objBuy.price = parent.find('.txtImg1').find('.txtPrice').val();
            objBuy.count = parent.find('.priceDefault').find('.numberBuyNewsView').val();

            toggleBuyBasketPnl('on');
        }
        else {
            numberBuyNewsViewClicked = 'false';
        }

    }

    //============== hover mouse in images in bottom page
    $('.priceDefault').hover(priceDefault_hover);
    function priceDefault_hover() {
        $(this).toggleClass('priceHoverDefault');
        $(this).find('.cntPriceDefault').toggleClass('cntPriceHoverDefault');
        $(this).find('.countNewsDefault').toggleClass('countNewsHoverDefault');

        $(this).find('.ToolTipPriceDefault')
                .toggleClass('ToolTipPriceHoverDefault');

    }


    //============== hover mouse in images in bottom page
    $('.imgFooterDF').hover(imgFooterDF_hover);
    function imgFooterDF_hover() {
        //$(this).toggleClass('divHover');
    }

    //============== for mouse move in up Titrs1
    $('.cntTitrs1').mouseenter(cntTitrs1);
    $('.cntTitrs1').mouseleave(cntTitrs1);
    //for save titr that is selected
    var selectedTitrW = $('#titrs1W');
    var selectedTitrP = $('#titrs1P');

    //============== click event for image in Footer
    function cntTitrs1() {
        if (!($(this).hasClass('cntTitrs1Back'))) {
            $(this).toggleClass('cntTitrs1Back');
            // toggle white || blue Color text
            $(this).find('.lnk').toggleClass('whiteText');

            //first parent
            var fParent = $(this).parents('.ContentRow1');


            if (fParent.hasClass('workPage')) {
                // set back blue
                selectedTitrW.toggleClass('cntTitrs1Back');
                // toggle white || blue Color text
                selectedTitrW.find('.lnk').toggleClass('whiteText');
                selectedTitrW = $(this);

                //change titr1 Big
                changeTitr1Big(this);
            }
            else {
                // set back blue
                selectedTitrP.toggleClass('cntTitrs1Back');
                // toggle white || blue Color text
                selectedTitrP.find('.lnk').toggleClass('whiteText');
                selectedTitrP = $(this);

                //change titr1 Big
                changeTitr1Big(this);
            }
        }
    };

    //============== change titr1 big
    function changeTitr1Big(thisTemp) {
        var parentThisTemp = $(thisTemp).closest('.news');
        var speedFade = 100;

        //set image titr1 big
        parentThisTemp.find('.imgTitr1').fadeOut(speedFade, fadeInimgTitr1);
        var tempPrice = $(thisTemp).find('.txtPrice').val();

        function fadeInimgTitr1() {

            var tempSelSrc = $(thisTemp).find('.imgbtnTitr1').attr('src');
            var tempSelAlt = $(thisTemp).find('.imgbtnTitr1').attr('alt');
            var tempSelHref = $(thisTemp).find('.aimgbtnTitr1').attr('href');

            parentThisTemp.find('.imgTitr1')
                .attr({ 'src': tempSelSrc, 'alt': tempSelAlt })
                .fadeIn(speedFade, srcImageBigSize);

            //Replace Thumbnail Update path for view big image
            tempSelSrc = ReplaceThumbnailUpdate(tempSelSrc);

            function srcImageBigSize() {
                parentThisTemp.find('.imgTitr1').parent().attr({ 'href': tempSelHref }).fadeIn(speedFade);
                parentThisTemp.find('.imgTitr1').attr({ 'src': tempSelSrc, 'alt': tempSelAlt }).fadeIn(speedFade);
            }
        }

        //set titr1 big
        var tempID = $(thisTemp).find('.txtID').val();
        parentThisTemp.find('.txtImg1').find('.txtID').val(tempID);
        parentThisTemp.find('.txtImg1').find('.txtPrice').val(tempPrice)

        if ((tempPrice == '') || (tempPrice == '0')) {
            $(parentThisTemp).find('.priceDefault').fadeOut(speedFade);
        }
        else {
            $(parentThisTemp)
                    .find('.priceDefault').fadeIn(speedFade)
                    .find('.PriceTitr1Big').html(tempPrice).fadeOut(0).fadeIn(0);
        }

        tempSel = $(thisTemp).find('.lnk').html();
        var tempSelHref = $(thisTemp).find('.lnk').attr('href');
        parentThisTemp.children('.txtImg1').find('.titr1').attr({ 'href': tempSelHref }).html(tempSel);

        //set lead titr1
        tempSel = $(thisTemp).find('.lblInfoTitr').val();
        tempSel = splitInfo(tempSel, 'lead');
        parentThisTemp.children('.txtImg1').children('.divtxtLeadTitr1BigDF')
            .children('.txtLeadTitr1Big').html(tempSel);

        tempSel = $(thisTemp).find('.lblInfoTitr').val();
        tempSel = splitInfo(tempSel, 'nextNews');
        parentThisTemp.children('.txtImg1').children('.nextNewsDF')
        .html(tempSel);

        //set info news
        tempSel = $(thisTemp).find('.lblInfoTitr').val();
        parentThisTemp.children('.txtImg1').find('.lblInfoTitr').val(tempSel);

    };

    //============== return titr, lead, image,... in string arguman
    function splitInfo(text, request) {
        var splitText = text.split('##');

        switch (request) {
            case 'lead':
                return splitText[2];
                break;

            case 'nextNews':
                return splitText[5];
                break;
        }
    }















    //============== for hover mouse in div Img Me
    $('.divImgMe').hover(hoverImg);
    function hoverImg() {
        if ($(this).find('.right').hasClass('rightG')) {
            $(this).find('.right').toggleClass('rightG2');
        }
        else {
            $(this).find('.right').toggleClass('rightW2');
        };

        $(this).toggleClass('divImgMeHover');

        //        $(this).find('.left').toggleClass('leftW');
        //        $(this).find('.left').toggleClass('leftG');
    }

    //============== for switch page to Work || Personal
    // class name page that is Viewing
    var viewCls = '.workPage';
    // class name page that is Hidden
    var hiddenCls = '.personalPage';
    //speed switch page
    var speedOut = 1300;
    var speedIn = 1310;

    // click under page personal for go to Personal Page
    $('.divImgMe').click(switchPage);
    $(hiddenCls).find('.imgTitlePage').click(switchPage);
    $('.divImgMe').parent().children('.navar').hover(divImgMe_hover);

    function divImgMe_hover() {
        $(this).parent().children('.divImgMe').toggleClass('divImgMeHover');

        var divImgMeTemp = $(this).parent().children('.divImgMe');
        if ($(divImgMeTemp).find('.right').hasClass('rightG')) {
            $(divImgMeTemp).find('.right').toggleClass('rightG2');
        }
        else {
            $(divImgMeTemp).find('.right').toggleClass('rightW2');
        };
    }


    // define do first click in divImgMe
    var firstClickInDivImgMe = 'true';

    //=========================== returnRankSettingInFirstClickUnderDivImgMe
    function returnRankSetting(nameElement) {
        switch (nameElement) {
            case 'imgbtnTitr1P':
                return 0;
                break;

            case 'imgbtnTitr2P':
                return 1;
                break;

            case 'imgbtnTitr3P':
                return 2;
                break;

            case 'imgbtnTitr4P':
                return 3;
                break;

            case 'imgbtnGraphicP1':
                return 4;
                break;

            case 'imgbtnGraphicP2':
                return 5;
                break;

            case 'imgbtnGraphicP3':
                return 6;
                break;
        } 
    }

    //=========================== set Setting in first Click Under DivImgMe
    // example images in personal page
    function setSettingInFirstClickUnderDivImgMe() {
        var infoTemp = $(hiddenCls).find('.SettingInFirstClickUnderDivImgMe').val().split('##');

        $(hiddenCls).find('.imgTitr1')
            .attr({ 'src':
                ReplaceThumbnailUpdate(PathNavigator(infoTemp[returnRankSetting('imgbtnTitr1P')]
                .replace('~/PresentationLayer/', '')))
            });
        $(hiddenCls).find('.imgbtnTitr1P')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnTitr1P')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnTitr2P')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnTitr2P')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnTitr3P')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnTitr3P')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnTitr4P')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnTitr4P')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnGraphicP1')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnGraphicP1')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnGraphicP2')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnGraphicP2')]
                .replace('~/PresentationLayer/', ''))
            });

        $(hiddenCls).find('.imgbtnGraphicP3')
            .attr({ 'src':
                PathNavigator(infoTemp[returnRankSetting('imgbtnGraphicP3')]
                .replace('~/PresentationLayer/', ''))
            });
    }

    //=========================== switch between Personal page & Work page
    function switchPage() {

        if (firstClickInDivImgMe == 'true') {
            firstClickInDivImgMe = 'false'
            setSettingInFirstClickUnderDivImgMe();
        }

        //set image txt Name Page
        $(viewCls).find('.imgTitlePage').css({ 'cursor': 'pointer' }).click(switchPage);
        $(hiddenCls).find('.imgTitlePage').css({ 'cursor': 'default' }).unbind('click');

        // right viewCls & hiddenCls
        var viewR = parseInt($(viewCls).css('right'));
        var hiddenR = parseInt($(hiddenCls).css('right'));

        // create temp div for animate true
        var tempDiv = $('#tempDiv');
        tempDiv.html($(viewCls).children('.move').html());
        tempDiv.css('right', '-1820px');

        // send to right imgTxtPersonal
        tempDiv.find('.imgTitlePage').css({ 'right': '850px' });

        tempDiv.animate({ 'right': '-850px' }, speedIn);


        $(viewCls).animate({ 'right': viewR + 970 + 'px' }, speedOut);
        $(hiddenCls).animate({ 'right': hiddenR + 970 + 'px' }, speedOut, '', switchCls);

        // send to right imgTxtPersonal
        $(this).parentsUntil('.ContentRow1').find('.imgTitlePage').animate({ 'right': '0px' }, 1400, openM);

        // show first menu then div is be view in Personal & Work Page
        function openM() {

            if (viewCls == '.workPage') {
                $("#infoBest1").slideDown(700);
            }
            else {
                $("#infoBest101").slideDown(700);
            }
        }

        //=========================== switch Class view & hidden div
        function switchCls() {
            //return css whit state that page is started
            // send to right imgTxtPersonal
            $(viewCls).find('.imgTitlePage').css({ 'right': '850px' });
            $(viewCls).css({ 'right': '-850px' });
            tempDiv.html('');

            if (viewCls == '.workPage') {
                viewCls = '.personalPage';
                hiddenCls = '.workPage';

                //close all menu Work Page then div is hidden
                $("#infoBest1").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("tafrig").removeClass("add");
                $("#infoBest2").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("add").removeClass("tafrig");
                $("#infoBest3").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("add").removeClass("tafrig");
            }
            else {
                viewCls = '.workPage';
                hiddenCls = '.personalPage';

                //close all menu Personal Page then div is hidden
                $("#infoBest101").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("tafrig").removeClass("add");
                $("#infoBest102").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("add").removeClass("tafrig");
                $("#infoBest103").slideUp(0).prev('.bandTitle').children('.txtTitle').addClass("add").removeClass("tafrig");

            }
        };
    };



    //============== for panel Best Product
    $(".bandTitle").click(showInfo);
    $(".bandTitle").hover(bandTitle_hover);

    // hover on bandTitle
    function bandTitle_hover() {

        if ($(this).parents('.divBestPro').hasClass('blueBack')) {
            $(this).toggleClass('blueBandHover');
        }
        else {
            $(this).toggleClass('orangeBandHover');
        }
    };

    //click in bandTitle
    function showInfo() {

        // if selected item is not youSelf
        if (!($(this).children("div.txtTitle").hasClass("tafrig"))) {
            $(this).parent().children("div.bandTitle").children("div.txtTitle").removeClass("tafrig").addClass("add");
            //$(".titleBestPro").nextAll("div.bandTitle").children("div.txtTitle").removeClass("tafrig").addClass("add");

            //close info div 
            $(this).prevAll(".infoBest").slideUp(100);
            $(this).nextAll(".bandTitle").nextAll(".infoBest").slideUp(100);

            // view info div that clicked
            $(this).next("div.infoBest").slideToggle(200);

            $(this).find("div.txtTitle").toggleClass("add");
            $(this).find("div.txtTitle").toggleClass("tafrig");

            //set other div height
            function setHeight() {
                //document.write($(".divBestPro").css("height"));
                //$("#row1DF").animate({ height: $(".divBestPro").css("height") });
                //$("#allPic1").animate({ height: $(".divBestPro").css("height") });
                //$(".specialPro").animate({ height: $(".divBestPro").css("height")});
            };
        }
        else {
            $(this).children("div.txtTitle").toggleClass("add");
            $(this).children("div.txtTitle").toggleClass("tafrig");

            //close info div 
            $(this).next(".infoBest").slideUp(100);
        }


    };

});