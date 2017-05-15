<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/view/common/tagPage.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta name="author" content="">

    <title>在线简繁体转换工具</title>
    <link href="${webRoot}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${webRoot}/css/main.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="header clearfix"><h1 class="text-muted">简繁体转换工具</h1></div>

        <div class="text-write">
            <div class="text-content">
                <div style="width: 100%;">
                    <button class="close" data-dismiss="alert" aria-label="清除文字" aria-hidden="false">
                        <span aria-hidden="true">&times;</span>
                    </button>

                    <textarea id="txt" class="form-control" rows="16" spellcheck="false" placeholder="请输入文本"></textarea>
                </div>
            </div>

            <div class="text-actions">
                <button type="button" class="btn btn-success" disabled>转换成简体字</button>
                <div class="btn-group">
                    <button type="button" class="btn btn-primary">转换成正体繁体 </button>
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        <span class="caret"></span>
                        <span class="sr-only">转换成正体繁体</span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">转换成台湾繁体</a></li>
                        <li><a href="#">转换成香港繁体</a></li>
                    </ul>
                </div>
                <button type="button" class="btn btn-default pull-right">复制</button>
            </div>
        </div>
    </div>

    <script src="${webRoot}/js/jQuery-core/jquery.min.js"></script>
    <script src="${webRoot}/js/jQuery-core/jquery.zclip.min.js"></script>
    <script src="${webRoot}/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            if (window.clipboardData ) {
                $('.btn-default').click(function() {
                    window.clipboardData.setData("Text", $("#txt").val());
                    alert('复制成功！');
                });
            } else {
                $(".btn-default").zclip({
                    path:'http://img3.job1001.com/js/ZeroClipboard/ZeroClipboard.swf',
                    copy:function(){return $("#txt").val();},
                    afterCopy:function(){alert('复制成功！');}
                });
            }
        });

    </script>
</body>
</html>
