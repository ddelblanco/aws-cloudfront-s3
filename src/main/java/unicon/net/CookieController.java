package unicon.net;


import com.amazonaws.services.cloudfront.CloudFrontCookieSigner.CookiesForCustomPolicy;
import com.amazonaws.services.cloudfront.util.SignerUtils;
import com.amazonaws.util.DateUtils;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.amazonaws.services.cloudfront.CloudFrontCookieSigner;
import com.amazonaws.services.cloudfront.util.SignerUtils.Protocol;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;


@Controller
public class CookieController {

    @RequestMapping("authorization/setCookies")
    public String setCookies(@RequestParam(value="ticket") String ticket,@RequestParam(value="url") String url, HttpServletResponse response) throws IOException{

        CookiesForCustomPolicy cookies = cookies();

        Cookie policy = new Cookie(cookies.getPolicy().getKey(),cookies.getPolicy().getValue());
        policy.setHttpOnly(true);
        policy.setPath("/");
        Cookie signature = new Cookie(cookies.getSignature().getKey(),cookies.getSignature().getValue());
        signature.setHttpOnly(true);
        signature.setPath("/");

        Cookie pairId = new Cookie(cookies.getKeyPairId().getKey(),cookies.getKeyPairId().getValue());
        pairId.setHttpOnly(true);
        pairId.setPath("/");

        response.addCookie(policy);
        response.addCookie(signature);
        response.addCookie(pairId);

        return "redirect:../" + url;
    }


    private CookiesForCustomPolicy cookies(){

        try {
            Protocol protocol = Protocol.http;
            String distributionDomain = "dw0u39u2qsvnb.cloudfront.net";
            File privateKeyFile = new ClassPathResource("pk.der").getFile();
            String resourcePath = "*";
            String keyPairId = "APKAJGK4YW2ASS6CZMVQ";
            Date activeFrom = DateUtils.parseISO8601Date("2016-11-14T22:20:00.000Z");
            Date expiresOn = DateUtils.parseISO8601Date("2021-11-14T22:20:00.000Z");
            String ipRange = "0.0.0.0/0";
            CookiesForCustomPolicy cookies = CloudFrontCookieSigner.getCookiesForCustomPolicy(protocol, distributionDomain, privateKeyFile, resourcePath, keyPairId, expiresOn, activeFrom, ipRange);
            return cookies;
        }catch (Exception ex){
            ex.printStackTrace();
            return null;
        }
    }





}
