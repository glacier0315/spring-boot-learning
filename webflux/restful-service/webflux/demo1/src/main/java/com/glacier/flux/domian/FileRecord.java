package com.glacier.flux.domian;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;
import org.springframework.data.annotation.Id;

import java.io.Serial;
import java.io.Serializable;
import java.util.List;

/**
 * date 2024-02-08 13:13
 *
 * @author glacier
 * @version 1.0
 */
@Data
@Accessors(chain = true)
@EqualsAndHashCode
@ToString
@NoArgsConstructor
public class FileRecord implements Serializable {

    @Serial
    private static final long serialVersionUID = -1892430424624502545L;
    @Id
    private Long id;
    private List<String> filenames;
}
