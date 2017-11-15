package priv.jesse.mall.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/index")
    public String toIndex(){
        return "admin/index";
    }

}
