<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>customerCart.jsp 장바구니</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- <link rel="stylesheet" type="text/css" href="/zTrip/resources/customercss/style.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="/zTrip/resources/customercss/admin.css" /> -->
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerAdmin.css" />
</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
        <li><a href="http://all-free-download.com/free-website-templates/">Admin Home</a></li>
        <li><a href="list.html">Manage Offers
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="http://all-free-download.com/free-website-templates/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">Lorem ipsum dolor sit amet</a></li>
           
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        </li>
        <li><a href="login.html">Login
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="http://all-free-download.com/free-website-templates/">Categories</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">Lorem ipsum dolor sit amet</a></li>
            
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        </li>
         <li><a href="list.html">마이페이지
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="http://all-free-download.com/free-website-templates/">구매내역</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">장바구니</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">My 상품평</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">1:1 문의</a></li>
            <li><a href="http://all-free-download.com/free-website-templates/">개인정보</a></li>
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        </li>
        <li><a href="http://all-free-download.com/free-website-templates/">Manage Customers</a></li>
        <li><a href="contact.html">Website</a></li>
      </ul>
    </div>
  </div>
  <div id="main_content">
    <div id="admin_header">
<!--       <div class="admin_index_title">장바구니</div> -->
    </div>
    
    <div class="title" style="float:left;">
        <div style="float:left;">장바구니
        
        </div>
<!--         <div style="float:right; font-size:10px;color:#d8325d; padding-top:2px;">display: <a href="list2.html"><img src="images/list_style3_a.gif" border="0" /></a> <a href="list1.html"><img src="images/list_style1.gif" border="0" /></a> <a href="list.html"><img src="images/list_style2.gif" border="0" /></a> </div> -->
    </div>
    
<!--     <div id="admin_header_border"></div> -->
    <input style="float:right;" type="button" name="confirm" id="confirm" value="선택 삭제">
<!--     <div id="admin_search_tab"> -->
<!--       <label class="search" style="padding-top:3px;">Search an offer: </label> -->
<!--       <label class="search"> -->
<!--       <input type="text" name="search" class="search_input" /> -->
<!--       </label> -->
<!--       <label class="search"><a href="http://all-free-download.com/free-website-templates/"><img src="images/adminicons/search.png" alt="" border="0" /></a> </label> -->
<!--     </div> -->
    <div class="table_grid">
<!--       <table cellspacing="0" cellpadding="0"> -->

        <tr>
          <th style="width:40px;">선택</th>
          <th style="width:40px;"><a href="http://all-free-download.com/free-website-templates/" class="pink">상품ID</a></th>
<!--           <th style="width:50px;"><a href="http://all-free-download.com/free-website-templates/" class="pink">Picture</a></th> -->
          <th style="width:auto;"><a href="http://all-free-download.com/free-website-templates/" class="pink">상품명</a></th>
          <th style="width:auto;"><a href="http://all-free-download.com/free-website-templates/" class="pink">상품 정보</a></th>
          <th style="width:100px;"><a href="http://all-free-download.com/free-website-templates/" class="pink">상품 금액</a></th>
<!--           <th style="width:50px;"><a href="http://all-free-download.com/free-website-templates/" class="pink">Edit</a></th> -->
          <th style="width:50px;"><a href="http://all-free-download.com/free-website-templates/" class="pink">삭제</a></th>
        </tr>
        <tr class="even">
<!--           <td><input type="checkbox" name="checkbox" /></td> -->
          <td>12</td>
<!--           <td><img alt="" src="images/smallpic.gif" width="53" height="39" border="0" /></td> -->
          <td>Lorem ipsum dolor sit amet</td>
          <td>Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet</td>
          <td><strong>60 000 &euro;</strong></td>
<!--           <td><a href="editoffer.html"><img alt="" src="images/adminicons/edit.png" width="22" height="22" border="0" /></a></td> -->
          <td><a href="http://all-free-download.com/free-website-templates/"><img alt="" src="images/adminicons/delete.png" width="24" height="24" border="0" /></a></td>
        </tr>
        <tr class="odd">
