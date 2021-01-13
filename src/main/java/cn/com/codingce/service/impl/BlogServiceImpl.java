package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.Blog;
import cn.com.codingce.mapper.BlogMapper;
import cn.com.codingce.service.BlogService;
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
public class BlogServiceImpl extends ServiceImpl<BlogMapper, Blog> implements BlogService {

}
