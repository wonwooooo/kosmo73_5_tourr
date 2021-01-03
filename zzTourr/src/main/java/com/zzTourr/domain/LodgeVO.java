package com.zzTourr.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class LodgeVO {
	private String lodTel;
	private int lodId;
	private String lodName;
	private String lodAddr;
	private String lodCont;
	private String lodConven;
	private String lodCate;
	private int lodCount;
	private Date peakSumStart;
	private Date peakSumExit;
	private Date peakWinStart;
	private Date peakWinExit;
	private String ip;
	private String imgName;
	private long imgSize;
	
	//*************************************************

	MultipartFile file;	// write.jsp�� ����÷�ν� name="file"�� ������ ������
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// ���ε� ���� ����
		if(! file.isEmpty()){
			this.imgName = file.getOriginalFilename();
			this.imgSize = file.getSize();
			
			System.out.println("imgName:"+imgName);
			
			//C:\\Users\\kosmo_08\\git\\kosmo73_5_tourr\\zzTourr\\src\\main\\webapp\\resources\\hotelImgs
			//***********************************************
			// �ش� ��η� ����
			File f = new File("C:\\Users\\kosmo_08\\git\\kosmo73_5_tourr\\zzTourr\\src\\main\\webapp\\resources\\hotelUpload\\"+imgName);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	public String getLodTel() {
		return lodTel;
	}
	public void setLodTel(String lodTel) {
		this.lodTel = lodTel;
	}
	public int getLodId() {
		return lodId;
	}
	public void setLodId(int lodId) {
		this.lodId = lodId;
	}
	public String getLodName() {
		return lodName;
	}
	public void setLodName(String lodName) {
		this.lodName = lodName;
	}
	public String getLodAddr() {
		return lodAddr;
	}
	public void setLodAddr(String lodAddr) {
		this.lodAddr = lodAddr;
	}
	public String getLodCont() {
		return lodCont;
	}
	public void setLodCont(String lodCont) {
		this.lodCont = lodCont;
	}
	public String getLodConven() {
		return lodConven;
	}
	public void setLodConven(String lodConven) {
		this.lodConven = lodConven;
	}
	public String getLodCate() {
		return lodCate;
	}
	public void setLodCate(String lodCate) {
		this.lodCate = lodCate;
	}
	public int getLodCount() {
		return lodCount;
	}
	public void setLodCount(int lodCount) {
		this.lodCount = lodCount;
	}
	public Date getPeakSumStart() {
		return peakSumStart;
	}
	public void setPeakSumStart(Date peakSumStart) {
		this.peakSumStart = peakSumStart;
	}
	public Date getPeakSumExit() {
		return peakSumExit;
	}
	public void setPeakSumExit(Date peakSumExit) {
		this.peakSumExit = peakSumExit;
	}
	public Date getPeakWinStart() {
		return peakWinStart;
	}
	public void setPeakWinStart(Date peakWinStart) {
		this.peakWinStart = peakWinStart;
	}
	public Date getPeakWinExit() {
		return peakWinExit;
	}
	public void setPeakWinExit(Date peakWinExit) {
		this.peakWinExit = peakWinExit;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public long getImgSize() {
		return imgSize;
	}
	public void setImgSize(long imgSize) {
		this.imgSize = imgSize;
	}

	
}
