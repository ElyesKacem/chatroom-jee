<%@page import="java.util.ArrayList"%>
<%@page import="Isamm.GestionMessage"%>
<%@page import="Isamm.Message"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body style="background-color: rgb(172, 157, 192);">
    <div id="chat"   style="background-color:rgb(210, 180, 224);width: 1000px;height: 500px;border:black 1px solid;overflow: scroll;">
       
       <% 
       
       ArrayList<Message> list = GestionMessage.getList();
       
      for(Message m : list)
      { 
      
		      
		    	  
    	  %><p>  <i style="color:rgb(168, 0, 0);font-weight: bold;"> <% out.print(m.getUsername());%> </i> : <% out.print(" "+m.getValue()); %>  </p>  <%
		    	  
		    	  
		      
      
      
      }
      
      
      %>
        
        

    </div>
    
   
    <br>
    <div style="background-color:rgb(72, 178, 197);width: 1000px;height:38px; border:black 1px solid">
      
      <form action="traitementMsg2" method="get">
      
      <textarea name="msg" style="width: 800px;margin: 8px;"></textarea>
      
      <input style="display:none" type="text" name="username" value="<%=request.getParameter("username") %>" >
      <input style="display:none" type="text" name="mdp" value="<%=request.getParameter("mdp") %>" >
      <input style="display:none" type="text" name="derniermsg" value="<%=request.getParameter("msg") %>" >
      

      <input type="submit" value="click" style="height:30px;margin: 5px;background-color: white;border:none;padding: 8px;">  
      <a href="http://localhost:8080/chatroom/LoginServlet?username=<%=request.getParameter("username")%>&mdp=<%=request.getParameter("mdp")%>"   style="text-decoration: none;background-color: #f00101f1;padding: 8px;color: white;">Reload</a>
      
      
      </form>
      
      

    </div>
    


</body>
</html>