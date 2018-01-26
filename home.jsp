<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Home page JSP
  -
  - Attributes:
  -    communities - Community[] all communities in DSpace
  -    recent.submissions - RecetSubmissions
  --%>

<%@page import="org.dspace.core.factory.CoreServiceFactory"%>
<%@page import="org.dspace.core.service.NewsService"%>
<%@page import="org.dspace.content.service.CommunityService"%>
<%@page import="org.dspace.content.factory.ContentServiceFactory"%>
<%@page import="org.dspace.content.service.ItemService"%>
<%@page import="org.dspace.core.Utils"%>
<%@page import="org.dspace.content.Bitstream"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.dspace.core.I18nUtil" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.app.webui.components.RecentSubmissions" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.browse.ItemCounter" %>
<%@ page import="org.dspace.content.Item" %>
<%@ page import="org.dspace.services.ConfigurationService" %>
<%@ page import="org.dspace.services.factory.DSpaceServicesFactory" %>

<%
    List<Community> communities = (List<Community>) request.getAttribute("communities");

    Locale sessionLocale = UIUtil.getSessionLocale(request);
    Config.set(request.getSession(), Config.FMT_LOCALE, sessionLocale);
    NewsService newsService = CoreServiceFactory.getInstance().getNewsService();
    String topNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-top.html"));
    String sideNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-side.html"));

    ConfigurationService configurationService = DSpaceServicesFactory.getInstance().getConfigurationService();
    
    boolean feedEnabled = configurationService.getBooleanProperty("webui.feed.enable");
    String feedData = "NONE";
    if (feedEnabled)
    {
        // FeedData is expected to be a comma separated list
        String[] formats = configurationService.getArrayProperty("webui.feed.formats");
        String allFormats = StringUtils.join(formats, ",");
        feedData = "ALL:" + allFormats;
    }
    
    ItemCounter ic = new ItemCounter(UIUtil.obtainContext(request));

    RecentSubmissions submissions = (RecentSubmissions) request.getAttribute("recent.submissions");
    ItemService itemService = ContentServiceFactory.getInstance().getItemService();
    CommunityService communityService = ContentServiceFactory.getInstance().getCommunityService();
%>

<dspace:layout locbar="nolink" titlekey="jsp.home.title" feedData="<%= feedData %>">
<div class="row">
<div class="col-md-9"> 
<%
if (communities != null && communities.size() != 0)
{
%>
	<h3 style="border-bottom: 1px solid #d3d3d3; padding-bottom:15px; margin-bottom:15px">Communities <small><a href="/community-list">browse communities/collections</a></small></h3>
	<div class= "row"> 
		<%
		boolean showLogos = configurationService.getBooleanProperty("jspui.home-page.logos", true);
		for (Community com : communities)
		{
		%>
		<div class="col-md-4">
			<%  
			Bitstream logo = com.getLogo();
			if (showLogos && logo != null) { %>
			<img alt="Logo" class="img-responsive" src="<%= request.getContextPath() %>/retrieve/<%= logo.getID() %>" style="padding: 7px; border:1px solid #d3d3d3; margin: 8px 8px 20px 0px; width: 200px; height: 200px;" /> 
			<% } else { %>
			
			<% }  %>		
			<h4>
				<a href="<%= request.getContextPath() %>/handle/<%= com.getHandle() %>"><%= com.getName() %></a>
				<%
				if (configurationService.getBooleanProperty("webui.strengths.show"))
				{
				%>
				<span class="badge pull-right"><%= ic.getCount(com) %></span>
				<%
				}
				%>
			</h4>
			<p><%= communityService.getMetadata(com, "short_description") %></p>
		</div>                         
		<%
		}
		%>
	</div>
<%
}
%>
<%@ include file="discovery/static-tagcloud-facet.jsp" %>
</div>
<div class="col-md-3 rss" >
	<h3 style="border-bottom: 1px solid #d3d3d3; padding-bottom:15px; margin-bottom:15px">Latest news <small>from <a href="http://www.sanbi.org">sanbi.org </a></small></h3>
	<script src="\static\js\jquery\jquery.rss.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.0/moment.min.js"></script>
	<script type="text/javascript">
	jQuery(function($) {
	 $("#rss-feeds").rss(
	   "http://www.sanbi.org/news/science/feed",{
	   layoutTemplate: "<div class='feed-container'>{entries}</div>",
	   tokens: {
		 "rBody": function(entry, tokens) { 
		   mytext = tokens.body;
		   mytext = tokens.body.replace('<img src="/sites', '<img src="http://www.sanbi.org/sites'); 
		   mytext = mytext.split('<h2>Comments')[0];
		   return mytext + '</div></div>';
		 }
	   },
	   // inner template for each entry
	   entryTemplate: '<div class="feed-entry" style="border-bottom:1px solid #d3d3d3;"><h3><a href="{url}">{title}</a><br> <small>{date}</small></h3><p>{rBody}</p></div>'
	 })
	})
	</script>
	<div id="rss-feeds"></div>
	<strong><p class="rss-footer" style="padding-top:15px">Read more news on <a href="http://www.sanbi.org/news">sanbi.org</a></p></strong>
</div>
</div>
</dspace:layout>
