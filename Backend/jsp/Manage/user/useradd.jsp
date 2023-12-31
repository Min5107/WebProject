<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="../../../..../../../Styles/Javascript/jquery-3.7.0.js"
      type="text/javascript"></script>
    <script
      src="../../../..../../../Styles/Javascript/manage.js"
      type="text/javascript"
      defer="defer"></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="../../../..../../../Styles/CSS/managePage.css" />
    <title>관리자 페이지</title>
  </head>
  <body>
    <div id="manage_wrapper">
      <main>
        <div id="manage_menu">
          <div class="manage_menu_section">
            <div class="manage_menu_title">
              <a href="../manageMain.jsp">Alcohol</a>
            </div>

            <h3>관리자페이지</h3>
            <ul id="nav_bar2">
              <li class="menu_bar2">
                <a href="../user/userload.jsp">고객 관리</a>
              </li>
              <li class="menu_bar2">
                <a href="../product/proload.jsp">상품 관리</a>
              </li>
              <li class="menu_bar2">
                <a href="../order/orderload.jsp">주문 관리</a>
              </li>
              <li class="menu_bar2">
                <a href="../inquery/receipt.jsp">1:1 문의</a>
              </li>
            </ul>
          </div>

          <div class="manage_logout">
            <a href="../../logout.jsp">로그아웃</a>
          </div>
        </div>

        <div id="manage_section">
          <div class="manage_user">
            <div class="manage_title">고객 추가</div>
            <form class="add_form" action="useraddpro.jsp">
              <label>아이디</label>
              <input
                type="text"
                name="username"
                placeholder="문자, 숫자를 조합하여 10자리내로 작성해주세요." />
              <label>비밀번호</label>
              <input
                type="password"
                name="password"
                placeholder="특수문자,숫자,문자를 조합하여 6~20자 내로 작성해주세요." />
              <label>비밀번호 확인</label>
              <input
                type="password"
                placeholder="특수문자,숫자,문자를 조합하여 8~20자 내로 작성해주세요." />
              <label>이름</label>
              <input type="text" name="name" placeholder="이름을 입력해주세요." />

              <label>주소</label>
              <input type="text" name="address" />

              <label>전화번호</label>
              <input
                type="phone"
                placeholder="하이픈('-')을 사용하여 작성해주세요. ex (010-1234-5678)" />

              <label>생년월일</label>
              <input type="date" name="birthday"/>

              <div class="userinfo_btns">
                <button class="user_btn" type="submit">추가하기</button>
                <button class="user_btn"><a href="userload.jsp">뒤로가기</a></button>
                </div>
            </form>
          </div>
        </div>
      </main>
    </div>
  </body>
</html>
