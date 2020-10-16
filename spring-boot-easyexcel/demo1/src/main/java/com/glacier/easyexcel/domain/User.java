package com.glacier.easyexcel.domain;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.NumberFormat;
import com.glacier.easyexcel.converter.LocalDateConverter;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:01
 */
@Data
@ExcelIgnoreUnannotated
public class User implements Serializable {
    private static final long serialVersionUID = -5948191351150509559L;
    private String id;

    @ExcelProperty(value = {"用户信息", "用户名"}, index = 0)
    private String username;

    private String password;

    @ExcelProperty(value = {"用户信息", "昵称"}, index = 1)
    private String nickname;

    @ExcelProperty(value = {"用户信息", "出生日期"}, index = 4, converter = LocalDateConverter.class)
    private LocalDate birthday;

    @ExcelProperty(value = {"用户信息", "身份证号"}, index = 3)
    private String idCard;

    @ExcelProperty(value = {"用户信息", "性别"}, index = 2)
    private String sex;

    @ExcelProperty(value = {"用户信息", "岗位"}, index = 5)
    private String duty;

    @ExcelProperty(value = {"用户信息", "入职日期"}, index = 6, converter = LocalDateConverter.class)
    private LocalDate joinDate;

    @NumberFormat("#.##%")
    @ExcelProperty(value = {"用户信息", "数字标题"}, index = 7)
    private Double doubleData;
}
