package com.entity.view;

import com.entity.JingpaipaipinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 竞拍拍品
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
@TableName("jingpaipaipin")
public class JingpaipaipinView  extends JingpaipaipinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JingpaipaipinView(){
	}
 
 	public JingpaipaipinView(JingpaipaipinEntity jingpaipaipinEntity){
 	try {
			BeanUtils.copyProperties(this, jingpaipaipinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
