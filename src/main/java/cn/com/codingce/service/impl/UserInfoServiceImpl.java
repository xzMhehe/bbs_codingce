package cn.com.codingce.service.impl;

import cn.com.codingce.pojo.UserInfo;
import cn.com.codingce.mapper.UserInfoMapper;
import cn.com.codingce.service.UserInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xzMa
 * @since 2020-06-29
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {

}
