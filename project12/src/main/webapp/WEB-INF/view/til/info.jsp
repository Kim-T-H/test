<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h6>TIL 상세화면</h6>
	<table>
		<tr><td>${til.name}</td><td>${til.regdate}</td></tr>
		<tr><td><input type="button" value="포토폴리오 보기"></td>
			<td><input type="button" value="스크랩 " ></td>
			<td><input type="button" value="게시물 수정"  onClick="location.href='update.dev?no=${til.no}&bno=${til.bno}'"></td>
			<td><input type="button" value="게시물 삭제" onClick="location.href='delete.dev?no=${til.no}&bno=${til.bno}'"></td></tr>
		<tr><td> 해쉬태그 창</td></tr>
		
		
	<tr><td class="leftcol">
 	<table class="lefttoptable">
 	<tr><td class="leftcol lefttoptable">${til.content}asdf</td></tr> 
 	</table></td></tr>
 		
 		
	</table>
	
	<div id="replylist"></div>

<table border="1" style="width: 100%; margin:auto;">v
			
			<c:if test="${empty sessionScope.login}">
			<br>
				<tr bgcolor="#F5F5F5">
						<!-- 아이디 -->
						<td width="100">
							${sessionScope.login} 아이디
						</td>
						<!-- 본문 작성 -->
						<td width="400">
							<textarea name="reply_content" rows="4" cols="60" id="reply_content"></textarea>
						</td>
						<td width="100">
							<div style="text-align: center;">
								<button type="button" id="reply_insert" class="btn btn-info btn btn-default btn-lg" >댓글 게시</button>
							</div>
							
						</td>

				</tr>
			</c:if>
		</table>
		


</body>
</html>