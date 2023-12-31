<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="../../..../../../Styles/Javascript/jquery-3.7.0.js"
      type="text/javascript"></script>
    <script
      src="../../..../../../Styles/Javascript/manage.js"
      type="text/javascript"
      defer="defer"></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="../../..../../../Styles/CSS/managePage.css" />
    <title>관리자 페이지</title>
  </head>
  <body>
    <div id="manage_wrapper">
      <main>
        <div id="manage_menu">
          <div class="manage_menu_section">
            <div class="manage_menu_title">
            <a href="manageMain.jsp">Alcohol</a>
          </div>
            <h3>관리자 페이지</h3>
            <ul id="nav_bar2">
              <li class="menu_bar2">
                <a href="user/userload.jsp">고객관리 ▸</a>
              </li>
              <li class="menu_bar2">
                <a href="product/proload.jsp">상품관리 ▸</a>
              </li>
              <li class="menu_bar2">
                <a href="order/orderload.jsp">주문관리 ▸</a>
              </li>
            </ul>
          </div>

          <div class="manage_logout">
            <a href="../logout.jsp">로그아웃</a>
          </div>
        </div>

        <div id="manage_section">안녕하세요 관리자님 환영합니다.</div>
      </main>
    </div>
  </body>
</html>
