
import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.commons.config.OpenAuth2Client;
import com.aboutdata.service.MakeHtmlService;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 时间: 2015-7-15
 *
 * @author aboutdata
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "classpath:application-Context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/spring-context.xml")
public class DemoTest extends AbstractJUnit4SpringContextTests {

    @InjectLogger
    private Logger log;

    @Resource
    private MakeHtmlService makeHtmlService;

    public void empty() {

    }

    @Test
    public void findByIdTest() {
        String template = "/index.html";
        makeHtmlService.build(template, "index222.html", null);
    }

}
