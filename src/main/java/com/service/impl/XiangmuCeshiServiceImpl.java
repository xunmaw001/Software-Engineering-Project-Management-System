package com.service.impl;

import com.utils.StringUtil;
import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;

import com.dao.XiangmuCeshiDao;
import com.entity.XiangmuCeshiEntity;
import com.service.XiangmuCeshiService;
import com.entity.view.XiangmuCeshiView;

/**
 * 测试 服务实现类
 */
@Service("xiangmuCeshiService")
@Transactional
public class XiangmuCeshiServiceImpl extends ServiceImpl<XiangmuCeshiDao, XiangmuCeshiEntity> implements XiangmuCeshiService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<XiangmuCeshiView> page =new Query<XiangmuCeshiView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
