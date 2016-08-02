package com.hybrid.config;

import org.apache.catalina.Context;
import org.apache.tomcat.util.descriptor.web.ErrorPage;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatContextCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EmbeddedTomcatConfig implements EmbeddedServletContainerCustomizer {

   @Override
   public void customize(ConfigurableEmbeddedServletContainer container) {
      TomcatEmbeddedServletContainerFactory factory = (TomcatEmbeddedServletContainerFactory) container;
      
      factory.addContextCustomizers(new TomcatContextCustomizer() {
         
         @Override
         public void customize(Context context) {
            ErrorPage error404Page = new ErrorPage();
            
            error404Page.setErrorCode(404);
            error404Page.setLocation("/WEB-INF/error/404.jsp");
            context.addErrorPage(error404Page);
            
            ErrorPage errorArithmeticPage = new ErrorPage();
            
            errorArithmeticPage.setExceptionType("java.lang.ArithmeticException");
            errorArithmeticPage.setLocation("/WEB-INF/error/arithemtic.jsp");
            
            context.addErrorPage(errorArithmeticPage);
//            
//            ErrorPage error500Page = new ErrorPage();
//            
//            error500Page.setErrorCode(500);
//            error500Page.setLocation("/WEB-INF/error/500.jsp");
//            context.addErrorPage(error500Page);
//            
         }
      });
      
   }
}