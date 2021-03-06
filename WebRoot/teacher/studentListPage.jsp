<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentListPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
table { margin-left: auto; margin-right: auto;border-collapse: collapse;   font-family: Futura, Arial, sans-serif;  }     
th,td {  padding: .65em;  }  
th {  background: #555 nonerepeat scroll 0 0;   /* border: 1px solid #777; */    color: #000000;  }  
td {    border: 0px solid #777;   }  
tbody tr:nth-child(odd) {    background: #ccc;   } 
th:first-child {  border-radius: 9px 0 0 0;  }   
th:last-child {  border-radius: 0 9px 0 0;  }   
tr:last-child td:first-child { border-radius: 0 0 0 9px;  }   
tr:last-child td:last-child {   border-radius: 0 0 9px 0;   }

</style>
  </head>
  
  <body style="text-align:center">
    <div>
    
    	<div style="margin:0 auto;">
    	<form action="StudentListAction_queryStudent" method="post">
	    	<select name="type">
	    		<option value="all" selected="selected">全部</option>
	    		<option value="number">学号</option>
	    		<option value="name">姓名</option>
	    		<option value="syear">入学年限</option>
	    		<option value="major">专业</option>
	    		<option value="clas">班级</option>
	    		<option value="status">状态</option>
	    	</select>
	    	<input type="text" name="query"/>
    		<input type="submit" value="查询"/><font style="color:red;">(注:状态请输入：0-离线，1-在线)</font>
    	</form>
    	</div>
    	<table>
    	<s:if test="studentList.isEmpty() == true">目前没有任何学生!</s:if >
		
		<s:else>
			<table>
				<tr>
					<th class="tdListHeader">ID</th>
					<th class="tdListHeader">学生学号</th>
					<th class="tdListHeader">学生姓名</th>
					<th class="tdListHeader">入学年限</th>
					<th class="tdListHeader">学生专业</th>
					<th class="tdListHeader">学生班级</th>
					<th class="tdListHeader">学生注册时间</th>
					<th class="tdListHeader">当前状态</th>
				</tr>
				<s:iterator value="studentList">
					<s:set var="sId" value="id" />
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="number" /></td>
						<td><s:property value="name" /></td>
						<td><s:property value="syear" /></td>
						<td><s:property value="major" /></td>
						<td><s:property value="clas" /></td>
						<td><s:date name="regDate" format="MM/dd/yyyy" /></td>
						<td>
						<s:if test='status == 0'>离线</s:if>
							<s:else>在线</s:else>
						</td>
						
					</tr>
				</s:iterator>
				<tr>
				<td>(当前有${request.page.totalCount }条记录，共${request.page.totalPage }页，当前第${page.currentPage }页)</td>
				<td align="center">
					<s:if test="#request.page.hasPrePage">
						<a href="StudentAction_findStudents.action?currentPage=1">首页</a>
						<a href="StudentAction_findStudents.action?currentPage=${page.currentPage -1 }">上一页</a>
					</s:if>
					<s:else>
						首页
						上一页
					</s:else>
					
					<s:if test="#request.page.hasNextPage">
						<a href="StudentAction_findStudents.action?currentPage=${page.currentPage + 1 }">下一页</a>
						<a href="StudentAction_findStudents.action?currentPage=${page.totalPage }">尾页</a>			
					</s:if>
					<s:else>
						下一页
						尾页
					</s:else>
				</td>
			</tr>
			</table>
		</s:else>
    	</table>
    </div>
  </body>
</html>
