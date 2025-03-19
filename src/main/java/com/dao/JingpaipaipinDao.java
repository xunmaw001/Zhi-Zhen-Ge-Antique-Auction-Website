package com.dao;

import com.entity.JingpaipaipinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingpaipaipinVO;
import com.entity.view.JingpaipaipinView;


/**
 * 竞拍拍品
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface JingpaipaipinDao extends BaseMapper<JingpaipaipinEntity> {
	
	List<JingpaipaipinVO> selectListVO(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
	
	JingpaipaipinVO selectVO(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
	
	List<JingpaipaipinView> selectListView(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);

	List<JingpaipaipinView> selectListView(Pagination page,@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
	
	JingpaipaipinView selectView(@Param("ew") Wrapper<JingpaipaipinEntity> wrapper);
	
}
