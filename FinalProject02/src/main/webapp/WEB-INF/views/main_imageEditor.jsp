<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Shuttle</title>
        <link rel="icon" href="/resources/images/icon.png" type="image/x-icon">
        <link type="text/css" href="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.css" rel="stylesheet">
        <link type="text/css" href="/resources/toast/tui-image-editor.css" rel="stylesheet">
        <style>
            @import url(http://font	s.googleapis.com/css?family=Noto+Sans);
            html, body {
                height: 100%;
                margin: 0;
            }
        </style>
    </head>
    <body>
    
    
	<%@ include file="/WEB-INF/views/header.jsp" %>

        <div id="tui-image-editor-container"></div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/3.6.0/fabric.js"></script>
        <script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.min.js"></script>
        <script type="text/javascript" src="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.3/FileSaver.min.js"></script>
        <script type="text/javascript" src="/resources/toast/tui-image-editor.js"></script>
        <script type="text/javascript" src="/resources/toast/theme/white-theme.js"></script>
        <script type="text/javascript" src="/resources/toast/theme/black-theme.js"></script>
        <script>
         // Image editor
         var imageEditor = new tui.ImageEditor('#tui-image-editor-container', {
             includeUI: {
                 loadImage: {
                     path: 'resources/toast/img/flower.jpg',
                     name: 'SampleImage'
                 },
                 theme: whiteTheme, 
                 initMenu: 'draw',
                 menuBarPosition: 'bottom'
             },
             cssMaxWidth: 700,
             cssMaxHeight: 500,
             usageStatistics: false
         });
         window.onresize = function() {
             imageEditor.ui.resizeEditor();
         }
        </script>
        
        
	<%@ include file="/WEB-INF/views/footer.jsp" %>
    </body>
</html>