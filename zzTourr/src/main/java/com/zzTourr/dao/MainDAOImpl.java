package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//����-���-�˻�-�������ѹ�
	public List<LodgeVO> mainLodgeList(HashMap map) {
		System.out.println("===> Mybatis mainLodgeList() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeList", map);
	}

	//����-���-�������ѹ�
	public int getTotalPagepen() {
		System.out.println("===> Mybatis getTotalPagepen() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagepen");
	}

	//����-���-�˻�-����
	public List<LodgeVO> mainlodgelistserpen(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserpen() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserpen", map);
	}

	//����-���-�˻�-�������ѹ�
	public int getTotalPagepense(HashMap map) {
		System.out.println("===> Mybatis getTotalPagepense() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagepense", map);
	}

	
	//����-ȣ��-�������ѹ�
	public int getTotalPageho() {
		System.out.println("===> Mybatis getTotalPageho() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPageho");
	}

	//����-ȣ��-����
	public List<LodgeVO> mainLodgeListho(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListho() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListho", map);
	}

	//����-ȣ��-�˻�-����
	public List<LodgeVO> mainlodgelistserna(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserna() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserna", map);
	}

	//����-ȣ��-�˻�-�������ѹ�
	public int getTotalPagehose(HashMap map) {
		System.out.println(map);
		System.out.println("===> Mybatis getTotalPagehose() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagehose", map);
	}

	//����-����-�������ѹ�
	public int getTotalPagemo() {
		System.out.println("===> Mybatis getTotalPagemo() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagemo");
	}

	//����-����-����
	public List<LodgeVO> mainLodgeListhmo(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListmo() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListmo", map);
	}

	//����-����-�˻�-����
	public List<LodgeVO> mainlodgelistsermo(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistsermo() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistsermo", map);
	}

	//����-����-�˻�-�������ѹ�
	public int getTotalPagemose(HashMap map) {
		System.out.println("===> Mybatis getTotalPagemose() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagemose", map);
	}

	//����-����-�������ѹ�
	public int getTotalPagege() {
		System.out.println("===> Mybatis getTotalPagege() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagege");
	}

	//����-����-��ü-����
	public List<LodgeVO> mainLodgeListge(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListge() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListge", map);
	}

	//����-����-�˻�-����
	public List<LodgeVO> mainlodgelistserge(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserge() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserge", map);
	}

	//����-����-�˻�-�������ѹ�
	public int getTotalPagegese(HashMap map) {
		System.out.println("===> Mybatis getTotalPagegese() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagegese", map);
	}

	//�α���
	public UsersVO mainmemberLogin(UsersVO vo) {
		System.out.println("===> MemberMapper mainidCheck ȣ��");
		return mybatis.selectOne("main.MainDAO.mainidCheck", vo);
	}

	//���̵�-����Ʈ
	public List<GuideTourVO> mainGuideList(HashMap map) {
		System.out.println("===> Mybatis mainGuideList() ȣ��");
		System.out.println(map);
		return mybatis.selectList("main.MainDAO.mainGuideList", map);
	}

	//���̵�-��������
	public int getTotalPageguide() {
		System.out.println("===> Mybatis getTotalPageguide() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPageguide");
	}

	//���̵�-�˻�-����Ʈ
	public List<GuideTourVO> mainGuidelistser(HashMap map) {
		System.out.println("===> Mybatis ser() ȣ��");
		return mybatis.selectList("main.MainDAO.ser", map);
	}

	//���̵�-�˻�-��������
	public int getTotalPagega(HashMap map) {
		System.out.println("===> Mybatis getTotalPagega() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagega", map);
	}

	//����-��������
	public LodgeVO mainlodgedetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainlodgedetail ȣ��");
		return mybatis.selectOne("main.MainDAO.mainlodgedetail", vo);
	}

	//����-��������-Ŭ���� ��������
	public List<RoomVO> mainroomdetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainroomdetail ȣ��");
		return mybatis.selectList("main.MainDAO.mainroomdetail", vo);
	}

	//����-��������-������-����Ʈ
	public List<ProductRevboVO> mainProRevList(HashMap map) {
		System.out.println("===> Mybatis mainProRevList() ȣ��");
		return mybatis.selectList("main.MainDAO.mainProRevList", map);
	}

	//����-��������-������-������
	public int mainProRevPage(int lodIdNum) {
		System.out.println("===> Mybatis mainProRevPage() ȣ��");
		return mybatis.selectOne("main.MainDAO.mainProRevPage", lodIdNum);
	}

	//���̵� ��������(���̵�����)
	public GuideTourVO mainguidedetail(String programName) {
		System.out.println("===> Mybatis mainguidedetail ȣ��");
		return mybatis.selectOne("main.MainDAO.mainguidedetail", programName);
	}

	//���̵� �������� ��ȸ-������-��ü����Ʈ
	public List<ProductRevboVO> mainProRevListga(HashMap map) {
		System.out.println("===> Mybatis mainProRevListga() ȣ��");
		return mybatis.selectList("main.MainDAO.mainProRevListga", map);
	}

	//���̵� �������� ��ȸ-������-������
	public int mainProRevPagega(String programName) {
		System.out.println("===> Mybatis mainProRevPagega() ȣ��");
		return mybatis.selectOne("main.MainDAO.mainProRevPagega", programName);
	}

	//�����Խ���-��ü����Ʈ
	public List<ComBoardVO> mainComBoardList(HashMap map) {
		System.out.println("===> Mybatis mainProRevListga() ȣ��");
		return mybatis.selectList("main.MainDAO.mainComBoardList", map);
	}

	//�����Խ���-��ü��������
	public int getTotalPageComBoard() {
		System.out.println("===> Mybatis getTotalPageComBoard() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPageComBoard");
	}

	//�����Խ���-�׷��ȣ�޾ƿ���
	public int mainGetFrGroupIddao() {
		System.out.println("===> Mybatis mainGetFrGroupIddao() ȣ��");
		return mybatis.selectOne("main.MainDAO.mainGetFrGroupIddao");
	}

	//�����Խ���-�۾���
	public int insertComBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertComBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertComBoard", vo);
	}
	//�����Խ���-�ۺ���
	public ComBoardVO mainfreeBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao ȣ��");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//�����Խ���-�� ���� ��ȸ�� +1 ����
	public void updateFreeBoardCountdao(int articleId) {
		System.out.println("===> Mybatis updateFreeBoardCountdao() ȣ��");
		mybatis.update("main.MainDAO.updateFreeBoardCountdao", articleId);
		
	}

	//�����Խ���-�ۼ���
	public void mainupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainupdatefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainupdatefrBoard", vo);
	}

	//�����Խ���-�ۻ���
	public void maindeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis maindeletefrBoard ȣ��");
		mybatis.update("main.MainDAO.maindeletefrBoard", vo);
	}

	//����� ��ȣ
	public String selectLastSequenceNumber(String maxSeqNum, String minSeqNum) {
		HashMap map = new HashMap();
		map.put("maxSeqNum", maxSeqNum);	
		map.put("minSeqNum", minSeqNum);
		System.out.println("===> Mybatis selectLastSequenceNumber ȣ��");
		return mybatis.selectOne("main.MainDAO.selectLastSequenceNumber", map);
	}

	//����Խ���-�۾���
	public int insertRvBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertRvBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertRvBoard", vo);
	}

	//����Խ���-�ۺ���
	public ComBoardVO mainrvBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao ȣ��");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//����Խ���-�ۼ���
	public void mainrvupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvupdatefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainrvupdatefrBoard", vo);
	}

	//����Խ���-�ۻ���
	public void mainrvdeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvdeletefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainrvdeletefrBoard", vo);
	}

	//����-��¥-����Ʈ
	public List<ReservationVO> mainlosevDateDAO(ReservationVO vo) {
		System.out.println("===> Mybatis mainlosevDateDAO ȣ��");
		return mybatis.selectList("main.MainDAO.mainlosevDateDAO", vo);
	}
	
	//���Ǽ� üũ
	public int roomNum(ReservationVO vo) {
		System.out.println("===> Mybatis roomNum ȣ��");
		//System.out.println(map);
		return mybatis.selectOne("main.MainDAO.roomNum", vo);
	}

	//예약하기
	public int insertRevDAO(ReservationVO vo) {
		System.out.println("===> Mybatis insertRvBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertRevDAO", vo);
	}

	//메인페이지-펜션
	public List<LodgeVO> mmainLodgeListpen() {
		System.out.println("===> Mybatis mmainLodgeListpen");
		return mybatis.selectList("main.MainDAO.mmainLodgeListpen");
		
	}

	//메인페이지-호텔
	public List<LodgeVO> mmainLodgeListho() {
		System.out.println("===> Mybatis mmainLodgeListho()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListho");
	}

	//메인페이지-게스트하우스
	public List<LodgeVO> mmainLodgeListge() {
		System.out.println("===> Mybatis mmainLodgeListge()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListge");
	}

	//메인페이지-모텔
	public List<LodgeVO> mmainLodgeListmo() {
		System.out.println("===> Mybatis mmainLodgeListmo()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListmo");
	}


	
}
