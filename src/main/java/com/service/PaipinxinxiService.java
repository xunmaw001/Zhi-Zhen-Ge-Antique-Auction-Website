package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PaipinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PaipinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PaipinxinxiView;


/**
 * 拍品信息
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaipinxinxiService extends IService<PaipinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PaipinxinxiVO> selectListVO(Wrapper<PaipinxinxiEntity> wrapper);
   	
   	PaipinxinxiVO selectVO(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
   	
   	List<PaipinxinxiView> selectListView(Wrapper<PaipinxinxiEntity> wrapper);
   	
   	PaipinxinxiView selectView(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PaipinxinxiEntity> wrapper);
   	
}

