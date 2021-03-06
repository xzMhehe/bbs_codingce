package cn.com.codingce.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 *  实体类
 * </p>
 *
 * @since 2021-01-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("ze_download")
@ApiModel(value="Download对象", description="")
public class Download implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "资源名")
    private String dname;

    @ApiModelProperty(value = "资源链接")
    private String ddesc;

    @ApiModelProperty(value = "提取码")
    private String dcode;


}
