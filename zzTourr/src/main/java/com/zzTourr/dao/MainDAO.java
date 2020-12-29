package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

public interface MainDAO {
	//����-���-��ü����Ʈ
	public List<LodgeVO> mainLodgeList(HashMap map);
	
	//����-���-��ü��������
	public int getTotalPagepen();
	
	//����-���-�˻�-��ü����Ʈ
	public List<LodgeVO> mainlodgelistserpen(HashMap map);
		
	//����-���-�˻�-��������
	public int getTotalPagepense(HashMap map);
	
	//����-ȣ��-��ü��������
	public int getTotalPageho();
	
	//����-ȣ��-��ü����Ʈ
	public List<LodgeVO> mainLodgeListho(HashMap map);
	
	//����-ȣ��-�˻�-��ü����Ʈ
	public List<LodgeVO> mainlodgelistserna(HashMap map);
	
	//����-ȣ��-�˻�-��������
	public int getTotalPagehose(HashMap map);
	
	//����-����-��ü��������
	public int getTotalPagemo();
		
	//����-����-��ü����Ʈ
	public List<LodgeVO> mainLodgeListhmo(HashMap map);
	
	//����-����-�˻�-��ü����Ʈ
	public List<LodgeVO> mainlodgelistsermo(HashMap map);
		
	//����-����-�˻�-��������
	public int getTotalPagemose(HashMap map);
	
	//����-����-��ü��������
	public int getTotalPagege();
			
	//����-����-��ü����Ʈ
	public List<LodgeVO> mainLodgeListge(HashMap map);
		
	//����-����-�˻�-��ü����Ʈ
	public List<LodgeVO> mainlodgelistserge(HashMap map);
			
	//����-����-�˻�-��������
	public int getTotalPagegese(HashMap map);
	
	//�α��� Ȯ�α�� ����
	public UsersVO mainmemberLogin(UsersVO vo);
		
	//���̵�-��ü����Ʈ
	public List<GuideTourVO> mainGuideList(HashMap map);
		
	//���̵�-��ü��������
	public int getTotalPageguide();
	
	//���̵�-�˻�-��ü����Ʈ
	public List<GuideTourVO> mainGuidelistser(HashMap map);
			
	//���̵�-�˻�-��������
	public int getTotalPagega(HashMap map);
	
	//���� ��������(��������)
	public LodgeVO mainlodgedetail(LodgeVO vo);
	
	//���� �������� ��ȸ�� ��������
	public List<RoomVO> mainroomdetail(LodgeVO vo);
	
	//���� �������� ��ȸ-������-��ü����Ʈ
	public List<ProductRevboVO> mainProRevList(HashMap map);
				
	//���� �������� ��ȸ-������-������
	public int  mainProRevPage(int lodIdNum);
	
	//���̵� ��������(���̵�����)
	public GuideTourVO mainguidedetail(String programName);
	
	//���̵� �������� ��ȸ-������-��ü����Ʈ
	public List<ProductRevboVO> mainProRevListga(HashMap map);
					
	//���̵� �������� ��ȸ-������-������
	public int  mainProRevPagega(String programName);
	
	//�����Խ���-��ü����Ʈ
	public List<ComBoardVO> mainComBoardList(HashMap map);
			
	//�����Խ���-��ü��������
	public int getTotalPageComBoard();
	
	//�����Խ���-�׷��ȣ�޾ƿ���
	 public int mainGetFrGroupIddao();
	 
	//�����Խ���-�۾���
	 public int insertComBoard(ComBoardVO vo);
	 
	 //�����Խ���-�ۺ���
	 public ComBoardVO mainfreeBoardViewdao(int articleId);
	 
	 //�����Խ���-�ۼ���
	 public void mainupdatefrBoard(ComBoardVO vo);
	 
	 //�����Խ���-�ۻ���
	 public void maindeletefrBoard(ComBoardVO vo);
	 
	//����Խ���-�۾���
	public int insertRvBoard(ComBoardVO vo);
		 
	//����Խ���-�ۺ���
	public ComBoardVO mainrvBoardViewdao(int articleId);
		 
	//����Խ���-�ۼ���
	public void mainrvupdatefrBoard(ComBoardVO vo);
		 
	//����Խ���-�ۻ���
	public void mainrvdeletefrBoard(ComBoardVO vo);

	 //����� ��ȣ
	public String selectLastSequenceNumber(String maxSeqNum, String minSeqNum);
	
	//����Ʈ-����-��¥
	public List<ReservationVO> mainlosevDateDAO(ReservationVO vo);
	
	//���� �ܿ� ����
	public int roomNum(HashMap map);

}
