<%@page import="pl.jug.trojmiasto.lucene.model.Article"%>
<%@page import="pl.jug.trojmiasto.lucene.facade.SearchFacade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="searcher" class="pl.jug.trojmiasto.lucene.facade.SearchFacade"
	scope="request" />
<%
	String query = request.getParameter("query");

	String buffer = "<div>";
	for (Article article : searcher.results(query)) {
		buffer = buffer + "<h4>" + article.getTitle() + "</h4>";
		buffer = buffer + "<p>" + article.getContent() + "</p>";
	}
	buffer = buffer + "</div>";
	response.getWriter().println(buffer);
%>