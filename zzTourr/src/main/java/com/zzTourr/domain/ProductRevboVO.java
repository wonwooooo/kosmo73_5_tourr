package com.zzTourr.domain;

import java.util.Date;

public class ProductRevboVO {
   private int prorevId;
   private int productId;
   private int resId;
   private String userId;
   private String userName;
   private Date revDate;
   private String revContent;
   private int grade;
   
   public int getProrevId() {
      return prorevId;
   }
   public void setProrevId(int prorevId) {
      this.prorevId = prorevId;
   }
   public int getProductId() {
      return productId;
   }
   public void setProductId(int productId) {
      this.productId = productId;
   }
   public int getResId() {
      return resId;
   }
   public void setResId(int resId) {
      this.resId = resId;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public String getUserName() {
      return userName;
   }
   public void setUserName(String userName) {
      this.userName = userName;
   }
   public Date getRevDate() {
      return revDate;
   }
   public void setRevDate(Date revDate) {
      this.revDate = revDate;
   }
   public String getRevContent() {
      return revContent;
   }
   public void setRevContent(String revContent) {
      this.revContent = revContent;
   }
   public int getGrade() {
      return grade;
   }
   public void setGrade(int grade) {
      this.grade = grade;
   }
   
   
}