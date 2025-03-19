package com.dao;

import com.entity.PaimaijiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PaimaijiaVO;
import com.entity.view.PaimaijiaView;


/**
 * 拍卖家
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaimaijiaDao extends BaseMapper<PaimaijiaEntity> {
	
	List<PaimaijiaVO> selectListVO(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
	
	PaimaijiaVO selectVO(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
	
	List<PaimaijiaView> selectListView(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);

	List<PaimaijiaView> selectListView(Pagination page,@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
	
	PaimaijiaView selectView(@Param("ew") Wrapper<PaimaijiaEntity> wrapper);
	
}
