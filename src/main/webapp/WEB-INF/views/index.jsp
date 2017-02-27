<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>首页</title>
<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/mycss/style.css">
<link rel="stylesheet"
	href="resources/assets/css/jquery.lightbox-0.5.css">
<script src="resources/assets/js/jquery-3.1.0.min.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<script src="resources/js/myjs/style.js"></script>
<script src="resources/js/myjs/Carousel.js"></script>
<script src="resources/assets/js/jquery.lightbox-0.5.min.js"></script>
</head>
<style >
#gallery .col-md-3{
padding-left:10px;
padding_right:10px;
}
</style>
<body>

	<div class="loader">
		<div class="loader-content">
			<img src="resources/images/11.gif" alt="Loader" class="loader-loader" />
		</div>
	</div>
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
							<a href="#"><img alt=""
								src="resources/images/touxiang.jpg.png" /></a>
						</div>
					</div>
				</div>
			</div>
		</header>
	</section> 
	<section id="nav-main">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-2 column" id="nav-l">
					<a href="#"><h2>Endless</h2></a>
				</div>
				<div class="col-md-10 column" id="nav-r">
					<ul>
						<!-- <li><a href="#">首页</a></li>
						<li><a href="news.html">资讯</a></li>
						<li><a href="#">装备</a></li>
						<li><a href="photo.html">摄影</a></li>
						<li><a href="#">位置</a></li>
						<li><a href="#">教程</a></li>
						<li><a href="#">攻略</a></li>
						<li><a href="#">社区</a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</section>
	<section id="pic">
		<div class="carousel slide" id="carousel-448951">
			<ol class="carousel-indicators">
				<c:forEach items="${carouselList}" varStatus="index">
					<li class="<c:if test="${index.index==0}">active</c:if>"
						data-slide-to="${index.index}" data-target="#carousel-448951">
					</li>
				</c:forEach>
				<!-- <li data-slide-to="1" data-target="#carousel-448951"></li>
				<li data-slide-to="2" data-target="#carousel-448951"></li>
				<li data-slide-to="3" data-target="#carousel-448951"></li> -->
			</ol>
			<div class="carousel-inner">
				<c:if test="${carouselList!=null}">
					<c:forEach items="${carouselList}" var="carousel" varStatus="index">

						<div class="item <c:if test="${index.index==0}">active</c:if>">
							<img alt="" src="${carousel.carouselhref}" />
						</div>
					</c:forEach>
				</c:if>
				
			</div>
			<a class="left carousel-control" href="#carousel-448951"
				data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#carousel-448951"
				data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
	</section>
	<section id="news">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="title-main-name">
						<div class="title-main-name-l"></div>
						<div class="title-main-name-c">
							<a href="#">
								<p>新闻</p>
							</a>
						</div>
						<div class="title-main-name-r"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="J_Poster poster-main"
			data-setting='{
                            "height":270,
                            "posterWidth":640,
                            "posterHeight":270,
                            "scale":0.8,
                            "verticalAlign":"middle",
                            "speed":1000,
                            "autoPlay":false,
                            "delay":2000
						}'>
			
			<div class="poster-btn poster-prev-btn"></div>
			<ul class="poster-list" style="list-style: none">
				<c:forEach items="${infoList}" var="info">
				<li class="poster-item"><a href="#">
				<div class="title">
							<p class="p-title" >${info.title}</p>
						</div>
						<div class="area">
							<p>${info.content}</p>
						</div>
						<img
						src="${info.imgurl}" width="100%" height="100%"></a>
					</li>
				</c:forEach>
			</ul>
			<div class="poster-btn poster-next-btn"></div>
			
		</div>
	</section>
	<section id="photo">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="title-main-name">
						<div class="title-main-name-l"></div>
						<div class="title-main-name-c">
							<a href="#">
								<p>摄影</p>
							</a>
						</div>
						<div class="title-main-name-r"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="gallery">
			<c:if test="${photoGraphieMap!=null}">
				<c:forEach items="${photoGraphieMap}" var="photoGraphieList"
					varStatus="status">

					<div class="container">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<div class="row">

									<c:forEach items="${photoGraphieList.value}" var="photoGraphie"
										varStatus="statuss">
										<div class="col-md-3">
											<div class="thumbnail">

												<a href="${photoGraphie.photourl}"
													title="${photoGraphie.title}"> <img alt="300x200"
													src="${photoGraphie.photourl}" />
												</a>

												<div class="caption">
													<h3>${photoGraphie.title}</h3>
													<p class="p-writer">${photoGraphie.author}</p>
													<p class="p-text">${photoGraphie.origin}</p>
													<p class="p-time">${photoGraphie.publishtime}</p>
												</div>
											</div>
										</div>
									</c:forEach>
									<!-- <div class="col-md-3">
								<div class="thumbnail">
									<a href="resources/images/bp2.jpg" title="6"> <img alt="300x200"
										src="resources/images/p2.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp3.jpg" title="7"> <img alt="300x200"
										src="resources/images/p3.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp4.jpg" title="8"> <img alt="300x200"
										src="resources/images/p4.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div> -->
								</div>
							</div>
						</div>
					</div>


				</c:forEach>
			</c:if>
			<!-- <div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="row">
						
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp5.jpg" title="5"> <img alt="300x200"
										src="resources/images/p5.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp6.jpg" title="6"> <img alt="300x200"
										src="resources/images/p6.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp7.jpg" title="7"> <img alt="300x200"
										src="resources/images/p7.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp8.jpg" title="8"> <img alt="300x200"
										src="resources/images/p8.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="row">
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp9.jpg" title="5"> <img alt="300x200"
										src="resources/images/p9.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp10.jpg" title="6"> <img alt="300x200"
										src="resources/images/p10.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp11.jpg" title="7"> <img alt="300x200"
										src="resources/images/p11.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">

									<a href="resources/images/bp12.jpg" title="8"> <img alt="300x200"
										src="resources/images/p12.jpg" />
									</a>

									<div class="caption">
										<h3>标题</h3>
										<p class="p-writer">作者</p>
										<p class="p-text">图片描述</p>
										<p class="p-time">2016.2.3</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
		</div>

	</section>
	<section id="shop">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="title-main-name">
						<div class="title-main-name-l"></div>
						<div class="title-main-name-c">
							<a href="#"><p>商城</p></a>
						</div>
						<div class="title-main-name-r"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div id="shop-box">
						<ul>
							<li><a href="#">热门商品</a></li>
							<li><a href="#">分类一</a></li>
							<li><a href="#">分类二</a></li>
							<li><a href="#">分类三</a></li>
							<li><a href="#">分类四</a></li>
							<li><a href="#">分类五</a></li>
							<li><a href="#">分类六</a></li>
							<li><a href="#">分类七</a></li>
						</ul>
						<div id="shop-s-box">
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop1.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop2.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop3.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop4.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop5.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop6.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop7.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop8.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop9.png">
									<p>商品名称</p></a>
							</div>
							<div class="shop-box-pic">
								<a href="#"><img src="resources/images/shop2.png">
									<p>商品名称</p></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="strategy">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="title-main-name">
						<div class="title-main-name-l"></div>
						<div class="title-main-name-c">
							<a href="#">
								<p>攻略</p>
							</a>
						</div>
						<div class="title-main-name-r"></div>
					</div>
				</div>
			</div>
		</div>
		<c:if test="${TripTravelInfoList!=null}">
			<c:forEach items="${TripTravelInfoList}" var="TripTravelInfo"
				varStatus="index">

				<div class="strategy-pic">
					<div class="container">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<div class="strategy-pic">
									<img class="strategy-pic-img" alt="" src="${TripTravelInfo.travelpicture }" /> <a
										href="#"> <span class="strategy-pic-title">${TripTravelInfo.travelname }</span></a>
								</div>
							</div>
						</div>
					</div>

					<%-- <div class="container">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<div class="carousel slide">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"> <img alt=""
												src="${TripTravelInfo.travelpicture }" height="201px"
												width="1140" />
												<div class="carousel-caption">
													<h4>${TripTravelInfo.travelname }</h4>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
				</div>
			</c:forEach>
		</c:if>
		<!-- <div class="strategy-pic">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img alt="" src="resources/images/s1.jpg" />
										<div class="carousel-caption">
											<h4>攻略标题</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="strategy-pic">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img alt="" src="resources/images/s2.jpg" />
										<div class="carousel-caption">
											<h4>攻略标题</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="strategy-pic">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img alt="" src="resources/images/s3.jpg" />
										<div class="carousel-caption">
											<h4>攻略标题</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="strategy-pic">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img alt="" src="resources/images/s4.jpg" />
										<div class="carousel-caption">
											<h4>攻略标题</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="strategy-pic">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img alt="" src="resources/images/s5.jpg" />
										<div class="carousel-caption">
											<h4>攻略标题</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	</section>
	<section id="footer">
		<footer>
			<div class="top">
				<a href="#nav-main" id="top-button" onfocus="this.blur();"><img
					src="resources/images/totop.png"></a>
			</div>
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-6 column" id="footer-l">
						<p>版权所有&nbsp;?&nbsp;Endless技术有限公司&nbsp;&nbsp;1998-2016&nbsp;&nbsp;保留一切权利</p>
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

	<script type="text/javascript">
    //数字转换为百分数的方法
     Number.prototype.toPercent=function(){
        return (Math.round(this*100)/100).toFixed(2)+'%';
    };
    //导航栏每一栏的类
    function navs(name,link) {  
        this.name=name;
        this.link=link;
    } 
    $(document).ready(function () {

        //引入lightBox插件
        $(function() {
            $('#gallery a').lightBox();
        });

       //生成carousel
        Carousel.in($(".J_Poster"));

         //new出每一栏
        var nav1=new navs("首页","index");
        var nav2=new navs("资讯","news");
        var nav3=new navs("装备","shop");
        var nav4=new navs("摄影","photo");
        var nav5=new navs("位置","#");
        var nav6=new navs("教程","tutorial");
        var nav7=new navs("攻略","trip");
        var nav8=new navs("社区","#");

        //加入数组
        var nav = new Array(nav1,nav2,nav3,nav4,nav5,nav6,nav7,nav8);

        //插入节点
        for(i=0;i<nav.length;i++){
            var link=nav[i].link;
            var name=nav[i].name;
         $("#nav-r ul").append(" <li><a href='"+link+"' >"+name+"</a></li>");
        } 

        //定义样式
         var length=[(100/nav.length).toPercent()].join();//获取每栏宽度
        $("#nav-r ul li").css("width",length); 
    });
</script>

</body>
</html>
