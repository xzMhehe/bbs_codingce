package cn.com.codingce.controller;


import cn.com.codingce.mapper.DownloadMapper;
import cn.com.codingce.pojo.Download;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2020-07-08
 */
@Controller
public class DownloadController {

    @Autowired
    DownloadMapper downloadMapper;

    @GetMapping({"/download"})
    public String download(Model model){
        List<Download> downloadList = downloadMapper.selectList(null);
        model.addAttribute("downloadList",downloadList);
        return "page/download";
    }

}

