package com.szc.common.generic;

import java.util.List;

import com.szc.common.orm.mysql.Page;

/**
 * 所有自定义Service的顶级接口,封装常用的增删查改操作
 * <p/>
 * Model : 代表数据库中的表 映射的Java对象类型
 * PK :代表对象的主键类型
 *
 * @author mazhai
 * @since 2014年6月9日 下午6:14:06
 */
public interface GenericService<Model, ModelExample, PK> {

    /**
     * 插入对象
     *
     * @param model 对象
     */
    int insert(Model model);

    /**
     * 更新对象
     *
     * @param model 对象
     */
    int update(Model model);

    /**
     * 通过主键, 删除对象
     *
     * @param id 主键
     */
    int delete(PK id);

    /**
     * 通过主键, 查询对象
     *
     * @param id 主键
     * @return model 对象
     */
    Model selectByPrimaryKey(PK id);

    /**
     * 按条件查询列表
     * @param modelExample
     * @return
     */
    List<Model> selectByExample(ModelExample modelExample);
    
    /**
     * 按条件分页查询
     * @param modelExample
     * @param page
     * @return
     */
    List<Model> selectByExample(ModelExample modelExample, Page<Model> page);

}
