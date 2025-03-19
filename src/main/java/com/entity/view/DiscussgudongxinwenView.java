package com.entity.view;

import com.entity.DiscussgudongxinwenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 古董新闻评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-27 09:08:46
 */
@TableName("discussgudongxinwen")
public class DiscussgudongxinwenView  extends DiscussgudongxinwenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussgudongxinwenView(){
	}
 
 	public DiscussgudongxinwenView(DiscussgudongxinwenEntity discussgudongxinwenEntity){
 	try {
			BeanUtils.copyProperties(this, discussgudongxinwenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
