package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.Comment;
import cn.com.codingce.mapper.CommentMapper;
import cn.com.codingce.service.CommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2021-01-01
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

}
