package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.Say;
import cn.com.codingce.mapper.SayMapper;
import cn.com.codingce.service.SayService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xzMa
 * @since 2020-07-01
 */
@Service
public class SayServiceImpl extends ServiceImpl<SayMapper, Say> implements SayService {

}
