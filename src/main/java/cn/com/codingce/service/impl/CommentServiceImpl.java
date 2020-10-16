package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.Comment;
import cn.com.codingce.mapper.CommentMapper;
import cn.com.codingce.service.CommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xzMa
 * @since 2020-06-30
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

}
