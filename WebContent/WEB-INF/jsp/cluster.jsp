<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.lang.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%   
  //HttpSession session = request.getSession(true);   
  System.out.println(session.getId());   
  out.println("<br> SESSION ID:" + session.getId()+"<br>");     
  // 如果有新的请求，则添加session属性   
  String name = request.getParameter("name");   
  if (name != null && name.length() > 0) {   
     String value = request.getParameter("value");   
     session.setAttribute(name, value);   
  }     
    out.print("<b>Session List:</b>");     
    Enumeration<String> names = session.getAttributeNames();   
    while (names.hasMoreElements()) {   
        String sname = names.nextElement();    
        String value = session.getAttribute(sname).toString();   
        out.println( sname + " = " + value+"<br>");   
        System.out.println( sname + " = " + value);   
   }   
%>  
</body>
</html>