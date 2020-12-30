package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.PaymentVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

@Repository("customerDAO")
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	   private SqlSessionTemplate mybatis;
	
	// 회원가입 작성
	public void CustomerInsert(UsersVO vo) {
		System.out.println("===> Mybatis CustomerInsert() 호출");
	      mybatis.insert("customer.customerDAO.customerInsert", vo);
	}
	
	// 회원정보 조회
	public UsersVO userName(String userName) {
		System.out.println("===> Mybatis userName() 호출");
		  return mybatis.selectOne("customer.customerDAO.userName", userName);
	}
	
	// 회원정보 수정
	public void CustomerModify(UsersVO vo) {
		System.out.println("===> Mybatis CustomerModify() 호출");
	      mybatis.update("customer.customerDAO.customerModify", vo);
	}

	
	// 아이디 중복 검사
	public void idCheck(UsersVO vo) {
		System.out.println("===> Mybatis idCheck() 호출");
	      mybatis.selectOne("customer.customerDAO.idCheck", vo);
		
	}

	// 예약내역
	public List<ReservationVO> reservationDAO(String userId) {
		System.out.println("===> Mybatis reservationDAO 호출");
	    return  mybatis.selectList("customer.customerDAO.reservationDAO", userId);
	}

	// 결제하기
	public void customerPayment(PaymentVO vo) {
		System.out.println("===> Mybatis customerPayment() 호출");
	      mybatis.insert("customer.customerDAO.customerPayment", vo);
	}

	// 상품후기 작성(화면)
	public void customerInsertProdRev(ProductRevboVO vo) {
		System.out.println("===> Mybatis customerInsertProdRev() 호출");
		  mybatis.insert("customer.customerDAO.customerInsertProdRev", vo);
	}

	//실제 db에 상품후기 작성
	public void revInsertDao(ProductRevboVO vo) {
		System.out.println("===> Mybatis revInsertDao() 호출");
		  mybatis.insert("customer.customerDAO.revInsertDao", vo);
	}

	// 상품후기 내역
	public List<ProductRevboVO> revListDAO(HashMap map) {
		System.out.println("===> Mybatis revListDAO 호출");
		   return  mybatis.selectList("customer.customerDAO.revListDAO", map);
	}
	
}
