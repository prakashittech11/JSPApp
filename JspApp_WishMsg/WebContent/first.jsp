
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%! public String generateWishMsg(String uname){
   java.util.Calendar calendar=null;
   int hour=0;
   //get System Date and Time
   calendar=Calendar.getInstance();
   //getCurrent hour of a day
   hour=calendar.get(java.util.Calendar.HOUR_OF_DAY);
   //get Wish msg
   if(hour<=12)
	   return "Good Morning"+uname;
   else if(hour<=16)
	   return "Good AfterNoon "+uname;
   else if(hour<=20)
	   return "Good Evening "+uname;
   else
	   return "Good Night "+uname;
    }//method
    %>
    
    <h1 style="color: red;background-color: yellow;text-align: center;">Message Generator(JSP)</h1>
    <br>
    Date And Time::<%=new java.util.Date()%><br>
    <% String user="Prakash"; %><br>
    Wish Message::<%=generateWishMsg(user) %>