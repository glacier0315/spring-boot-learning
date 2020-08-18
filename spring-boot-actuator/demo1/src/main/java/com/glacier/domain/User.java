package com.glacier.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/13 0013</pre>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class User implements Serializable {
    private static final long serialVersionUID = -3311756751335792019L;
    private String id;
    private String userName;
    private String passWord;
    private Integer sex;
}
