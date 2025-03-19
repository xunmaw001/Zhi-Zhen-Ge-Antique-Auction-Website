package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PaimaijiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PaimaijiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PaimaijiaView;


/**
 * 拍卖家
 *
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaimaijiaService extends IService<PaimaijiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PaimaijiaVO> selectListVO(Wrapper<PaimaijiaEntity> wrapper);
   	
   	PaimaijiaVO selectVO(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
   	
   	List<PaimaijiaView> selectListView(Wrapper<PaimaijiaEntity> wrapper);
   	
   	PaimaijiaView selectView(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PaimaijiaEntity> wrapper);
   	
}

