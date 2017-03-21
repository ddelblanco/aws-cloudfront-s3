package unicon.net;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class AwsCloudfrontS3Application extends SpringBootServletInitializer {


    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(AwsCloudfrontS3Application.class);
    }


    public static void main(String[] args) {
		SpringApplication.run(AwsCloudfrontS3Application.class, args);
	}
}
