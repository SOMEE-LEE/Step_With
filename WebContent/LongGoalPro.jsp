<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="usergoal.UserGoalDAO"%>
<%@ page import="usergoal.UserGoalDTO"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

//form으로 전달받은 항목들을 가져온다
String goalName = request.getParameter("goalName3");
String goalType = "장기 목표";
String startDate = request.getParameter("startDate3");
String endDate = request.getParameter("endDate3");
System.out.println(endDate);

String repeatCycle = request.getParameter("repeat3");
String repeatType3 = request.getParameter("repeatType3");
String repeatType = "";

//폼값을 DTO 객체에 저장
UserGoalDTO gdto = new UserGoalDTO();
gdto.setUsermakeId(session.getAttribute("usermakeId").toString());
gdto.setGoalType(goalType);
gdto.setGoalName(goalName);
gdto.setStartDate(startDate);
gdto.setEndDate(endDate);
gdto.setRepeatCycle(repeatCycle);


System.out.println(goalType);
System.out.println(goalName);
System.out.println(startDate);
System.out.println(repeatType3);


if (repeatType3.equals("횟수")){
	repeatType = "횟수-"+request.getParameter("count3")+"회";
	System.out.println(repeatType);
	gdto.setRepeatType(repeatType);
} else if (repeatType3.equals("요일")){
	String names[] = request.getParameterValues("name3");
	 for(String name1:names){
		// for(변수:배열) 배열에 들어있는 값들을 변수에 대입 반복문이 돌 때마다 값이 변함.
		System.out.println(name1+ " ");
		repeatType=name1+"";
	 }
	 System.out.println(names);
	System.out.println(repeatType);
	gdto.setRepeatType(repeatType);
} else if (repeatType3.equals("특정 주 요일")) {
	repeatType = "특정 주 요일-"+request.getParameter("week3")+" "+request.getParameter("day3");
	gdto.setRepeatType(repeatType);
} else if (repeatType3.equals("특정 날짜")){
	repeatType = "특정 날짜-"+request.getParameter("month3")+"월 "+request.getParameter("date3")+"일";
	gdto.setRepeatType(repeatType);
} else if (repeatType3.equals("특정 기간")){
	repeatType = "특정 기간-"+request.getParameter("left3")+"일 부터 "+request.getParameter("right3")+"일 까지";
	gdto.setRepeatType(repeatType);
	
} 




gdto.setCreatedAt(new Timestamp(System.currentTimeMillis()));


//DAO 객체를 통해 DB에 DTO 저장
UserGoalDAO gdao = new UserGoalDAO();
int iResult = gdao.insertWrite(gdto);


//7. 성공 or 실패? 
if (iResult == 1) {
response.sendRedirect("UserGoal.jsp");
} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('목표 등록 실패')");
	script.println("</script>");
}
%>
</body>
</html>