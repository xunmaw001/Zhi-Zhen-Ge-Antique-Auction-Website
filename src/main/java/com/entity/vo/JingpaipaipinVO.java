package com.entity.vo;

import com.entity.JingpaipaipinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 竞拍拍品
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public class JingpaipaipinVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 拍品名称
	 */
	
	private String paipinmingcheng;
		
	/**
	 * 起拍价
	 */
	
	private String qipaijia;
		
	/**
	 * 拍卖号
	 */
	
	private String paimaihao;
		
	/**
	 * 拍卖人
	 */
	
	private String paimairen;
		
	/**
	 * 账号
	 */
	
	private String zhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 出价
	 */
	
	private String chujia;
		
	/**
	 * 竞拍时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jingpaishijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
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
	 * 设置：起拍价
	 */
	 
	public void setQipaijia(String qipaijia) {
		this.qipaijia = qipaijia;
	}
	
	/**
	 * 获取：起拍价
	 */
	public String getQipaijia() {
		return qipaijia;
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
	 * 设置：账号
	 */
	 
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：出价
	 */
	 
	public void setChujia(String chujia) {
		this.chujia = chujia;
	}
	
	/**
	 * 获取：出价
	 */
	public String getChujia() {
		return chujia;
	}
				
	
	/**
	 * 设置：竞拍时间
	 */
	 
	public void setJingpaishijian(Date jingpaishijian) {
		this.jingpaishijian = jingpaishijian;
	}
	
	/**
	 * 获取：竞拍时间
	 */
	public Date getJingpaishijian() {
		return jingpaishijian;
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
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
