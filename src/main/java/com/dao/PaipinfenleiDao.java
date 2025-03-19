package com.dao;

import com.entity.PaipinfenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PaipinfenleiVO;
import com.entity.view.PaipinfenleiView;


/**
 * 拍品分类
 * 
 * @author 
 * @email 
 * @date 2021-03-27 09:08:45
 */
public interface PaipinfenleiDao extends BaseMapper<PaipinfenleiEntity> {
	
	List<PaipinfenleiVO> selectListVO(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
	
	PaipinfenleiVO selectVO(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
	
	List<PaipinfenleiView> selectListView(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);

	List<PaipinfenleiView> selectListView(Pagination page,@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
	
	PaipinfenleiView selectView(@Param("ew") Wrapper<PaipinfenleiEntity> wrapper);
	
}
