package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.CustomerDAOImpl;
import com.zzTourr.domain.PaymentVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;


@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAOImpl customerDAO;
	
	//회원가입 작성
	public void customerInsert(UsersVO vo) {
		customerDAO.CustomerInsert(vo);
	}

	//회원정보 수정
	public void customerModify(UsersVO vo) {
		customerDAO.CustomerModify(vo);
	}
	
	//회원정보 조회
	public UsersVO users(String userId) {
		return customerDAO.userName(userId);
		
	}

	//아이디 중복 검사
	public void idCheck(UsersVO vo) {
		customerDAO.idCheck(vo);
		
	}

	//예약내역
	public List<ReservationVO> reservation(String userId) {
		return customerDAO.reservationDAO(userId);
	}

	//결제하기
	public void customerPayment(PaymentVO vo) {
		customerDAO.customerPayment(vo);
	}

	//상품후기 작성(화면만)
	public void customerInsertProdRev(ProductRevboVO vo) {
		customerDAO.customerInsertProdRev(vo);
	}

	//상품후기 작성실제 디비
	public void revInsert(ProductRevboVO vo) {
		customerDAO.revInsertDao(vo);
	}

	//상품후기 내역
	public List<ProductRevboVO> productrevbo(String resId, String productId) {
		HashMap map = new HashMap();
		map.put("resId", resId);
		map.put("productId", productId);
		return customerDAO.revListDAO(map);
	}
	
}
