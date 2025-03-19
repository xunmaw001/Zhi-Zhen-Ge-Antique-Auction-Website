package com.dao;

import com.entity.PaipinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PaipinxinxiVO;
import com.entity.view.PaipinxinxiView;


/**
 * 拍品信息
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaipinxinxiDao extends BaseMapper<PaipinxinxiEntity> {
	
	List<PaipinxinxiVO> selectListVO(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
	
	PaipinxinxiVO selectVO(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
	
	List<PaipinxinxiView> selectListView(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);

	List<PaipinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
	
	PaipinxinxiView selectView(@Param("ew") Wrapper<PaipinxinxiEntity> wrapper);
	
}
