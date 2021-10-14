package com.caelumtrade.realestate.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class InterceptorConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        super.addInterceptors(registry);
        registry.addInterceptor(new com.caelumtrade.realestate.config.Interceptor())
                .addPathPatterns("/*")
                .excludePathPatterns("/admin/user/login")
                .excludePathPatterns("/admin/user/loginAction");
    }
}
