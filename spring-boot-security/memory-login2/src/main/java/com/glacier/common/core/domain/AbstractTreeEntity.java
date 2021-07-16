package com.glacier.common.core.domain;

import java.util.List;

/**
 * 树形基类
 *
 * @author glacier
 * @version 1.0
 * date 2020-08-10 17:40
 */
public abstract class AbstractTreeEntity<T extends AbstractTreeEntity<T>> extends AbstractDataEntity {
    private static final long serialVersionUID = 5789176651104516887L;
    /**
     * 名称
     */
    protected String name;
    /**
     * 父级id 顶级id默认为空
     */
    protected String parentId;
    /**
     * 排序号
     */
    protected Integer orderNum;
    /**
     * 层级
     */
    protected Integer grade;
    /**
     * 子类
     */
    protected List<T> children;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParentId() {
        return this.parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public Integer getOrderNum() {
        return this.orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Integer getGrade() {
        return this.grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public List<T> getChildren() {
        return this.children;
    }

    public void setChildren(List<T> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "AbstractTreeEntity{" +
                "name='" + this.name + '\'' +
                ", parentId='" + this.parentId + '\'' +
                ", orderNum=" + this.orderNum +
                ", grade=" + this.grade +
                ", children=" + this.children +
                ", id='" + this.id + '\'' +
                '}';
    }
}
