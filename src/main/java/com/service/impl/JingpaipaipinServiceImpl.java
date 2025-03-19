package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JingpaipaipinDao;
import com.entity.JingpaipaipinEntity;
import com.service.JingpaipaipinService;
import com.entity.vo.JingpaipaipinVO;
import com.entity.view.JingpaipaipinView;

@Service("jingpaipaipinService")
public class JingpaipaipinServiceImpl extends ServiceImpl<JingpaipaipinDao, JingpaipaipinEntity> implements JingpaipaipinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingpaipaipinEntity> page = this.selectPage(
                new Query<JingpaipaipinEntity>(params).getPage(),
                new EntityWrapper<JingpaipaipinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingpaipaipinEntity> wrapper) {
		  Page<JingpaipaipinView> page =new Query<JingpaipaipinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingpaipaipinVO> selectListVO(Wrapper<JingpaipaipinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingpaipaipinVO selectVO(Wrapper<JingpaipaipinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingpaipaipinView> selectListView(Wrapper<JingpaipaipinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingpaipaipinView selectView(Wrapper<JingpaipaipinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
