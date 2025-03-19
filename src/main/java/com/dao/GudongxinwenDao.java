package com.dao;

import com.entity.GudongxinwenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GudongxinwenVO;
import com.entity.view.GudongxinwenView;


/**
 * 古董新闻
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface GudongxinwenDao extends BaseMapper<GudongxinwenEntity> {
	
	List<GudongxinwenVO> selectListVO(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
	
	GudongxinwenVO selectVO(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
	
	List<GudongxinwenView> selectListView(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);

	List<GudongxinwenView> selectListView(Pagination page,@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
	
	GudongxinwenView selectView(@Param("ew") Wrapper<GudongxinwenEntity> wrapper);
	
}
