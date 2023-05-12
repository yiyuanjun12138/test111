<%--
  Created by IntelliJ IDEA.
  User: 86139
  Date: 2023/4/11
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销售统计</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>

</head>
<body>
<%

    QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
    String sql="select name,SUM(amount)from goods a,orderitem b where a.id=b.goods_id group by name order by SUM(amount) desc";
    List<Map<String,Object>> list= r.query(sql, new MapListHandler());

    String sql2="select type.name,SUM(amount)from type,goods,orderitem where goods.id=orderitem.goods_id and goods.type_id=type.id group by type.name order by SUM(amount) desc";
    List<Map<String,Object>> list2= r.query(sql2, new MapListHandler());

    request.setAttribute("list",list);
    request.setAttribute("list2",list2);


%>


<div style="padding: 20px">
    <div style="padding: 0px">


        <table class="table table-bordered table-hover">
            <h3 style="color: #000000;font-weight: bold">类别销售报表</h3>

            <c:forEach items="${requestScope.list2}" var="l2">
                <tr>
                    <td><p>${l2.get("name")}</p></td>
                    <td><p>${l2.get("SUM(amount)")}</p></td>
                    <td><div style="width: 800px"><div style="background-color: #a94442;width:${(l2.get("SUM(amount)")*10)}px;height: 30px"></div></div></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <div style="padding: 0px">
        <h3 style="color: #000000;font-weight: bold">商品销售报表</h3>
        <table class="table table-bordered table-hover">
            <c:forEach items="${requestScope.list}" var="l1">
                <tr>
                    <td><p>${l1.get("name")}</p></td>
                    <td><p>${l1.get("SUM(amount)")}</p></td>
                    <td><div style="width: 1000px"><div style="background-color: #92B8B1;width:${(l1.get("SUM(amount)")*10)}px;height: 30px"></div></div></td>

                </tr>
            </c:forEach>

        </table>
    </div>

</div>


</body>
</html>
