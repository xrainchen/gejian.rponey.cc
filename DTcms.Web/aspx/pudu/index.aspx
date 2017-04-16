<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Text" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="DTcms.Common" %>

<script runat="server">
    override protected void OnInit(EventArgs e)
    {
        /* 
            This page was created by DTcms Template Engine at 2015/5/15 1:37:44.
            本页面代码由DTcms模板引擎生成于 2015/5/15 1:37:44. 
        */
        base.OnInit(e);
        StringBuilder templateBuilder = new StringBuilder(220000);
        Utils.ObjectToStr(site.seo_title);//
        Utils.ObjectToStr(site.seo_keyword);
        Utils.ObjectToStr(site.seo_description);
        Utils.ObjectToStr(config.webpath);
        Utils.ObjectToStr(site.name);

        var category=get_category_child_list("Default",0);//频道


        templateBuilder.AppendLine("您好");
        Response.Write(templateBuilder.ToString());
    }
</script>