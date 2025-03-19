package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PaipinfenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PaipinfenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PaipinfenleiView;


/**
 * 拍品分类
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaipinfenleiService extends IService<PaipinfenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PaipinfenleiVO> selectListVO(Wrapper<PaipinfenleiEntity> wrapper);
   	
   	PaipinfenleiVO selectVO(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
   	
   	List<PaipinfenleiView> selectListView(Wrapper<PaipinfenleiEntity> wrapper);
   	
   	PaipinfenleiView selectView(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PaipinfenleiEntity> wrapper);
   	
}

