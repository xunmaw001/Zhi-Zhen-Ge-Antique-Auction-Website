package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussgudongxinwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussgudongxinwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussgudongxinwenView;


/**
 * 古董新闻评论表
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:46
 */
public interface DiscussgudongxinwenService extends IService<DiscussgudongxinwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussgudongxinwenVO> selectListVO(Wrapper<DiscussgudongxinwenEntity> wrapper);
   	
   	DiscussgudongxinwenVO selectVO(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
   	
   	List<DiscussgudongxinwenView> selectListView(Wrapper<DiscussgudongxinwenEntity> wrapper);
   	
   	DiscussgudongxinwenView selectView(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussgudongxinwenEntity> wrapper);
   	
}

