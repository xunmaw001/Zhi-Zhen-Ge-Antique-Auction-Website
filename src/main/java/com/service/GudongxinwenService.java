package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GudongxinwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GudongxinwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GudongxinwenView;


/**
 * 古董新闻
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface GudongxinwenService extends IService<GudongxinwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GudongxinwenVO> selectListVO(Wrapper<GudongxinwenEntity> wrapper);
   	
   	GudongxinwenVO selectVO(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
   	
   	List<GudongxinwenView> selectListView(Wrapper<GudongxinwenEntity> wrapper);
   	
   	GudongxinwenView selectView(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GudongxinwenEntity> wrapper);
   	
}

