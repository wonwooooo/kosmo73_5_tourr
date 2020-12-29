package com.zzTourr.service;

import java.util.List;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

public interface MainService {
	
	//����-���-����Ʈ
	List<LodgeVO> mainLodgeList(int pageNo);
	
	//����-���-��ü��������
	int mainLodgeList(LodgeVO vo);
	
	//����-���-�˻�-����Ʈ
	List<LodgeVO> mainlodgelistserpen(int pageNo, LodgeVO vo, String searchlo);
		
	//����-���-�˻�-��������
	public int mainLodgeListpense(LodgeVO vo, String searchtext);
	
	//����-ȣ��-��ü��������
	int mainLodgeListho(LodgeVO vo);
	
	//����-ȣ��-����Ʈ
	List<LodgeVO> mainLodgeListho(int pageNo);

	//����-ȣ��-�˻�-����Ʈ
	List<LodgeVO> mainlodgelistserna(int pageNo, LodgeVO vo, String searchlo);
	
	//����-ȣ��-�˻�-��������
	int mainLodgeListhose(LodgeVO vo, String searchtext);
	
	//����-����-��ü��������
	int mainLodgeListmo(LodgeVO vo);
		
	//����-����-����Ʈ
	List<LodgeVO> mainLodgePagemo(int pageNo);

	//����-����-�˻�-����Ʈ
	List<LodgeVO> mainlodgelistsermo(int pageNo, LodgeVO vo, String searchlo);
		
	//����-����-�˻�-��������
	int mainLodgeListmose(LodgeVO vo, String searchtext);

	//����-����-��ü��������
	int mainLodgePagege(LodgeVO vo);
		
	//����-����-����Ʈ
	List<LodgeVO> mainLodgeListge(int pageNo);

	//����-����-�˻�-����Ʈ
	List<LodgeVO> mainlodgelistserge(int pageNo, LodgeVO vo, String searchlo);
		
	//����-����-�˻�-��������
	int mainLodgeListge(LodgeVO vo, String searchtext);
	
	//�α���
	public UsersVO mainidCheckLogin(UsersVO vo);
	
	//���̵�-����Ʈ
	List<GuideTourVO> mainGuideList(int pageNo);
		
	//���̵�-��ü��������
	int mainGuidePage(GuideTourVO vo);
	
	//���̵�-�˻�-����Ʈ
	public List<GuideTourVO> mainguidelistser(int pageNo, GuideTourVO vo, String searchtext);
			
	//���̵�-�˻�-��������
	public int mainGuidePageser(GuideTourVO vo, String searchtext);

	//����-��-(����)
	LodgeVO mainlodgedetail(LodgeVO vo);
	
	//����-���� ��������-����Ʈ(����)
	List<RoomVO> mainroomlist(LodgeVO vo);
	
	//����-��������-������-����Ʈ
	public List<ProductRevboVO> productRevboList(int lodIdNum, int pageNo);
			
	//����-��������-������-��ü��������
	int productRevboPage(int lodIdNum);
	
	//���̵��������-�˻�-����Ʈ(����)
	GuideTourVO mainguidedetail(String programName);
	
	//���̵�-��������-������-����Ʈ
	public List<ProductRevboVO> productRevboListga(String programName, int pageNo);
				
	//���̵�-��������-������-��ü��������
	int productRevboPagega(String programName);
	
	//�����Խ���-����Ʈ
	List<ComBoardVO> freeBoardList(int pageNo);
			
	//�����Խ���-��ü��������
	int freeBoardList(ComBoardVO vo);
	
	//�����Խ���-�׷��ȣ�޾ƿ���
	int mainGetFrGroupId();

	//�����Խ���-�۾���
	int insertComBoard(ComBoardVO vo);
	
	//�����Խ���-�ۺ���(�� ���� �۵�)
	ComBoardVO mainfreeBoardView(int articleId);
	
	//�����Խ���-�� ���� ��ȸ�� +1 ����
	void updateFreeBoardCount(int articleId);
	
	//�����Խ���-�ۼ���
	void mainfreeBoardUpdate(ComBoardVO vo);
	
	//�����Խ���-�ۻ���
	void mainfreeBoarddelete(ComBoardVO vo);
	
	//����-��¥-����Ʈ
	public List<ReservationVO> mainlosevDate(ReservationVO vo);

	//���Ǽ� üũ
	public int idCheck_Login(String checkInDate2, String checkOut2, int pId);
}
