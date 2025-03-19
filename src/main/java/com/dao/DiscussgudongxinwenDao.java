package com.dao;

import com.entity.DiscussgudongxinwenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussgudongxinwenVO;
import com.entity.view.DiscussgudongxinwenView;


/**
 * 古董新闻评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:46
 */
public interface DiscussgudongxinwenDao extends BaseMapper<DiscussgudongxinwenEntity> {
	
	List<DiscussgudongxinwenVO> selectListVO(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
	
	DiscussgudongxinwenVO selectVO(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
	
	List<DiscussgudongxinwenView> selectListView(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);

	List<DiscussgudongxinwenView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
	
	DiscussgudongxinwenView selectView(@Param("ew") Wrapper<DiscussgudongxinwenEntity> wrapper);
	
}
