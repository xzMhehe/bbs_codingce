package cn.com.codingce.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import cn.com.codingce.pojo.Comment;
import cn.com.codingce.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2021-01-01
 */
@Controller
public class CommentController {

    @Autowired
    CommentService commentService;

    /**
     * 删除评论
     * @param uid
     * @param cid
     * @return
     */
    @GetMapping("/user/comment/delete/{uid}/{cid}")
    public String deleteComment(@PathVariable String uid,@PathVariable String cid){
        commentService.remove(new QueryWrapper<Comment>().eq("comment_id", cid));
        return "redirect:/user/comment/"+uid+"/1/10";
    }

}

