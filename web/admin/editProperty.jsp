<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*"%>
   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<title>编辑属性</title>

<script>
	$(function()
	{
		$("#editForm").submit(function()
			{
				if (!checkEmpty("propertyName","属性名称"))
					return false;
				return true;
			});
	});
</script>
<div class="workingArea">
 	<ol class="breadcrumb">
 		<li><a href="admin_category_list">所有分类</a></li>
 		<li><a href="admin_property_list?cid=${property.category.id}">${property.category.name}</a></li>
 		<li class="active">编辑属性</li>
 	</ol>
 	
 	<div class="panel panel-warning editDiv">
 		<div class="panel-heading">编辑属性</div>
 		<div class="panel-body">
	 		<form action="admin_property_update" method="post" id="editForm">
	 			<table>
	 				<tr>
	 					<td>属性名称</td>
	 					<td><input type="text" id="propertyName" name="name" value="${property.name}"class="form-control"></td>
	 				</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="cid" value="${property.category.id}">
							<input type="hidden" name="id" value="${property.id}">
							<button type="submit" class="btn btn-success">上传</button>
						</td>
					</tr>
	 			</table> 		
	 		</form>
 		</div>
    </div>
</div>