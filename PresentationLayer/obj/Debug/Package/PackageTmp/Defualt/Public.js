
/// <reference path="jquery-1.4.1.min.js" />

//============ set src imgWait's for Waiting.htm
function setSrcimgWait() {
    imgWaits = $('.imgWait');

    var srcTemp = imgWaits.first().attr('src');

    if (srcTemp != null) {
        srcTemp = srcTemp.replace('~/PresentationLayer/', RootPath);

        imgWaits.attr({ 'src': srcTemp });
    }
    
}

//============ document_ready
$(document).ready(function () {
    //set src imgWait's for Waiting.htm
    setSrcimgWait();


    $('.aimgbtnFactorPursue').click(aimgbtnFactorPursue_click);
    $('.imgbtnFactorPursue').mouseenter(imgbtnFactorPursue_mouseenter);
    $('.imgbtnFactorPursue').mouseleave(imgbtnFactorPursue_mouseleave);

});



//============ on & off Waiting div
function actionWaitingMessage(status, parentTemp) {
    if (status == 'on') {
        
        $(parentTemp).find('.divWaitingMessage').fadeIn();
    }
    else {
        $(parentTemp).find('.divWaitingMessage').fadeOut();
    }
}

//============ on & off Success div
function actionSuccessMessage(status, parentTemp, Msg) {
    if (status == 'on') {
        // set message Success
        $(parentTemp).find('.divSuccessMessage').html(Msg);

        $(parentTemp).find('.divSuccessMessage').fadeIn();
    }
    else {
        $(parentTemp).find('.divSuccessMessage').fadeOut();
    }
}

//============ on & off Error div
function actionErrorMessage(status, parentTemp, Msg) {
    if (status == 'on') {
        // set message Error
        $(parentTemp).find('.divErrorMessage').html(Msg);

        $(parentTemp).find('.divErrorMessage').fadeIn();
    }
    else {
        $(parentTemp).find('.divErrorMessage').fadeOut(0);
    }
}


//======================== click in aimgbtnFactorPursue
function aimgbtnFactorPursue_click() {
    var urlStr = RootPath() + 'Page/Public/FactorPursue.aspx';

    window.open(urlStr);
}

//========================== mouseenter in div Img Message Send
function imgbtnFactorPursue_mouseenter() {
    $(this).animate({ 'width': '42px' }, 100);
}

//========================== mouseenter in div Img Message Send
function imgbtnFactorPursue_mouseleave() {
    $(this).animate({ 'width': '40px' }, 100);
}












//============================== Replace Thumbnail Path to Update Path
// example: Replace("upload/Thumbnail/", "upload/")
function ReplaceThumbnailUpdate(PathFile) {
    // if file is uploaded in mySelf site
    if (PathFile.indexOf('http://') == -1) {
        PathFile = PathFile.toLowerCase().replace("upload/thumbnail/", "upload/");
    }
    return PathFile;
}


//============================== Replace Upload Path to Thumbnail Path
// example: Replace("upload/", "upload/Thumbnail/")
function ReplaceUploadThumbnail(PathFile) {
    // if file is uploaded in mySelf site
    if (PathFile.indexOf('http://') == -1) {
        PathFile = PathFile.toLowerCase().replace("upload/", "upload/Thumbnail/");
    }
    return PathFile;
}



//===================== return path form root site
function PathNavigator(nav) {
    //default path is Page/..
    var path = '../../';

    if ($('#lblPathHeader').html() != null) {
        path = $('#lblPathHeader').html();
    }

    return path + nav;
}

//===================== return path form root site
function RootPath() {
    //default path is Page/..
    var path = '../../';

    if ($('#lblPathHeader').html() != null) {
        path = $('#lblPathHeader').html();
    }

    return path;
}

