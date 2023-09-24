<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ include file="../../conn.jsp"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
    String orderDiv1Param = request.getParameter("orderDiv1");
    String orderNumber1Param = request.getParameter("orderNumber1");
    
    out.println("orderDiv1Param: " + orderDiv1Param);
    out.println("orderNumber1Param: " + orderNumber1Param);
%>
<%


    int orderDiv1 = Integer.parseInt(request.getParameter("orderDiv1"));
    int enteredOrderNumber = Integer.parseInt(request.getParameter("orderNumber1"));

    // 이 부분은 실제 데이터베이스 조회 등의 로직이 들어가야 합니다.
    boolean orderExists = false;
    try {
        String checkQuery = "SELECT COUNT(*) FROM `order` WHERE ono = ?";
        PreparedStatement checkStatement = conn.prepareStatement(checkQuery);
        checkStatement.setInt(1, enteredOrderNumber);
        ResultSet resultSet = checkStatement.executeQuery();
        if (resultSet.next()) {
            int count = resultSet.getInt(1);
            if (count > 0) {
                orderExists = true;
            }
        }
    } catch (Exception e) {
        out.println("오류: " + e.getMessage());
    }

    if (orderExists) {
        try {
            String updateQuery = "UPDATE `order` SET odiv = ? where ono = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(updateQuery);
            preparedStatement.setInt(1, 2); // 3으로 업데이트
            preparedStatement.setInt(2, enteredOrderNumber);
            preparedStatement.executeUpdate();
            /* out.println("데이터가 성공적으로 저장되었습니다."); */
            response.sendRedirect("completeOrder.jsp"); // 대시보드 페이지로 이동
        } catch (Exception e) {
            out.println("오류: " + e.getMessage());
        }
    }
%>