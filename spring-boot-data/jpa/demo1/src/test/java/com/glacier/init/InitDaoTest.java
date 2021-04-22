package com.glacier.init;

import com.glacier.modules.sys.dao.ProvinceRepository;
import com.glacier.modules.sys.dao.RoleRepository;
import com.glacier.modules.sys.dao.UserRepository;
import com.glacier.modules.sys.dao.UserRoleRepository;
import com.glacier.modules.sys.domain.Province;
import com.glacier.modules.sys.domain.Role;
import com.glacier.modules.sys.domain.User;
import com.glacier.modules.sys.domain.UserRole;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.*;

@SpringBootTest
public class InitDaoTest {

    @Resource
    private UserRepository userRepository;
    @Resource
    private ProvinceRepository provinceRepository;
    @Resource
    private RoleRepository roleRepository;
    @Resource
    private UserRoleRepository userRoleRepository;

    @Test
    public void init() {
        // 初始化角色
        Random random = new Random();
        List<Role> roles = new ArrayList<>();
        Role role = null;
        char a = 'a';
        StringBuilder name = null;
        for (int i = 0; i < 10; i++) {
            name = new StringBuilder("r_");
            for (int j = 0; j < random.nextInt(10); j++) {
                a = (char) ('a' + random.nextInt(26));
                name.append(a);
            }
            name.append(i + 1);
            role = new Role();
            role.setCode(name.toString());
            role.setName(name.toString());
            role.setRemark(name.toString());

            roles.add(role);
        }

        this.roleRepository.saveAll(roles);

        // 初始化城市
        Date today = Calendar.getInstance().getTime();
        Province province = null;
        Province city = null;
        a = 'A';
        // 保存省份
        for (int i = 0; i < 60; i++) {
            name = new StringBuilder("P_");
            for (int j = 0; j < random.nextInt(10); j++) {
                a = (char) ('A' + random.nextInt(26));
                name.append(a);
            }
            province = new Province();
            province.setCode(name.toString() + i);
            province.setName(name.toString() + i);
            province.setType(0);
            province.setCreateTime(today);

            province = this.provinceRepository.save(province);
            System.out.println(province);

            // 保存城市
            for (int j = 0; j < 10; j++) {
                name = new StringBuilder("C_");
                for (int k = 0; k < random.nextInt(10); k++) {
                    a = (char) ('A' + random.nextInt(26));
                    name.append(a);
                }
                city = new Province();
                city.setCode(name.toString() + i);
                city.setName(name.toString() + i);
                city.setType(province.getType() + 1);
                city.setParentId(province.getId());
                city.setCreateTime(today);

                this.provinceRepository.save(city);
            }
        }

        // 初始化用户
        List<Province> citys = this.provinceRepository.findProvinceByType(1);
        List<User> users = new ArrayList<User>();
        User user = null;
        a = 'a';
        for (int i = 0; i < 500; i++) {
            name = new StringBuilder("n_");
            for (int j = 0; j < random.nextInt(10); j++) {
                a = (char) ('a' + random.nextInt(26));
                name.append(a);
            }
            name.append(i + 1);
            user = new User();
            user.setUserName(name.toString());
            user.setRealName(name.toString());
            user.setUserKey(name.toString());
            user.setPassWord(name.toString());
            user.setEmail(name + "@126.com");
            user.setStatus(random.nextInt(3));
            user.setAdress(name.toString());
            user.setCity(citys.get(random.nextInt(citys.size())));

            users.add(user);
        }

        this.userRepository.saveAll(users);

        // 初始化
        roles = this.roleRepository.findAll();
        users = this.userRepository.findAll();
        List<UserRole> userRoles = new ArrayList<UserRole>();
        UserRole userRole = null;
        for (int i = 0; i < users.size(); i++) {
            for (int j = 0; j < random.nextInt(2) + 1; j++) {
                userRole = new UserRole();
                userRole.setUser(users.get(i));
                userRole.setRole(roles.get(random.nextInt(roles.size())));

                userRoles.add(userRole);
            }
        }

        this.userRoleRepository.saveAll(userRoles);
    }

}
