package cn.com.codingce.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

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
@TableName("ze_question_category")
@ApiModel(value="QuestionCategory对象", description="")
public class QuestionCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "自增id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "问题分类")
    private String category;


}
