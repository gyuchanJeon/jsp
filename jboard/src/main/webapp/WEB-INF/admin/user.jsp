<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator::User_List</title>
    <link rel="stylesheet" href="../css/user_List.css">
    <link rel="stylesheet" href="../css/admin_header.css">
    <link rel="stylesheet" href="../css/admin_footer.css">
  </head>
  <body>
    <div class="header_wrapper">
      <header>
        <a href="#" id="logo">
          <img src="../images/admin_logo.jpg" alt="admin_logo"/>
        </a>
        <div class="home">
          <a href="../index.html">HOME | </a>
          <a href="#">로그아웃 | </a>
          <a href="/community/qna.html">고객센터</a>
        </div>
      </header>
    </div>
    <div class="main_wrapper">
      <main>
        <div id="section1">
          <div id="section1_head">
            <a>주요기능</a>
          </div>
          <div id="section1_menu">
            <ul id="prod_manage">
              상품관리
              <div>
                <li id="prod_list">L 
                  <a href="../product/list.html">상품목록</a>
                </li>
                <li id="prod_register">L 
                  <a href="../product/register.html">상품등록</a>
                </li>
              </div>
            </ul>
            <ul id="order_manage">
              주문관리
              <li id="order_list">L 
                <a href="../order/list.html">주문목록</a>
              </li>
            </ul>
            <ul id="user_manage">
              회원관리
              <li id="user_list">L 
                <a href="../user/list.html">회원목록</a>
              </li>
            </ul>
          </div>
        </div>
        <div id="section2_main">
          <div id="section2_title">회원목록</div>
          <div id="article_wrapper">
            <div id="article1">
              <table id="prod_table">
                <tr>
                  <th><input type="checkbox"></th>
                  <th>아이디</th>
                  <th>이름</th>
                  <th>별명</th>
                  <th>이메일</th>
                  <th>휴대폰</th>
                  <th>등급</th>
                  <th>가입일</th>
                  <th>확인</th>
                </tr>
                <tr>
                  <td><input type="checkbox"></td>
                  <td>a101</td>
                  <td>김유신</td>
                  <td>유신101</td>
                  <td>yusin101@naver.com</td>
                  <td>010-1234-1001</td>
                  <td>
                    <select name="grade">
                      <option value="등급">2</option>
                    </select>
                  </td>
                  <td>2023-01-01 13:06:14</td>
                  <td><a href="#">[상세확인]</a></td>
                </tr>
                <tr>
                  <td><input type="checkbox"></td>
                  <td>a102</td>
                  <td>김춘추</td>
                  <td>춘추102</td>
                  <td>chunchu102@naver.com</td>
                  <td>010-1234-1002</td>
                  <td>
                    <select name="grade">
                      <option value="등급">2</option>
                    </select>
                  </td>
                  <td>2023-01-01 13:06:14</td>
                  <td><a href="#">[상세확인]</a></td>
                </tr>
                <tr>
                  <td><input type="checkbox"></td>
                  <td>a103</td>
                  <td>장보고</td>
                  <td>보고103</td>
                  <td>bogo103@naver.com</td>
                  <td>010-1234-1003</td>
                  <td>
                    <select name="grade">
                      <option value="등급">2</option>
                    </select>
                  </td>
                  <td>2023-01-01 13:06:14</td>
                  <td><a href="#">[상세확인]</a></td>
                </tr>
              </table>
            </div>
            <div id="list_num">
              <a><</a>
              <a href="#">[1]</a>
              <a href="#">[2]</a>
              <a href="#">[3]</a>
              <a href="#">[4]</a>
              <a href="#">[5]</a>
              <a>></a>
            </div>
          </div>
        </div>
      </main>
    </div>
    <div class="footer_wrapper">
      <footer>
        <div id="version">FARMSTORY ADMINISTRATOR Version 1.0.1</div>
        <div id="copyright">
          Copyrightⓒ 김철학(개발에반하다.) All rights reserved.
        </div>
      </footer>
    </div>
  </body>
</html>
