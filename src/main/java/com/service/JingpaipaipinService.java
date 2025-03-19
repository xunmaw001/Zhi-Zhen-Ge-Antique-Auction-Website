package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingpaipaipinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingpaipaipinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingpaipaipinView;


/**
 * 竞拍拍品
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface JingpaipaipinService extends IService<JingpaipaipinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingpaipaipinVO> selectListVO(Wrapper<JingpaipaipinEntity> wrapper);
   	
   	JingpaipaipinVO selectVO(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
   	
   	List<JingpaipaipinView> selectListView(Wrapper<JingpaipaipinEntity> wrapper);
   	
   	JingpaipaipinView selectView(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingpaipaipinEntity> wrapper);
   	
}

