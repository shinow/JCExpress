<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/base/base.jsp"%>
<!DOCTYPE HTML>
<html class="no-js" lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>关于锦程-锦程网络</title>
		<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="author" content="http://www.imj2.com/" />
	<link rel="alternate icon" type="image/png" href="${maosta}/assets/images/favicon.png">
	<link rel="stylesheet" href="${maosta}/assets/css/amazeui.min.css">
	<link rel="stylesheet" href="${maosta}/assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	<script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.js"></script>

	<![endif]-->
</head>
<!--[if lt IE 9]>
<div class="am-modal am-modal-no-btn am-modal-active" tabindex="-1" id="doc-modal-1" style="display: block; width: 400px; margin-left: -200px; margin-top: -112px;">
<div class="am-modal-dialog">
<div class="am-modal-hd">365 安全卫士提醒</div>
<div class="am-modal-bd">你的浏览器太古董了，还不换一个你就奥特曼了
    <a href="http://browsehappy.com/" target="_blank" class="am-btn am-btn-danger am-btn-sm am-radius" rel="nofollow">速速点击换一个</a>
    </div>
</div>
</div>
<![endif]-->
<body>
<header class="m-hd">
    <section data-am-sticky class="am-show-md-up">
    <div class="am-container">
        <a href="/" rel="nofollow" class="m-logo"><i class="am-icon-spinner"></i> J2 Network</a>
		<!--<ul class="am-fr m-about">
                <li><a href="/about/" class="am-btn am-btn-danger am-btn-sm am-radius" rel="nofollow">关于我们</a></li>
                <li><a href="/contact/" class="am-btn am-btn-danger am-btn-sm am-radius" rel="nofollow">联系我们</a></li>
            </ul> -->
        <nav>
           <ul class="m-nav am-nav am-nav-pills am-fr">
            <li><a href="${mao}/index" rel="nofollow">网站首页</a></li>
            <li><a href="${mao}/fuwu" rel="nofollow">服务内容</a></li>
            <li><a href="${mao}/zixun" rel="nofollow">最新动态</a></li>
			<li><a href="${mao}/piliang" rel="nofollow">会员专区</a></li>
            <li><a href="${mao}/about" rel="nofollow">关于我们</a></li>
            <li><a href="${mao}/contact" rel="nofollow">联系我们</a></li>
			<li><a href="${mao}/login"  id="login" class="am-btn am-btn-primary" rel="nofollow">登录</a></li>
         	<li><a href="${mao}/regist"  id="regist" class="am-btn am-btn-success" rel="nofollow">注册</a></li>
          </ul>
        </nav>
    </section>

    </div>
    <nav data-am-widget="header" class="am-header am-show-sm-only">
      <div class="am-header-left am-header-nav">
        <a href="/" rel="nofollow">
          <i class="am-header-icon am-icon-home"></i> 首页
        </a>
      </div>
      <h1 class="am-header-title">
        <a href="/" rel="nofollow">锦程网络</a>
      </h1>
      <div class="am-header-right am-header-nav">
        <a href="#right-link" class="" data-am-offcanvas="{target: '#r-nav'}">
          <i class="am-header-icon am-icon-bars"></i> 菜单
        </a>
      </div>
    </nav>

    <!-- 侧边栏内容 -->
    <div id="r-nav" class="am-offcanvas">
      <div class="am-offcanvas-bar am-offcanvas-bar-flip">
        <nav class="am-offcanvas-content">
            <a href="/" rel="nofollow"><span class="logo"></span></a>
            <p><i class="am-icon-home"></i> <a href="/" rel="nofollow">网站首页</a></p>
            <p><i class="am-icon-desktop"></i> <a href="/anli.html" rel="nofollow">案例展示</a></p>
            <p><i class="am-icon-cogs"></i> <a href="/fuwu.html" rel="nofollow">服务内容</a></p>
            <p><i class="am-icon-credit-card"></i> <a href="/zixun.html" rel="nofollow">最新动态</a></p>

            <p><i class="am-icon-user"></i> <a href="/about.html" rel="nofollow">关于我们</a></p>
            <p><i class="am-icon-qq"></i> <a href="/contact.html" rel="nofollow">联系我们</a></p>
        </nav>
      </div>
    </div>
</header>
<div class="m-header-banner m-list-header" style="background: url(${maosta}/assets/images/about-bg.jpg) 50% 0 no-repeat fixed;">
    <section class="am-container">
        <hgroup data-am-scrollspy="{animation:'slide-bottom', delay: 107}">
            <h2>关于我们</h2>
            <p>所谓成功，就是在平凡中做出不平凡的坚持。</p>
        </hgroup>
    </section>
</div>
<nav class="m-cat-nav">
    <ul class="am-container">
		<li class="am-active" ><a href="/about/"><i class="icon-chevron-right"></i>关于我们</a></li>
    </ul>
</nav>
<div class="am-container">
    <section class="m-mn-box">
        <p><br/></p>       
		<p>
            深度挖掘潜力，洞察受众群体取向，制定一体化的策划从发现到创新。
        </p>
        <ul class="am-avg-sm-1 am-avg-md-3 am-avg-lg-3 am-thumbnails list-paddingleft-2">
            <li>
              <!-- <img src="views/IMJ2/images/we-1.jpg" class="am-img-responsive" alt="网站设计经验" />-->
            <h3>
            经验
			</h3>
			<p>
				拥有超过8年行业经验的资深团队及设计开发经验，服务上百家品牌企业。
			</p>
            </li>
            <li>
                 <!-- <img src="views/IMJ2/images/we-1.jpg" class="am-img-responsive" alt="网站设计经验" />-->
            <h3>
            专业
			</h3>
			<p>
				我们整合商业思考，不断追求完美和卓越，渴望成为潮流的引领者。
			</p>
            </li>
            <li>
                 <!-- <img src="views/IMJ2/images/we-1.jpg" class="am-img-responsive" alt="网站设计经验" />-->
            <h3>
            创新
			</h3>
			<p>
				我们摒弃墨守成规、腐朽不堪的设计理念和页面风格设计，希望能创造更多独特精彩的作品。
			</p>
            </li>
        </ul>
        <p>
           锦程快递(Alard.) 2018年，诞生于四川成都。自成立以来始终专注于服务质量的提升，持续加强基础建设，积极研发和引进具有高科技含量的信息技术与设备以提升作业自动化水平，在国内外建立了庞大的信息采集，市场开发，物流配送，快件收派等速运业务机构及服务网络。
        </p>
    </section>
