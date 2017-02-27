<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>摄影</title>
<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/mycss/style.css">
<link rel="stylesheet" href="resources/layui/css/layui.css">
<link rel="stylesheet" href="resources/css/mycss/photo.css">
<script src="resources/assets/js/jquery-3.1.0.min.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<script src="resources/layui/layui.js"></script>
<script type="text/javascript"
	src="resources/assets/js/jquery.dotdotdot.js"></script>
<link
	href='//cdn.webfont.youziku.com/webfonts/nomal/94593/19505/58280c3df629d8127c0d2c2c.css'
	rel='stylesheet' type='text/css' />
<link
	href='//cdn.webfont.youziku.com/webfonts/nomal/94593/46861/58280ffcf629d8127c0d2c32.css'
	rel='stylesheet' type='text/css' />
<style type="text/css">
</style>

</head>
<body>
	<div class="loader">
		<div class="loader-content">
			<img src='resources/images/11.gif' alt="Loader" class="loader-loader" />
		</div>
	</div>
	<div id="header-pic">
		<div class="cover">
			<h1 class="css70199183c17181">封面</h1>
			<h1 class="css701a7bb0017181">每日</h1>
		</div>
		<div class="message">
			<div class="icon">
				<a id="button" href="#header" onfocus="this.blur();"><img
					src="resources/images/pulldown.png"></a>
			</div>
			<p id="title">标题</p>
			<p id="author">作者</p>
		</div>
	</div>
	<div id="text">
		<section id="header">
			<header>
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-6 column" id="header-l">
							<p>欢迎来到Endless</p>
							<p>请</p>
							<p>
								<a href="#">登陆</a>
							</p>
							<p>
								<a href="#">注册</a>
							</p>
						</div>
						<div class="col-md-6 column" id="header-r">
							<p>
								<a href="#">退出</a>
							</p>
							<p>
								<a href="#">用户名</a>
							</p>
							<div id="head-pic">
								<a href="#"><img alt="" src="resources/images/touxiang.jpg.png" /></a>
							</div>
						</div>
					</div>
				</div>
			</header>
		</section>
		<section id="photo">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column"
						style="padding-left: 0px; padding-right: 0px;">
						<div class="title-main-name">
							<div class="title-main-name-c">
								<a href="index.html">
									<p style="font-size: 20pt; float: left">摄影</p>
								</a>
							</div>
							<button type="button" class="btn btn-default photo-btn">浏览最多</button>
							<button type="button" class="btn btn-default photo-btn">最新发布</button>
							<button type="button" class="btn btn-default photo-btn">我的上传</button>
						</div>
					</div>
				</div>
			</div>
			<div id="gallery">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="row" id="photo-box"></div>
						</div>
					</div>
				</div>

			</div>

		</section>
		<section id="footer">
			<footer>
				<div class="top">
					<a href="#header-pic" id="top-button" onfocus="this.blur();"><img
						src="resources/images/totop.png"></a>
				</div>
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-6 column" id="footer-l">
							<p>版权所有&nbsp;©&nbsp;Endless技术有限公司&nbsp;&nbsp;1998-2016&nbsp;&nbsp;保留一切权利</p>
						</div>
						<div class="col-md-6 column" id="footer-r">
							<ul>
								<li><a href="#">法律声明</a></li>
								<li><a href="#">隐私保护</a></li>
								<li><a href="#">联系我们</a></li>
								<li><a href="#">网站地图</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</section>
	</div>
	<script>
    //载入动画
    window.onload = function(){
        setTimeout(function(){
            var loader = document.getElementsByClassName("loader")[0];
            loader.className="loader fadeout" ;//使用渐隐的方法淡出loading page
            setTimeout(function(){loader.style.display="none"},1000)
        },2000);//强制显示loading page 1s
    };

    $(document).ready(function () {

        //获取当前页面宽度和高度
        var width = $(document).width;
        var height = $(window).height();

        //设置封面宽高
        $("#header-pic").css({"width": width, "height": height});
        $(" .cover").css("height", height - 80);
        $(".top").css("top", height - 90);

        //锚点链接平滑效果
        $("#button").click(function () {
            $("#text").css("display", "block");//显示文本
            $('html,body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 1000);
            return false;
        });
        //回到顶部
        $("#top-button").click(function () {
            setTimeout(function () {
                $("#text").css("display", "none");//隐藏文本
            }, 500);
            $('html,body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 500);
            return false;
        });

        //引用lightBox插件
        $(function () {
            $('#gallery a').lightBox();
        });

        //鼠标滚轮滚动时触发
        $(window).scroll(function () {

            //根据scrollTop判断header位置
            if ($(window).scrollTop() >= $(window).height()) {
                $("#header").css({
                    position: "fixed"
                });
                $("#photo").css(
                    "margin-top", 30
                );

            } else if ($(window).scrollTop() < $(window).height() && $(window).scrollTop() != 0) {
                $("#header").css(
                    "position", "relative"
                );
                $("#photo").css(
                    "margin-top", 0
                );
            }

            //设置top的显示和隐藏
            if ($(window).scrollTop() >= ($(window).height()) + 80) {
                $(".top").fadeIn(1000);
            }
            else if ($(window).scrollTop() < ($(window).height()) + 80) {
                $(".top").fadeOut(1000);
            }

        })

        //流加载
        layui.use('flow',function () {
            var $ = layui.jquery;
            var flow = layui.flow;
            flow.load({
                elem: '#photo-box' //流加载容器
                ,done: function(page, next){ //执行下一页的回调
                     var lis = [];
                	 var totalPage = '${totalPage}';
                     //注意：page是从2开始返回
                    /*  $.get('/getPhoto?page='+page, function(res){
                     //假设列表返回在data集合中
	                     layui.each(res.data, function(index, item){
	                     	lis.push('<div class="col-md-3"> <div class="thumbnail"> <a href="images/bp1.jpg" title="照片详情"><img alt="300x200" src="images/p1.jpg" /> </a> <div class="caption"> <h3>标题 </h3> <p class="p-writer">作者 </p> <p class="p-text">图片描述 </p> <p class="p-time">2016.2.3 </p> </div> </div> </div>');
	                     });
	
	                     //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
	                     //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
	                     next(lis.join(''), page < 10); //假设总页数为 10
                     }, 500); */
                     function getLocalTime(nS) {     
                 	    return new Date(parseInt(nS) ).toLocaleString().substr(0,8)};
                     $.ajax({
           				url:"getPhoto?page="+page,
           				type:"GET",
           				dataType:"json",
           				success: function(data) {
           					console.log(data);
           					var lis=[];
           					layui.each(data,function(index,photoGraphy){
           						lis.push('<div class="col-md-3"> <div class="thumbnail"> <a href="'+
           								"111"+'" title="'+photoGraphy.photoparam+'"><img alt="300x200" src="'+
           								photoGraphy.photourl+'" /> </a> <div class="caption"> <h3>'+photoGraphy.title +'</h3> <p class="p-writer">'
           								+photoGraphy.author +'</p> <p class="p-text">'+ photoGraphy.introduction +'</p> <p class="p-time">'
           								+photoGraphy.publishtime +'</p> </div> </div> </div>');
           					});
           					next(lis.join(''), page < totalPage);
           				},
           				error: function(XMLHttpRequest, textStatus, errorThrown) {
           					alert("系统出错！");
           				},
                     });
                     /* setTimeout(function(){
                        var lis = [];
                        for(var i = 0; i < 12; i++){
                            lis.push('<div class="col-md-3"> <div class="thumbnail"> <a href="images/bp1.jpg" title="照片详情"><img alt="300x200" src="images/p1.jpg" /> </a> <div class="caption"> <h3>标题 </h3> <p class="p-writer">作者 </p> <p class="p-text">图片描述 </p> <p class="p-time">2016.2.3 </p> </div> </div> </div>')
                        }
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page <5); //假设总页数为 10
                        //再次引用lightBox插件
                        $(function () {
                            $('#gallery a').lightBox();
                        });
                    }, 500);  */

                }
            });
            //图片懒加载
            flow.lazyimg();
        });
    });




</script>
</body>
</html>