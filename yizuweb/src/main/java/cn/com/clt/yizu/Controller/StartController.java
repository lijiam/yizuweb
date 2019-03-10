package cn.com.clt.yizu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ccj
 * @description
 * @time 2018-03-24-20:09
 */
@Controller
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class StartController {
    @GetMapping(value = {"/","/index"})
    public String start() {
        return "/index.html";
    }
}
