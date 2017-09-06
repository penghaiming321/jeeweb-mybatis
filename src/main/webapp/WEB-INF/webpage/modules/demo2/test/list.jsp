<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/webpage/common/taglibs.jspf"%>
<!DOCTYPE html>
<html>
<head>
  <title>测试列表</title>
  <meta name="decorator" content="list"/>
</head>
<body title="测试">
<grid:grid id="testGridId" url="${adminPath}/demo2/test/ajaxList">
	<grid:column label="sys.common.key" hidden="true"   name="id" width="100"/>
	<grid:column label="sys.common.opt"  name="opt" formatter="button" width="100"/>
	<grid:button groupname="opt" function="delete" />
    <grid:column label="更新者"  name="updateBy" />
    <grid:column label="更新时间"  name="updateDate" />
    <grid:column label="备注信息"  name="remarks" />
    <grid:column label="姓名"  name="name"  query="true"  queryModel="input"  condition="like" />
    <grid:column label="性别"  name="sex"  query="true"  queryModel="input"  condition="eq"  dict="sex"/>
	<grid:toolbar function="create"/>
	<grid:toolbar function="update"/>
	<grid:toolbar function="delete"/>
	
	<grid:toolbar function="search"/>
	<grid:toolbar function="reset"/>
</grid:grid>
</body>
</html>