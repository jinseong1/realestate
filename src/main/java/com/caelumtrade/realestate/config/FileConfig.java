package com.caelumtrade.realestate.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class FileConfig implements WebMvcConfigurer {

    private static String upload_path;

    @Value("${file.upload.path}")
    public void setUploadPath(String path) throws Exception {
        upload_path = new String(path.getBytes("ISO-8859-1"), "UTF-8");
    }

    // 파일
    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setDefaultEncoding("UTF-8"); // 파일 인코딩 설정
        multipartResolver.setMaxUploadSizePerFile(-1); // 파일당 업로드 크기 제한 (5MB)
        return multipartResolver;
    }

    // 외부 파일 매핑
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/upload/**").addResourceLocations("file:" + upload_path); // 실제 운영 경로
    }

}
