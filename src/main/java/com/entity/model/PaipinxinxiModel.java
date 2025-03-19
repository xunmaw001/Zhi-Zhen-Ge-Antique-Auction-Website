package com.entity.model;

import com.entity.PaipinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 拍品信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public class PaipinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 拍品编号
	 */
	
	private String paipinbianhao;
		
	/**
	 * 拍品名称
	 */
	
	private String paipinmingcheng;
		
	/**
	 * 宝贝简介
	 */
	
	private String baobeijianjie;
		
	/**
	 * 开拍时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kaipaishijian;
		
	/**
	 * 结束时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jieshushijian;
		
	/**
	 * 起拍价
	 */
	
	private Integer qipaijia;
		
	/**
	 * 拍品状态
	 */
	
	private String paipinzhuangtai;
		
	/**
	 * 拍品照片
	 */
	
	private String paipinzhaopian;
		
	/**
	 * 拍卖号
	 */
	
	private String paimaihao;
		
	/**
	 * 拍卖人
	 */
	
	private String paimairen;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：拍品编号
	 */
	 
	public void setPaipinbianhao(String paipinbianhao) {
		this.paipinbianhao = paipinbianhao;
	}
	
	/**
	 * 获取：拍品编号
	 */
	public String getPaipinbianhao() {
		return paipinbianhao;
	}
				
	
	/**
	 * 设置：拍品名称
	 */
	 
	public void setPaipinmingcheng(String paipinmingcheng) {
		this.paipinmingcheng = paipinmingcheng;
	}
	
	/**
	 * 获取：拍品名称
	 */
	public String getPaipinmingcheng() {
		return paipinmingcheng;
	}
				
	
	/**
	 * 设置：宝贝简介
	 */
	 
	public void setBaobeijianjie(String baobeijianjie) {
		this.baobeijianjie = baobeijianjie;
	}
	
	/**
	 * 获取：宝贝简介
	 */
	public String getBaobeijianjie() {
		return baobeijianjie;
	}
				
	
	/**
	 * 设置：开拍时间
	 */
	 
	public void setKaipaishijian(Date kaipaishijian) {
		this.kaipaishijian = kaipaishijian;
	}
	
	/**
	 * 获取：开拍时间
	 */
	public Date getKaipaishijian() {
		return kaipaishijian;
	}
				
	
	/**
	 * 设置：结束时间
	 */
	 
	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}
	
	/**
	 * 获取：结束时间
	 */
	public Date getJieshushijian() {
		return jieshushijian;
	}
				
	
	/**
	 * 设置：起拍价
	 */
	 
	public void setQipaijia(Integer qipaijia) {
		this.qipaijia = qipaijia;
	}
	
	/**
	 * 获取：起拍价
	 */
	public Integer getQipaijia() {
		return qipaijia;
	}
				
	
	/**
	 * 设置：拍品状态
	 */
	 
	public void setPaipinzhuangtai(String paipinzhuangtai) {
		this.paipinzhuangtai = paipinzhuangtai;
	}
	
	/**
	 * 获取：拍品状态
	 */
	public String getPaipinzhuangtai() {
		return paipinzhuangtai;
	}
				
	
	/**
	 * 设置：拍品照片
	 */
	 
	public void setPaipinzhaopian(String paipinzhaopian) {
		this.paipinzhaopian = paipinzhaopian;
	}
	
	/**
	 * 获取：拍品照片
	 */
	public String getPaipinzhaopian() {
		return paipinzhaopian;
	}
				
	
	/**
	 * 设置：拍卖号
	 */
	 
	public void setPaimaihao(String paimaihao) {
		this.paimaihao = paimaihao;
	}
	
	/**
	 * 获取：拍卖号
	 */
	public String getPaimaihao() {
		return paimaihao;
	}
				
	
	/**
	 * 设置：拍卖人
	 */
	 
	public void setPaimairen(String paimairen) {
		this.paimairen = paimairen;
	}
	
	/**
	 * 获取：拍卖人
	 */
	public String getPaimairen() {
		return paimairen;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
