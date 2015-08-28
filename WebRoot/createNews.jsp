<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>新闻系统 - 创建新闻页面</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
内部样式表-->tr {
	height: 22px;
}

.td {
	text-align: center;
}
</style>
<script type="text/javascript">
	function check() {
		var title = document.getElementById("title").value;
		var newsTypeId = document.getElementById("newsTypeId").value;
		var content = document.getElementById("content").value;

		if (title == "") {
			alert("请填写标题！");
			// 返回false，阻止表单提交
			return false;
		}

		if (newsTypeId == "0") {
			alert("请选择新闻栏目！");
			return false;
		}

		if (content == "") {
			alert("请填写内容！");
			return false;
		}
	}
</script>
</head>

<body>
	<!--  新闻表单   -->
	<form id="createNewsform" name="createNewsform" method="post"
		action="">
		<table>
			<tr bgcolor="#E7E7E7">
				<td height="24" colspan="10">&nbsp;创建新闻&nbsp;</td>
			</tr>
			<tr>
				<td class="td">标题：</td>
				<td><input type="text" name="title" id="title" size="60" /></td>
			</tr>
			<tr>
				<td class="td">栏目：</td>
				<td><select id="newsTypeId">
						<option value="0">请选择栏目</option>
						<option value="1">国际新闻</option>
						<option value="2">国内新闻</option>
						<option value="3">娱乐新闻</option>
						<option value="4">体育新闻</option>
						<option value="5">财经频道</option>
						<option value="6">汽车频道</option>
						<option value="7">电子频道</option>
				</select></td>
			</tr>
			<tr>
				<td class="td">来源：</td>
				<td><input type="text" name="source" id="source" /></td>
			</tr>
			<tr>
				<td class="td">作者：</td>
				<td><input type="text" name="author" id="author" /></td>
			</tr>
			<tr>
				<td class="td">创建时间：</td>
				<td><input type="text" name="createTime" id="createTime" /></td>
			</tr>
			<tr>
				<td class="td">关键字：</td>
				<td><input type="text" name="keywords" id="keywords" size="60" />
				</td>
			</tr>
			<tr>
				<td class="td">内容：</td>
				<td><textarea id="content" name="content"
						style="width:600px; height:230px;"></textarea></td>
			</tr>
			<tr>
				<td class="td">附件：</td>
				<td><input type="file" /></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="提交" class="button"
					onclick="return check()" /> <input type="reset" value="重置"
					class="button" /></td>
			</tr>
		</table>
	</form>
</body>
</html>