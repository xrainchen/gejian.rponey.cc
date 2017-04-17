<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/4/17 23:52:28.
		本页面代码由DTcms模板引擎生成于 2017/4/17 23:52:28. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head lang=\"en\">\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\" />\r\n    <title>首页</title>\r\n    ");

	templateBuilder.Append("<link rel=\"stylesheet\" href=\"/pudu/css/pudu.css\" />\r\n");


	templateBuilder.Append("\r\n</head>\r\n<body>\r\n    ");

	templateBuilder.Append("<div class=\"headerBox\">\r\n    <div id=\"header\">\r\n        <h1 class=\"pd-logo\"><img src=\"/pudu/images/pd-logo.png\"></h1>\r\n        <ul class=\"header-nav\">\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\"><span><em>首页</em></span></a></li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\"><span><em>案例</em></span></a>\r\n                <ul class=\"sub-nav\">\r\n                    <li><a href=\"javascript:;\"><em>淘宝</em></a></li>\r\n                    <li><a href=\"javascript:;\"><em>阿里</em></a></li>\r\n                    <li><a href=\"javascript:;\"><em>摄影</em></a></li>\r\n                    <li><a href=\"javascript:;\"><em>影视</em></a></li>\r\n                </ul>\r\n            </li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("service"));

	templateBuilder.Append("\"><span><em>服务</em></span></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\"><span><em>我们</em></span></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\"><span><em>资讯</em></span></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("share"));

	templateBuilder.Append("\"><span><em>分享</em></span></a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("contact"));

	templateBuilder.Append("\"><span><em>联系</em></span></a></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n<div class=\"headerPlaceHoder\"></div>");


	templateBuilder.Append("\r\n    <div class=\"index-slider\">\r\n        <div class=\"hd\">\r\n            <ul class=\"index-slider-nav\">\r\n                <li></li>\r\n                <li></li>\r\n                <li></li>\r\n                <li></li>\r\n                <li></li>\r\n            </ul>\r\n        </div>\r\n\r\n        <div class=\"bd\">\r\n            <ul>\r\n                ");
	DataTable focusList = get_article_list("index", 0, 5, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusList.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("index_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\r\n                        \">\r\n                        <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                    </a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n    </div>\r\n    <div class=\"index-box\">\r\n        <div class=\"index-desc\"></div>\r\n        <!--High-end/淘宝视觉作品-->\r\n        <div class=\"index-title\">\r\n            <h3>High-end/淘宝视觉作品</h3>\r\n        </div>\r\n        <img src=\"/images/dashed.png\" alt=\"\">\r\n        <ul class=\"index-common-list has-shodow\">\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                        <span>淘宝视觉作品</span>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n        </ul>\r\n        <!--photography/商业摄影作品-->\r\n        <div class=\"index-title\">\r\n            <h3>photography/商业摄影作品</h3>\r\n        </div>\r\n        <ul class=\"index-common-list has-shodow\">\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n        </ul>\r\n        <!--VIDEO/影视作品-->\r\n        <div class=\"index-title\">\r\n            <h3>VIDEO/影视作品</h3>\r\n        </div>\r\n        <ul class=\"index-common-list has-shodow\">\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo6.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n            <li class=\"type-w504h196\">\r\n                <a href=\"javascript:;\">\r\n                    <img src=\"/Dimages/demo5.png\">\r\n                    <div class=\"product-shodow\">\r\n                        <h3>传统手工角梳：角缘造物</h3>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n        </ul>\r\n        <!--NEWS/资讯-->\r\n        <div class=\"index-title\">\r\n            <h3>NEWS/资讯</h3>\r\n            <a href=\"javascript:;\" class=\"show-more\">+</a>\r\n        </div>\r\n        <ul class=\"index-news\">\r\n            <li>\r\n                <div class=\"news-img lazyimg\" style=\"background-image: url(/Dimages/demo3.png)\"></div>\r\n                <div class=\"news-desc\">\r\n                    <h4 class=\"news-title\"><a href=\"javascript:;\">普度新增微电影微视频业务</a></h4>\r\n                    <div class=\"news-time-box\">\r\n                        <p class=\"news-time\">2016-09-20</p>\r\n                    </div>\r\n                    <p>源自集团造星工厂的影视制作团队正式纳入普度公司，资深团队专业精干作品出色，现已在普度正式开展业务。尽心创意，精心摄像，走心包装。全力为客户提升企业形象。欢迎致电洽谈合作。</p>\r\n                </div>\r\n            </li>\r\n            <li>\r\n                <div class=\"news-img lazyimg\" style=\"background-image: url(/Dimages/demo3.png)\"></div>\r\n                <div class=\"news-desc\">\r\n                    <h4 class=\"news-title\"><a href=\"javascript:;\">普度新增微电影微视频业务</a></h4>\r\n                    <div class=\"news-time-box\">\r\n                        <p class=\"news-time\">2016-09-20</p>\r\n                    </div>\r\n                    <p>源自集团造星工厂的影视制作团队正式纳入普度公司，资深团队专业精干作品出色，现已在普度正式开展业务。尽心创意，精心摄像，走心包装。全力为客户提升企业形象。欢迎致电洽谈合作。</p>\r\n                </div>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n    ");

	templateBuilder.Append("<!--尾部-->\r\n<div id=\"footer\">\r\n    <div class=\"footer-main\">\r\n        <div class=\"footer-box\">\r\n            <h2 class=\"footer-about\">关于普度/ABOUT US</h2>\r\n            <h3 class=\"footer-company\">普度（福建）电子商务有限公司</h3>\r\n            <p class=\"footer-desc\">本公司正式成立于2013年，注册资金500万，是以互联网科技为核心的企业电子商务综合服务提供商，主营电子商务网店装修设计、商业摄影、品牌策划、微电影和微视频制作、精英频道服务等，目前是福建最具实力的综合性电子商务服务机构。</p>\r\n            <div class=\"footer-contact\">\r\n                <h2>福建全省联系方式/CONTACT</h2>\r\n                <ul class=\"contact-list\">\r\n                    <li>\r\n                        <h2>普度-福州</h2>\r\n                        <p>电话：<span class=\"tel\">0591-86252226</span></p>\r\n                        <p class=\"address\">地址：福州市鼓楼区西洪路528号云座3号楼6层</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2>普度-泉州</h2>\r\n                        <p>电话：<span class=\"tel\">0595-36013888</span></p>\r\n                        <p><span class=\"tel\" style=\"padding-left: 37px;\">0595-36013188</span></p>\r\n                        <p class=\"address\">地址：福建省泉州市丰泽区大洋百货十楼</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2>普度-厦门</h2>\r\n                        <p>电话：<span class=\"tel\">0592-3660503</span></p>\r\n                        <p class=\"address\">地址：厦门市思明区厦禾路1128号富兴大厦B栋15楼</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2>普度-宁德</h2>\r\n                        <p>电话：<span class=\"tel\">0593-2082098</span></p>\r\n                        <p class=\"address\">地址：宁德市蕉城区蕉城南路94号泓源国际12层众事达（海关对面）</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2>普度-莆田</h2>\r\n                        <p><span class=\"tel\">电话：0591-86252226</span></p>\r\n                        <p class=\"address\">地址：莆田市荔城区·新汽车站·莆运股份大楼6层</p>\r\n                    </li>\r\n                    <li class=\"no-data\">虚位以待</li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"footer-bottom\">\r\n        普度（福建）电子商务有限公司&nbsp;&nbsp;ALL&nbsp;&nbsp;RIGHTS&nbsp;&nbsp;RESERVED\r\n    </div>\r\n</div>");



	templateBuilder.Append("<script type=\"text/javascript\" src=\"/pudu/lib/js/jquery-1.8.3.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"/pudu/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"/pudu/lib/js/jquery.SuperSlide.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"/pudu/js/default.js\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("   \r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
