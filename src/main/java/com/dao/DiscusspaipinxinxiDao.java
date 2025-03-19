package com.dao;

import com.entity.DiscusspaipinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusspaipinxinxiVO;
import com.entity.view.DiscusspaipinxinxiView;


/**
 * 拍品信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:46
 */
public interface DiscusspaipinxinxiDao extends BaseMapper<DiscusspaipinxinxiEntity> {
	
	List<DiscusspaipinxinxiVO> selectListVO(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
	
	DiscusspaipinxinxiVO selectVO(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
	
	List<DiscusspaipinxinxiView> selectListView(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);

	List<DiscusspaipinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
	
	DiscusspaipinxinxiView selectView(@Param("ew") Wrapper<DiscusspaipinxinxiEntity> wrapper);
	
}
