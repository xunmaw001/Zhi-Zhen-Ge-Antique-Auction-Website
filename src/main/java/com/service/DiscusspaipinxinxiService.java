package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusspaipinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusspaipinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusspaipinxinxiView;


/**
 * 拍品信息评论表
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:46
 */
public interface DiscusspaipinxinxiService extends IService<DiscusspaipinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusspaipinxinxiVO> selectListVO(Wrapper<DiscusspaipinxinxiEntity> wrapper);
   	
   	DiscusspaipinxinxiVO selectVO(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
   	
   	List<DiscusspaipinxinxiView> selectListView(Wrapper<DiscusspaipinxinxiEntity> wrapper);
   	
   	DiscusspaipinxinxiView selectView(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusspaipinxinxiEntity> wrapper);
   	
}

