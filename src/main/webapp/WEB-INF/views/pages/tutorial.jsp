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
    <title>tutorial</title>
    <link rel="stylesheet" href="resources/assets/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/mycss/style.css">
   
    <link rel="stylesheet" href="resources/css/mycss/tutorial.css">
   
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    
    <script src="resources/assets/js/jquery-3.1.0.min.js"></script>
    
    <script src="resources/assets/js/bootstrap.min.js"></script>
    <script src="resources/js/myjs/style.js"></script>
    
    <script src="resources/layui/layui.js"></script>
    
    <style type="text/css">
    </style>

</head>
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
                    <p><a href="#">登陆</a></p>
                    <p><a href="#">注册</a></p>
                </div>
                <div class="col-md-6 column" id="header-r">
                    <p><a href="#">退出</a></p>
                    <p><a href="#">用户名</a></p>
                    <div id="head-pic"><a href="#" ><img alt="" src="resources/images/touxiang.jpg.png" /></a></div>
                </div>
            </div>
        </div>
    </header>
</section>
<section id="nav">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column" style="padding-left: 0px;padding-right: 0px;">
                <div class="title-main-name" style="margin-top: 60px;">
                    <div class="title-main-name-c" style="padding-left: 15px;">
                        <a href="index.html">  <p style="font-size: 20pt;float: left">教程</p></a>
                    </div>                
                    <button type="button" class="btn btn-default photo-btn" data-sporttype_id="">全部教程</button>     
                    <c:forEach items="${sporttypelist}" var="sporttype">
					   <button type="button" class="btn btn-default photo-btn" data-sporttype_id="${sporttype.sporttypeid}" id="sporttype_button">${sporttype.sporttypename}</button>
					</c:forEach>                 
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row clearfix tutorial-row" id="tutorial-box"></div>
</div>
<section id="footer">
    <footer>
        <div class="top"><a href="#nav" id="top-button" onfocus="this.blur();"><img src="resources/images/totop.png"></a></div>
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-6 column" id="footer-l">
                    <p>版权所有&nbsp;©&nbsp;Endless技术有限公司&nbsp;&nbsp;1998-2016&nbsp;&nbsp;保留一切权利</p>
                </div>
                <div class="col-md-6 column" id="footer-r">
                    <ul>
                        <li><a href="#">法律声明</a> </li>
                        <li><a href="#">隐私保护</a> </li>
                        <li><a href="#">联系我们</a> </li>
                        <li><a href="#">网站地图</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</section>
<script type="text/javascript">
var totalRecord = '${pages}';
	//将相同代码封装为JS对象，减少代码重复
	function flow_flash(){ 
		 this.flash = function(sporttypeid,totalRecord){
			 layui.use('flow',function () {
			       var $ = layui.jquery;
			       var flow = layui.flow;
			       var page = 0;			    
				   var lis=[];
			       flow.load({
			           elem: '#tutorial-box' //流加载容器
			           ,done: function(page, next){ //执行下一页的回调
			                $.ajax({
			    				url:"getData?page="+page+"&sporttypeid="+sporttypeid,
			    				type:"GET",
			    				dataType:"json",
			    				success: function(data) {
			    					console.log(data);			
			    					layui.each(data,function(index,course){
			    						lis.push("<div class='col-md-4 column'> <div class='tutorial-small'><img src='"+course.coverpicture+"'> <a href='#'> <span class=' tutorial-title'>"+course.coursetitle+"</span></a> </div> </div>");			    	           			
			    					});
			    					next(lis.join(''), page < parseInt(totalRecord));
			    				},
			    				error: function(XMLHttpRequest, textStatus, errorThrown) {
			    					alert("系统出错！");
			    				},
			    			});
			           }
			       });
			       //图片懒加载
			       flow.lazyimg();
			   }); 
		}
	}	
	
	//创建对象
	var flow_flash=new flow_flash();
	
	//初次进入默认查找全部教程信息
	flow_flash.flash("",totalRecord);
	
	//按照类型查找的触发事件 
   $("Button.photo-btn").click(function(){
	 //置空div
	   $("#tutorial-box").empty();
	   //获取教程类型id
	   var sporttypeid = $(this).data('sporttype_id');	 
	   $.ajax({
		   url:"getPages?page=1&sporttypeid="+sporttypeid,
			type:"GET",
			success: function(data) {
				 //调用对象刷新div
				   flow_flash.flash(sporttypeid,data);
			},
		});	   
   });
</script>
</body>
</html>