</div>
<footer class="m-footer">

<div class="am-container">
	<section class="am-g m-footer-container">
		<section class="am-u-sm-12 am-u-md-12 am-u-lg-6">
			<h2>关于我们</h2>
			<p>锦程网络成立于2018年，专注高端网站建设、视觉设计、平面设计、广告拍摄、产品摄影、营销策划和品牌网络推广为一体的创新高端公司，拥有超过8年行业经验的资深团队及设计、开发、摄影、营销、开发经验，强悍创新的视觉执行力<a href="/about" rel="nofollow">更多</a></p>
		</section>
		<section class="am-u-sm-12 am-u-md-6 am-u-lg-3">
            	<h2>最新资讯</h2>
			<ul>
								<li><time class="am-fr">90次阅读</time><a href="/post/151">台山社保局</a></li>
								<li><time class="am-fr">67次阅读</time><a href="/post/150">江门市外海小学</a></li>
								<li><time class="am-fr">72次阅读</time><a href="/post/148">恩城三小</a></li>
							</ul>
		</section>
		<section class="am-u-sm-12 am-u-md-6 am-u-lg-3 subnav">
			<h2>其他</h2>
			<a href="" rel="nofollow">网站欣赏</a> <a href="/sitemap.html">网站地图</a> <a href="" rel="nofollow">合作流程</a> <a href="" rel="nofollow">帮助中心</a> <a href="/contact" rel="nofollow">联系我们</a>
		</section>
	</section>
	</div>

<div class="m-footer-bottom">
    <div class="am-container">
    <div class="am-g">
        <span class="m-u-sm-12 am-u-md-9 am-u-lg-10">Copyright @ 2018 JCExpress.com<a href="http://www.miitbeian.gov.cn/" rel="external nofollow">川ICP备xxxxxx号-1</a> <a href="http://www.imj2.com/">江门网站设计</a>
</span>
        <span class="m-u-sm-12 am-u-md-3 am-u-lg-2 ico am-text-right am-hide-sm-only a">
            <a href="" data-am-popover="{content: '88888888', trigger: 'hover focus'}" rel="nofollow"><i class="am-icon-qq"></i></a>
            <a href="" data-am-popover="{content: '138-0000-0000', trigger: 'hover focus'}" rel="nofollow"><i class="am-icon-phone-square"></i></a>
            <a href="" data-am-popover="{content: '138-0000-0000', trigger: 'hover focus'}" rel="nofollow"><i class="am-icon-weixin"></i></a>
            <a href="" data-am-popover="{content: '11111@qq.com', trigger: 'hover focus'}" rel="nofollow"><i class="am-icon-envelope"></i></a>
        </span>
    </div>
    </div>
</div>
</footer>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${maosta}/assets/js/polyfill/rem.min.js"></script>
<script src="${maosta}/assets/js/polyfill/respond.min.js"></script>
<script src="${maosta}/assets/js/amazeui.legacy.js"></script>
<![endif]-->
 <script src="${maosta}/assets/js/echo.min.js"></script>
 <script>
  echo.init({
    offset: 100,
    throttle: 250,
    unload: false,
    callback: function (element, op) {
      console.log(element, 'has been', op + 'ed')
    }
  });
  // 图片赖加载
  </script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${maosta}/assets/js/jquery.min.js"></script>
<script src="${maosta}/assets/js/amazeui.min.js"></script>
<script src="${maosta}/expWebSite/js/jquery.cookie.js"></script>
<script src="${maosta}/expWebSite/js/customerToken.js"></script>
<!--<![endif]-->
<script src='${maosta}/assets/js/jquery.qrcode.min.js'></script>
<script type="text/javascript">
$(function(){
	var str = "http://www.imj2.com/about/";
		$("#code").qrcode({
			render: "table",
			width: 100,
			height:100,
			text: str
		});
})
// 二维码生成
//返回顶部
function imj2(){
	this.init();
}
imj2.prototype = {
	constructor: imj2,
	init: function(){
		this._initBackTop();
	},
	_initBackTop: function(){
		var $backTop = this.$backTop = $('<div class="m-top-cbbfixed">'+
						'<a class="m-top-weixin m-top-cbbtn"">'+
							'<span class="m-top-weixin-icon"></span><div></div>'+
						'</a>'+
						'<a class="m-top-go m-top-cbbtn">'+
							'<span class="m-top-goicon"></span>'+
						'</a>'+
					'</div>');
		$('body').append($backTop);

		$backTop.click(function(){
			$("html, body").animate({
				scrollTop: 0
			}, 120);
		});

		var timmer = null;
		$(window).bind("scroll",function() {
            var d = $(document).scrollTop(),
            e = $(window).height();
            0 < d ? $backTop.css("bottom", "10px") : $backTop.css("bottom", "-90px");
			clearTimeout(timmer);
			timmer = setTimeout(function() {
                clearTimeout(timmer)
            },100);
	   });
	}

}
var imj2 = new imj2();
//end返回顶部
</script>


</body>
</html>