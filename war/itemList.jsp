<%@ page 
import="com.google.appengine.api.users.*" 
pageEncoding="utf-8"
contentType="text/html;charset=utf-8"
%>
<%
UserService userService = UserServiceFactory.getUserService();
User user = userService.getCurrentUser();
String msg;
%>

<!DOCTYPE html>                        
<html>
    <head>                                            
        <title>JSP Page</title>
        <script type="text/javascript" src="lib.js"></script>
        <script type="text/javascript">
        <!--
        function callback(request){
            var json = eval(request.responseText);
            var res = '';
            
            if (json.length == 1){
                res += '<tr><td>' + json[0].shohin +'</td></tr>';
                res += '<tr><td>' + json[0].price +'</td></tr>';
            } else {
      
                for (var i = 0;i < json.length;i++){
                    res += '<td>' + json[i].shohin + '</td>' +
                    '<td>' + json[i].price +  '</td>' +
                    '<td><input type="checkbox" name="sugar" value=i/></td></tr>';
                }
            }
           
            
            var obj = document.getElementById("datatable");
            obj.innerHTML = res;
      
        }
        //-->
        
      
         </script>
    </head>
    
    <body onload="getData(null);">
           <h1>Suger Pop - 商品一覧</h1>
        <div align="center">
        
       
<% 

  msg = "ようこそ! あなたは <b>" + user.getNickname() + "</b> という名前でログインしています。お好きなケーキを選んでください。";
  out.println( msg );

%>
<table id="datatable" border="1">
      <tr>
        <td>wait...</td>
      </tr>
    </table>
    <br>




    <form action="/logout" method="post">
        <input type="submit" name="logout" value="ログアウト" />
    </form>
    
    <form action="/add" method="post">
        <input type="submit" name="add" value="管理者ページへ" />
    </form>
     
     <a href ="daytime.html">発送日時指定へ</a>
    </body>
</html>
