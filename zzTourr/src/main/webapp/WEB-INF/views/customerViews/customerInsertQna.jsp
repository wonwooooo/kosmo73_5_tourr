 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BuildUp Real Estate - Add Offer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
        
        <li><a href="list.html">마이페이지
          <!--[if IE 7]><!-->
          </a>
         
          <ul>
            <li><a href="customerReserv.trip">구매내역</a></li>
            <li><a href="customerCart.trip">장바구니</a></li>
            <li><a href="customerProdRevboard.trip">My 상품후기</a></li>
            <li><a href="customerQna.trip">1:1 문의</a></li>
            <li><a href="customerModify.trip">개인정보</a></li>
          </ul>
        </li>
        
      </ul>
    </div>
  </div>
  <div id="main_content">
    <div id="admin_header">
      <div class="admin_addoffer_title">1:1문의하기</div>
      <div class="right_buttons">
<!--         <div class="right_button"><a href="http://all-free-download.com/free-website-templates/">등록</a></div> -->
<!--         <div class="right_button"><a href="http://all-free-download.com/free-website-templates/">1:1문의내역 보기</a></div> -->
<!--          <input style="float:right;" type="button" value="1:1문의내역 보기"/> -->
      </div>
    </div>
    <div id="admin_header_border"></div>
    <div class="add_tab">
      <div class="form_contact">
        <div class="adminform_row_contact">
          <label class="adminleft">제목: </label>
          <input type="text" class="form_input_contact"/>
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">작성자: </label>
          <input type="text" class="form_input_contact"/>
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">예약번호: </label>
          <input type="text" class="form_input_contact"/>
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">문의유형: </label>
          <select class="form_select">
            <option>숙소</option>
            <option>가이드</option>
          </select>
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">문의내용: </label>
          <textarea name="" rows="" cols="" ></textarea>
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">파일첨부: </label>
          <input type="file" class="form_input_contact"/>
        </div>
        <div style="float:right; padding:10px 25px 0 0;">
<!--           <div class="right_button"><a href="http://all-free-download.com/free-website-templates/">등록</a></div> -->
          <input style="float:right;" type="button" value="등 록"/>
        
        </div>
      </div>
    </div>
    <!-- 짜붙인 부분 from 하나투어 -->
