package unicon.net;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class CookieController {

    @RequestMapping("/setCookies")
    public String setCookies(@RequestParam(value="ticket") String ticket) {
        return cookies();
    }

    private String cookies(){
        return "Hola!";
    }


}
