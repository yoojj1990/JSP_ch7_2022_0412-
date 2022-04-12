<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		
		if(memberId.equals("tiger")&& memberPw.equals("12345"))
		{
			Cookie cook_id = new Cookie("userId","tiger");
			Cookie cook_pw = new Cookie("userPw","12345"); // 쿠키 객체 생성
			
			response.addCookie(cook_id);
			response.addCookie(cook_pw);
			
			out.println(memberId + " 님 환영합니다.");
		}
		else
		{
			response.sendRedirect("login_fail.jsp"); // 로그인 실패시 이동할 페이지
		}
		
	%>
	<br>
	<a href="cookieInfo.jsp">쿠키정보확인</a>
</body>
</html>