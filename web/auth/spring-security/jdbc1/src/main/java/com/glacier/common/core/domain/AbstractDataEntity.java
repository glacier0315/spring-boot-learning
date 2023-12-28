package com.glacier.common.core.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.glacier.common.core.utils.IdGen;

import java.time.LocalDateTime;

/**
 * @author glacier
 * @version 1.0
 * date 2020-08-10 17:26
 */
public abstract class AbstractDataEntity extends AbstractBaseEntity {
    private static final long serialVersionUID = -6067130213584450184L;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private LocalDateTime createDate;
    /**
     * 更新人
     */
    private String updateBy;
    /**
     * 更新时间
     */
    private LocalDateTime updateDate;
    /**
     * 删除标记 0 正常 （默认） 1 删除
     */
    @JsonIgnore
    private String delFlag = "0";

    @Override
    public void preInsert() {
        // 设置新的id
        this.setId(IdGen.uuid());
        // 设置插入时间
        this.setCreateDate(LocalDateTime.now());
        // 设置操作人
    }

    @Override
    public void preUpdate() {
        // 设置更新时间
        this.setUpdateDate(LocalDateTime.now());
        // 设置操作人
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public LocalDateTime getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(LocalDateTime createDate) {
        this.createDate = createDate;
    }

    public String getUpdateBy() {
        return this.updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public LocalDateTime getUpdateDate() {
        return this.updateDate;
    }

    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    public String getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "AbstractDataEntity{" +
                "createBy='" + this.createBy + '\'' +
                ", createDate=" + this.createDate +
                ", updateBy='" + this.updateBy + '\'' +
                ", updateDate=" + this.updateDate +
                ", delFlag='" + this.delFlag + '\'' +
                ", id='" + this.id + '\'' +
                '}';
    }
}
