<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model.User" %>
<%@ page import="org.apache.commons.dbutils.QueryRunner" %>
<%@ page import="utils.DataSourceUtils" %>
<%@ page import="org.apache.commons.dbutils.handlers.BeanListHandler" %>
<%@ page import="org.apache.commons.dbutils.handlers.MapListHandler" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86139
  Date: 2023/4/9
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录日志</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<%
    QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
    String sql = "select * from log order by time desc";
    List<Map<String,Object>> list= r.query(sql, new MapListHandler());
    User u = (User) request.getSession().getAttribute("user");
    String id=String.valueOf( u.getId());
    List list1=new ArrayList();
    for(int i=0;i<list.size();i++) {

        Object o=list.get(i);
        Map entity = (Map)o;
        String name = entity.get("id").toString();

        if(name.equals(id))
        {
           /* out.print(list.get(i).get("time"));
            out.print("</br>");*/
            Object t = list.get(i).get("time");
            list1.add(t);

        }

    }
    request.setAttribute("list",list1);

%>
<div style="padding: 20px">
    <table class="table table-bordered table-hover">

        <tr>
            <th>您的历史登陆时间：</th>
        </tr>


        <c:forEach items="${requestScope.list}" var="u">
            <tr>
                <td><p>${u}</p></td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
