<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
    <title>测试数</title>
    <meta name="decorator" content="form"/> 
    
</head>

<body class="white-bg"  formid="testTreeForm">
    <form:form id="testTreeForm"  modelAttribute="data"  method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<table  class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
			  <tr>
		         <td class="width-15 active"><label class="pull-right">上级测试数:</label></td>
		         <td class="width-35">
		            <form:treeselect title="请选择上级测试数" path="parentId" dataUrl="${adminPath}/test/testtree/treeData" labelName="parentname" labelValue="${data.parent.name}" />	   
				  </td>
		          <td  class="width-15 active text-right">	
		              <label><font color="red">*</font>测试数名称:</label>
		         </td>
		         <td class="width-35" >
		             <form:input path="name" class="form-control " datatype="*" nullmsg="请输入测试数名称！" htmlEscape="false" />
		             <label class="Validform_checktip"></label>
		         </td>
		      </tr>
				<tr>
					<td  class="width-15 active text-right">	
		              <label>备注信息:</label>
		            </td>
					<td class="width-35">
						<form:input path="remarks" htmlEscape="false" class="form-control"      />
						<label class="Validform_checktip"></label>
					</td>
					<td class="width-15 active text-right"></td>
		   			<td class="width-35" ></td>
		  		</tr>
		      
		   </tbody>
		</table>   
	</form:form>
</body>
</html>