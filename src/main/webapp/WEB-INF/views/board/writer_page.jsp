<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
<style>
	h2 { text-align: center; padding-top: 40px; }
	.form { clear:both; width: 100%; }
	.table { display:table; margin-left: 510px; margin-top:68px;  } 
	.table_body { display:table-row-group; }
	.reg_row { display:table-row; }  
	.reg_lb { display:table-cell; padding: 10px; width: 160px; }
	.reg_input { display:table-cell; padding: 10px; } 
	.reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
	padding-left: 14px; font-size:18px; }
	.reg_btn_group { padding: 40px; padding-left: 250px; padding-right: 162px; }
	.btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn_left { float:left; }
	.btn_right { float:right; }
</style>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@include file="../include/menu.jsp" %>
<div class="wrap">
	<div class="content">
	<h2>글 쓰기</h2>
		<form name="bdto" action="${path}/board/insert.do" method="post">
			<table class="table">
				<tbody class="table_body">
					<tr class="reg_row">
						<th class="reg_lb"><label for="title">제목</label></th>
						<td class="reg_input"><input type="text" name="title" size="80" class="reg-control" placeholder="제목입력" /></td>
					</tr>
					<tr class="reg_row">
						<th class="reg_lb"><label for="content">내용</label></th>
						<td class="reg_input"><textarea name="content" id="content" class="reg-control" cols="100" rows="12" placeholder="내용 입력"></textarea></td>
					</tr>
					<tr class="reg_row">
						<th class="reg_lb"><label for="writer">작성자</label></th>
						<td class="reg_input"><input type="text" name="writer" id="writer" class="reg-control" /></td>
					</tr>
					<tr class="reg_row">
						<td colspan="2" class="reg_btn_group">
							<input type="submit" value="글 등록" class="btn btn_left" />
							<input type="reset" value="취소" class="btn btn_right"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>    
</body>
</html>