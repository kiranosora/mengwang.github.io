<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
<meta charset="UTF-8">
    <title>登录</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="ch-cn">
  </head>
  <body>
Ubuntu Server 
 <form method="post" name="frmLogin" action="LoginServlet">
   <h1 align="center">用户登录</h1><br>
   <div align="center">用户名：
      <input type="text" name="txtUserName" value="Your name"
       size="20" maxlength="20"
       onfocus="if(this.value=='Your name')this.value='';"><br>密码：
      <input type="password" name="txtPassword" value="Your password"
       size="20" maxlength="20"
       onfocus="if(this.value=='Your password')this.value='';"><br>
      <input type="submit" name="Submit"　value="提交" onClick="validateLogin();" >
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Reset" value="重置"><br>
   </div>
 </form>
 
    <script language="javaScript">
     function validateLogin()
     {
      var sUserName = document.frmLogin.txtUserName.value;
      var sPassword = document.frmLogin.txtPassword.value;
      if( sUserName=="" )
      {
       alert("请输入用户名！");
       return false;
      }
      if( sPassword=="" )
      {
       alert("请输入密码！");
       return false;
      }
     }
    </script>


    <%
     String path = request.getContextPath();
     String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
     session.setAttribute("basePath",basePath);	   
    %>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <a href="web/resetPass.jsp">点此重置密码（需要邮箱）</a>
    <br>
    <br>
    <a href="web/signUp.jsp">注册新用户  </a>
    <br>
    <br>
    <br>
    <br>
    <br>
    <a href="download/firefox.exe">download firefox from LAN</a>
    <a href="download/vlc.exe">download vlc from LAN</a>

  </body>
</html>
