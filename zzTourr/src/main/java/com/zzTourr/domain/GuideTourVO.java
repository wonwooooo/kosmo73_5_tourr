package com.zzTourr.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class GuideTourVO {
	private int productId;
	private String guiCate;
	private String guiName;
	private String programName;
	private String guiTel;
	private String guiArea;
	private String guiContent;
	private String guiPrice;
	private String guiCount;
	private String guiTime;
	private String cusCount;
	private Date guiDate;
	private String ip;
	private String imgName;
	private long imgSize;
	
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.imgName = file.getOriginalFilename();
			this.imgSize = file.getSize();
			//C:\\Users\\kosmo_08\\git\\kosmo73_5_tourr\\zzTourr\\src\\main\\webapp\\resources\\hotelImgs
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\kosmo_08\\git\\kosmo73_5_tourr\\zzTourr\\src\\main\\webapp\\resources\\hotelImgs"+imgName);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}//end of setfile
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getGuiCate() {
		return guiCate;
	}
	public void setGuiCate(String guiCate) {
		this.guiCate = guiCate;
	}
	public String getGuiName() {
		return guiName;
	}
	public void setGuiName(String guiName) {
		this.guiName = guiName;
	}
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}
	public String getGuiTel() {
		return guiTel;
	}
	public void setGuiTel(String guiTel) {
		this.guiTel = guiTel;
	}
	public String getGuiArea() {
		return guiArea;
	}
	public void setGuiArea(String guiArea) {
		this.guiArea = guiArea;
	}
	public String getGuiContent() {
		return guiContent;
	}
	public void setGuiContent(String guiContent) {
		this.guiContent = guiContent;
	}
	public String getGuiPrice() {
		return guiPrice;
	}
	public void setGuiPrice(String guiPrice) {
		this.guiPrice = guiPrice;
	}
	public String getGuiCount() {
		return guiCount;
	}
	public void setGuiCount(String guiCount) {
		this.guiCount = guiCount;
	}
	public String getGuiTime() {
		return guiTime;
	}
	public void setGuiTime(String guiTime) {
		this.guiTime = guiTime;
	}
	public String getCusCount() {
		return cusCount;
	}
	public void setCusCount(String cusCount) {
		this.cusCount = cusCount;
	}
	public Date getGuiDate() {
		return guiDate;
	}
	public void setGuiDate(Date guiDate) {
		this.guiDate = guiDate;
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
