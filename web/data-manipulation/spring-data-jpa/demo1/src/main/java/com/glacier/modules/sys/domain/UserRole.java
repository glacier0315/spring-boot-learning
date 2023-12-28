package com.glacier.modules.sys.domain;

import com.glacier.core.domain.IdEntity;

import jakarta.persistence.*;


/**
 * 用户、角色关联
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Entity
@Table(name = "t_s_user_role")
public class UserRole extends IdEntity {

    /**
     *
     */
    private static final long serialVersionUID = -656793920307083490L;
    private User user;
    private Role Role;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "role_id")
    public Role getRole() {
        return Role;
    }

    public void setRole(Role role) {
        Role = role;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    @Override
    public String toString() {
        return "UserRole{" +
                "user=" + user +
                ", Role=" + Role +
                ", id='" + id + '\'' +
                '}';
    }
}
