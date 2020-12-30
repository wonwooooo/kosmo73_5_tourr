package com.zzTourr.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class RoomVO {

	private int productId;
	private int lodgeId;
	private String roomName;
	private String roomCont;
	private int peakPrice;
	private int offPrice;
	private int lodCount;
	private String ip;
	private String imgName;
	private long imgSize;
	private int maxPeople;
	
	//*************************************************

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
		}
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public int getLodgeId() {
			return lodgeId;
		}
		public void setLodgeId(int lodgeId) {
			this.lodgeId = lodgeId;
		}
		public String getRoomName() {
			return roomName;
		}
		public void setRoomName(String roomName) {
			this.roomName = roomName;
		}
		public String getRoomCont() {
			return roomCont;
		}
		public void setRoomCont(String roomCont) {
			this.roomCont = roomCont;
		}
		public int getPeakPrice() {
			return peakPrice;
		}
		public void setPeakPrice(int peakPrice) {
			this.peakPrice = peakPrice;
		}
		public int getOffPrice() {
			return offPrice;
		}
		public void setOffPrice(int offPrice) {
			this.offPrice = offPrice;
		}
		public int getLodCount() {
			return lodCount;
		}
		public void setLodCount(int lodCount) {
			this.lodCount = lodCount;
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
		public int getMaxPeople() {
			return maxPeople;
		}
		public void setMaxPeople(int maxPeople) {
			this.maxPeople = maxPeople;
		}

}