<!--     <div id="contents" class="contents"><div class="text_wrap big top"><strong class="tit">문의하기</strong></div> <div class="notice_wrap mt0"><strong class="tit">문의하시기 전 확인해 주세요.</strong> <div class="clearfix"><ul class="list_bul disc"><li>하나투어는 고객님의 소중한 의견을 빠르고 정확하게 해결하기 위해 최선을 다하겠습니다.</li> <li>예약한 상품에 대한 문의는 최초 예약상담처를 통해 문의해 주세요.</li> <li>상품 견적 관련 문의는 우측 견적문의 메뉴 또는 하나투어 고객센터(1577-1233)로 문의해 주세요.</li> <li>예약 상품의 취소는 예약하신 대리점을 통해 문의해 주세요. (취소 시 위약금 발생)</li> <li>문의에 대한 답변은 <a href="/com/mpg/CHPC0MPG0200M200" class=""><em>마이 페이지</em></a>에서 확인할 수 있습니다.</li> <li>여행상품의 판매 및 상담은 전국의 하나투어 <a href="/els/etc/CHPC0ETC0004M200" class=""><em>공식인증예약센터</em></a>와 함께 하고 있습니다.</li></ul> <div class="right_cont"><ul class="btn_set"><li><a href="#none">단체맞춤여행</a></li> <li><a href="javascript:alert('더 좋은 혜택으로 찾아뵙기 위해 준비 중 입니다.');">단체항공권</a></li> <li><a href="#none">허니문</a></li> <li><a href="#none">제우스</a></li> <li><a href="#none">해외트렌드</a></li> <li><a href="#none">트래비즈</a></li></ul></div></div></div> <div class="tbl"><table class="type2"><colgroup><col style="width: 18%;"> <col> <col style="width: 18%;"> <col></colgroup> <tbody><tr><th><span class="impt">문의유형</span></th> <td colspan="3"><div class="form_holder select"><div class="select_item w180"><div class="sb selectbox" id="sb657151829" role="listbox" aria-has-popup="true" aria-labelledby="" aria-owns="sbdd192929239" aria-active-descendant="sbo551108944" style="width: 123.383px;"><div class="display" id="sbd358430912"><div class="text">상담유형</div><div class="arrow_btn"><span class="arrow"></span></div></div><ul class="selectbox items" role="menu" id="sbdd192929239" aria-hidden="true" style="max-height: 769px; position: absolute; visibility: visible; width: 181px; left: 0px; top: 42.5px; display: none;"><li id="sbo551108944" role="option" class="selected first" aria-disabled=""><div class="item"><div class="text">상담유형</div></div></li><li id="sbo879913134" role="option" aria-disabled=""><div class="item"><div class="text">국내여행</div></div></li><li id="sbo398775224" role="option" aria-disabled=""><div class="item"><div class="text">기타상담</div></div></li><li id="sbo443513627" role="option" aria-disabled=""><div class="item"><div class="text">법인여행</div></div></li><li id="sbo82438231" role="option" aria-disabled=""><div class="item"><div class="text">안전제안공모</div></div></li><li id="sbo687402819" role="option" aria-disabled="" class="last"><div class="item"><div class="text">해외여행</div></div></li></ul></div><select id="selectDefault01" title="선택" class="has_sb" style=""><option value="-">상담유형</option> <option value="100098931">국내여행</option><option value="100098932">기타상담</option><option value="100101116">법인여행</option><option value="100115602">안전제안공모</option><option value="100098930">해외여행</option></select></div></div></td></tr> <tr style="display: none;"><th>쇼핑환불<br>유의사항</th> <td colspan="3"><ul class="list_bul disc"><li>구입하신 물품은 해외구매의 특성상 교환 및 환불이 쉽지 않으니 신중한 구매를 부탁드리며, 교환 및 환불시 발생하는 수수료 및 소요기간은 해당 쇼핑센터 자체규정에 따릅니다.</li> <li>물픔의 교환 및 환불은 물품 수령 후 30일 이내에만 가능합니다. -->
<!-- 								<ul class="list_bul dash"><li>환불필요서류: 영수증원본, 반품물건, 고객명, 연락처</li> <li>단, 구입한 물품에 따라 추가로 증명서류 첨부(진단서, 보석 감정서 등)</li></ul></li> <li>단순변심 또는 개봉 후 사용하거나 훼손된 경우 교환 및 환불은 불가합니다.(단, 물품의 하자로 확인된 경우 제외)</li> <li>교환 및 환불은 물품의 쇼핑센터 도착시점으로부터 1~6개월 정도 소요되며, 교환 및 환불에 소요되는 모든 비용은 고객님 부담입니다.(국내 외 배송비 및 관세포함)</li> <li>지정된 쇼핑센터가 아닌 곳에서 구매한 물품의 환불은 고객님이 직접 처리 하셔야 하오니 이 점 양해 부탁 드립니다.</li> <li>교환 및 환불 접수는 하나투어 고객센터 대표번호(1577-1233 → 3 → 0 → 4번 쇼핑환불 접수) 또는 1:1문의를 이용해 주시기 바랍니다.</li></ul></td></tr> <tr><th>작성자</th> <td colspan="3"><span style="vertical-align: middle; line-height: 42px;">서주영</span></td></tr> <tr><th>예약코드</th> <td colspan="3"><div class="form_holder select"><div class="select_item w350 eps_op tel"><div class="sb selectbox" id="sb672853767" role="listbox" aria-has-popup="true" aria-labelledby="" aria-owns="sbdd740911680" aria-active-descendant="sbo502087895" style="width: 123.383px;"><div class="display" id="sbd711992137"><div class="text">예약번호선택</div><div class="arrow_btn"><span class="arrow"></span></div></div><ul class="selectbox items" role="menu" id="sbdd740911680" aria-hidden="true" style="max-height: 497.75px; position: absolute; visibility: visible; width: 351px; left: 0px; top: 42.5px; display: none;"><li id="sbo502087895" role="option" class="selected first" aria-disabled=""><div class="item"><div class="text">예약번호선택</div></div></li><li id="sbo921420196" role="option" aria-disabled="" class="last"><div class="item"><div class="text">직접입력</div></div></li></ul></div><select id="selectDefault02" title="선택" class="has_sb" style=""><option value="-">예약번호선택</option> <option value="doSelf">직접입력</option> </select></div> <button type="submit" class="btn">예약확인</button></div> <p class="check_message">예약코드를 등록해 주세요.(예약코드: 영문 2글자 + 숫자 조합)</p> <p class="txt billiard">문의내용과 관련된 예약코드를 입력해 주세요. 문의내용과 무관할 경우 입력하지 않으셔도 됩니다.</p></td></tr> <tr><th><span class="impt">답변알림수단</span></th> <td colspan="3"><div class="form_wrap"><span class="form_holder radio"><input type="radio" name="radioDefault" value="S" id="radioDefault01" class="inpt_radio"> <label for="radioDefault01" class="label_radio">휴대폰 (010-****-6448)</label></span> <span class="form_holder radio" style="padding-left: 90px;"><input type="radio" value="E" name="radioDefault" id="radioDefault02" class="inpt_radio"> <label for="radioDefault02" class="label_radio">이메일 (world-wide****@hanmail.net)</label></span> <span><a href="#" class="btn sml" style="width: 120px; margin-top: -7px;">정보수정</a></span></div> <p class="txt billiard" style="margin-top: 10px;">문의하신 내용에 답변이 등록되면 휴대폰(카카오 알림톡, 카카오 미설치 시 SMS 문자) 또는 이메일로 알림을 드립니다.<br>답변 내용은 마이페이지에서도 확인하실 수 있습니다. -->
<!-- 						  휴대폰/이메일 정보수정은 '마이페이지&gt;개인정보&gt;회원정보수정'에서 진행해주세요.</p></td></tr> <tr><th><span class="impt">제목</span></th> <td colspan="3"><div class="form_holder" style="width: 755px;"><input type="text" title="제목" placeholder="제목을 입력해 주세요." class="inpt_text v-placeholder" style="width: 100%;"></div></td></tr> <tr><th><span class="impt">문의내용</span></th> <td colspan="3"><div class="form_holder v-placeholder" style="width: 755px;"><textarea rows="10" placeholder="최대 2500자까지 입력 가능합니다. 문의할 내용을 입력해 주세요."></textarea> <div class="char_count_group"><span class="char_count">0</span> / 2500 -->
<!-- 							</div></div></td></tr></tbody></table> <table class="type2 none mt15 diff"><colgroup><col style="width: 18%;"> <col> <col style="width: 18%;"> <col></colgroup> <tbody> <tr><th>파일첨부</th> <td colspan="3"><div class="file_attach_wrap"><ul><div data-v-0f3b7ee2="" class="file_attach_wrap mt20"><ul data-v-0f3b7ee2=""><li data-v-48c829d4="" data-v-0f3b7ee2=""><span data-v-48c829d4="" class="img"><img data-v-48c829d4="" src="" alt="" style="display: none;"></span> <a data-v-48c829d4="" class="cls" style="cursor: pointer; display: none;">삭제</a> <span data-v-48c829d4="" class="img"></span> <a data-v-48c829d4="" class="add" style="cursor: pointer;">추가</a> <input data-v-48c829d4="" type="file" style="display: none;"></li> <li data-v-48c829d4="" data-v-0f3b7ee2=""><span data-v-48c829d4="" class="img"><img data-v-48c829d4="" src="" alt="" style="display: none;"></span> <a data-v-48c829d4="" class="cls" style="cursor: pointer; display: none;">삭제</a> <span data-v-48c829d4="" class="img"></span> <a data-v-48c829d4="" class="add" style="cursor: pointer;">추가</a> <input data-v-48c829d4="" type="file" style="display: none;"></li> <li data-v-48c829d4="" data-v-0f3b7ee2=""><span data-v-48c829d4="" class="img"><img data-v-48c829d4="" src="" alt="" style="display: none;"></span> <a data-v-48c829d4="" class="cls" style="cursor: pointer; display: none;">삭제</a> <span data-v-48c829d4="" class="img"></span> <a data-v-48c829d4="" class="add" style="cursor: pointer;">추가</a> <input data-v-48c829d4="" type="file" style="display: none;"></li></ul></div></ul></div> <p class="txt billiard">개당 3MB 미만의 <strong>BMP, GIF, JPG, JPEG, PNG, TIF</strong> 파일만 등록 가능합니다.</p> <p class="txt billiard">상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보 없이 삭제될 수 있습니다.</p></td></tr></tbody></table></div> <div class="btn_wrap"><a href="#" class="btn big gray">취소</a> <button class="btn big pink">등록</button></div></div> -->
    <!-- 짜붙인 부분 from 하나투어 -->
    
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
