package com.szc.common.generic;

import java.util.List;

import com.szc.common.orm.mysql.Page;

/**
 * 所有自定义Dao的顶级接口, 封装常用的增删查改操作,
 * 可以通过Mybatis Generator Maven 插件自动生成Dao,
 * 也可以手动编码,然后继承GenericDao 即可.
 * <p/>
 * Model : 代表数据库中的表 映射的Java对象类型
 * PK :代表对象的主键类型
 *
 * @author mazhai
 * @since 2014年6月9日 下午6:14:06
 */
public interface GenericDao<Model, ModelExample, PK> {
	
    /**
     * 插入对象
     *
     * @param model 对象
     */
    int insertSelective(Model model);

    /**
     * 更新对象
     *
     * @param model 对象
     */
    int updateByPrimaryKeySelective(Model model);

    /**
     * 通过主键, 删除对象
     *
     * @param id 主键
     */
    int deleteByPrimaryKey(PK id);

    /**
     * 通过主键, 查询对象
     *
     * @param id 主键
     * @return
     */
    Model selectByPrimaryKey(PK id);
    
    /**
     * 按条件查询
     * @param modelExample
     * @return
     */
    List<Model> selectByExample(ModelExample modelExample);

    /**
     * 分页查询
     * @param modelExample
     * @param page
     * @return
     */
    List<Model> selectByExample(ModelExample modelExample, Page<Model> page);
}