<!--           <td><input type="checkbox" name="checkbox" /></td> -->
          <td>13</td>
<!--           <td><img alt="" src="images/smallpic.gif" width="53" height="39" border="0" /></td> -->
          <td>Lorem ipsum dolor sit amet</td>
          <td>Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet</td>
          <td><strong>60 000 &euro;</strong></td>
<!--           <td><a href="editoffer.html"><img alt="" src="images/adminicons/edit.png" width="22" height="22" border="0" /></a></td> -->
          <td><a href="http://all-free-download.com/free-website-templates/"><img alt="" src="images/adminicons/delete.png" width="24" height="24" border="0" /></a></td>
        </tr>
        <tr class="even">
<!--           <td><input type="checkbox" name="checkbox" /></td> -->
          <td>12</td>
<!--           <td><img alt="" src="images/smallpic.gif" width="53" height="39" border="0" /></td> -->
          <td>Lorem ipsum dolor sit amet</td>
          <td>Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet</td>
          <td><strong>60 000 &euro;</strong></td>
<!--           <td><a href="editoffer.html"><img alt="" src="images/adminicons/edit.png" width="22" height="22" border="0" /></a></td> -->
          <td><a href="http://all-free-download.com/free-website-templates/"><img alt="" src="images/adminicons/delete.png" width="24" height="24" border="0" /></a></td>
        </tr>
        <tr class="odd">
          <td><input type="checkbox" name="checkbox" /></td>
          <td>13</td>
<!--           <td><img alt="" src="images/smallpic.gif" width="53" height="39" border="0" /></td> -->
          <td>Lorem ipsum dolor sit amet</td>
          <td>Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet</td>
          <td><strong>60 000 &euro;</strong></td>
<!--           <td><a href="editoffer.html"><img alt="" src="images/adminicons/edit.png" width="22" height="22" border="0" /></a></td> -->
          <td><a href="http://all-free-download.com/free-website-templates/"><img alt="" src="images/adminicons/delete.png" width="24" height="24" border="0" /></a></td>
        </tr>
        
      </table>
    </div>
    <div class="pagination"> <span class="disabled">prev</span> <span class="current">1</span> <a href="http://all-free-download.com/free-website-templates/">2</a> <a href="http://all-free-download.com/free-website-templates/">3</a> <a href="http://all-free-download.com/free-website-templates/">4</a> <a href="http://all-free-download.com/free-website-templates/">5</a> <a href="http://all-free-download.com/free-website-templates/">6</a> <a href="http://all-free-download.com/free-website-templates/">7</a>...<a href="http://all-free-download.com/free-website-templates/">199</a> <a href="http://all-free-download.com/free-website-templates/">200</a> <a href="http://all-free-download.com/free-website-templates/">next</a> </div>
    <div class="middle_buttons">
<!--         <div class="middle_button"><a href="http://all-free-download.com/free-website-templates/"></a></div> -->
<!--         <div class="middle_button"><a href="http://all-free-download.com/free-website-templates/">결제하기</a></div> -->
        <input type="button" value="결제하기"/>
     </div>
    
    <div class="admin_footer_help"> Admin help section here Admin help section here Admin help section here Admin help section here Admin help section here </div>
  </div>
  <!-- end of main_content -->
  <div id="footer">
    <div id="copyright">
      <div style="float:left; padding:3px;"><a href="http://all-free-download.com/free-website-templates/"><img src="images/footer_logo.gif" width="42" height="35" alt="" border="0" /></a></div>
      <div style="float:left; padding:14px 10px 10px 10px;"> Company name.&copy; All Rights Reserved 2008 - By <a href="http://csscreme.com" style="color:#772c17;">csscreme</a></div>
    </div>
    <ul class="footer_menu">
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Home </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Selling Homes </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Buying Homes </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Renting Homes</a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> RSS </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Contact </a></li>
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
