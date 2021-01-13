package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.Question;
import cn.com.codingce.mapper.QuestionMapper;
import cn.com.codingce.service.QuestionService;
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
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService {

}
