package com.glacier.modules.sys.domain;

import com.glacier.core.domain.IdEntity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

/**
 * 角色
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Entity
@Table(name = "t_s_role")
public class Role extends IdEntity {
	
	/**
	 *
	 */
	private static final long serialVersionUID = 2964821693102548580L;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 编码
	 */
	private String code;
	/**
	 * 备注
	 */
	private String remark;
	
	@Column(name = "name", length = 50)
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

    @Column(name = "code", length = 20)
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Column(name = "remark", length = 500)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    @Override
    public String toString() {
        return "Role{" +
                "name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", remark='" + remark + '\'' +
                ", id='" + id + '\'' +
                '}';
    }
}
