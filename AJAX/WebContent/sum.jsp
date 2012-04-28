<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getParameter("v1")!=null && request.getParameter("v2")!=null) {
	try{
out.print(Integer.parseInt(request.getParameter("v1"))+Integer.parseInt(request.getParameter("v2")));
	} catch(Exception e) {
		out.print("ERROR");
	}
} else {
	out.print("NO REQUIRED PARAMS");
}
%>